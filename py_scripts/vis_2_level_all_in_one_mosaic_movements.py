from typing import OrderedDict
from nilearn import plotting
import nilearn
from nilearn import image
import matplotlib.pyplot as plt
import pathlib as path
from pprint import pprint
from nilearn.image.image import mean_img
from nilearn.plotting.displays import TiledSlicer, YSlicer
from nilearn.plotting.find_cuts import find_cut_slices, find_xyz_cut_coords
from nilearn.regions import connected_regions
from nilearn.image import threshold_img
from matplotlib.colors import LinearSegmentedColormap, BASE_COLORS
from nilearn import datasets

atlas_data = datasets.fetch_atlas_msdl()
atlas_filename = atlas_data.maps
# from nilearn.regions import connected_regions

sub_file_path = path.Path("./global_results/dispersion_masked").absolute()

target_path = path.Path("./figures").absolute()
# download some example data
# haxby_dataset = datasets.fetch_haxby()
subset_num = 1
all_statistical_images = list(sub_file_path.rglob('./**/spm*_0001.nii'))
all_movement_images = image.load_img(list(sub_file_path.rglob('./movements_vs_bothhrf/spm*_0001.nii'))[0].as_posix())
tmp = list(path.Path("./global_results/").rglob('./**/mean_*.nii'))[0]

all_color_maps = [(k, type(v)) for k, v in plotting.cm.__dict__.items()
                  if isinstance(v, LinearSegmentedColormap) and (k.startswith("blue") or k.startswith("purple"))][::1]

all_base_colors = [(k, v) for k, v in BASE_COLORS.items() if k not in ["b", "w"]]

mean_anatomical_image = {
    "fp": tmp.as_posix(),
    "type": "t1",
    "name": tmp.name,
    "image": image.load_img(str(tmp)),
}

trh = 3.0
dataset = {
    fn.as_posix(): {
        "fp": fn.as_posix(),
        "type": fn.absolute().parent.name,
        "name": fn.absolute().name,
        "image": image.load_img(str(fn)),
        "image_tresh": threshold_img(image.load_img(str(fn)), threshold=trh, copy=False),
    }
    for idx, fn in enumerate(all_statistical_images[::subset_num]) if not fn.is_dir()
}

against_rest = True
feet_suffix = ("_vs_rest" if against_rest else "")
lh_suffix = ("_vs_rest" if against_rest else "")
rh_suffix = ("_vs_rest" if against_rest else "")
tongue_suffix = ("_vs_rest" if against_rest else "")

dataset = {
    v["type"]: v
    for k, v in dataset.items() if v["type"] in [
        "feet" + feet_suffix,
        "lh" + lh_suffix,
        "rh" + rh_suffix,
        "tongue" + tongue_suffix,
        #    "resting",
    ]
}

dataset = {
    k: dict([("color_map_name", all_color_maps[idx][0]), ("color_map", all_color_maps[idx][1]),
             ("color_name", all_base_colors[idx][0]), ("color", all_base_colors[idx][1])] + list(v.items()))
    for idx, (k, v) in enumerate(dataset.items())
}

against_rest = True

display = plotting.plot_stat_map(
    all_movement_images,
    display_mode='mosaic',
    bg_img=mean_anatomical_image["image"],
    cut_coords=10,
    black_bg=1,
    threshold=5,
)

for _, ns_file in dataset.items():
    display.add_contours(
        ns_file["image_tresh"],
        # filled=True,
        colors=ns_file["color_name"],
        filled=False,
        levels=[5],
        # cmap=ns_file["color_map_name"],
    )
# display.title(
#     " ".join([s.upper() if s != "vs" else "vs." for s in key.split("_")]),
#     # x=0.4,
#     # y=1.05,
#     x=0.5,
#     y=0.2,
#     color='white',
#     bgcolor='black',
# )
display.savefig(target_path / "misc" / "level_2_results_single_movements.png")