from typing import OrderedDict
from nilearn import plotting
import nilearn
from nilearn import image
import matplotlib.pyplot as plt
import pathlib as path
from pprint import pprint
from nilearn.image.image import mean_img
from nilearn.plotting.displays import YSlicer
from nilearn.regions import connected_regions
from nilearn.image import threshold_img
from matplotlib.colors import LinearSegmentedColormap, BASE_COLORS
from nilearn import datasets

atlas_data = datasets.fetch_atlas_msdl()
atlas_filename = atlas_data.maps
# from nilearn.regions import connected_regions

sub_file_path = path.Path("./global_results/basic").absolute()

target_path = path.Path("./figures").absolute()

# download some example data
# haxby_dataset = datasets.fetch_haxby()
subset_num = 1
all_statistical_images = list(sub_file_path.rglob('./**/spm*_0001.nii'))
tmp = list(path.Path("./global_results/").rglob('./**/mean_*.nii'))[0]

all_color_maps = [(k, type(v)) for k, v in plotting.cm.__dict__.items()
                  if isinstance(v, LinearSegmentedColormap) and k.startswith("black")][::2]

all_base_colors = [(k, v) for k, v in BASE_COLORS.items() if k not in ["b", "w"]]

mean_anatomical_image = {
    "fp": tmp.as_posix(),
    "type": "t1",
    "name": tmp.name,
    "image": image.load_img(str(tmp)),
}

dataset = {
    fn.as_posix(): {
        "fp": fn.as_posix(),
        "type": fn.absolute().parent.name,
        "name": fn.absolute().name,
        "image": image.load_img(str(fn)),
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

num_files = len(dataset)
# num_files = 14
num_maps = 4
trh = 6.0
num_slices = 30
# create a figure with multiple axes to plot each anatomical image
# create a figure with multiple axes to plot each anatomical image
fig, axes = plt.subplots(nrows=3, ncols=1)
fig.set_size_inches((15 * (num_files // num_maps), 5))
faxes = axes.flatten()
# axes is a 2 dimensional numpy array
ax = faxes.flatten()
str_arrangement = 'y'
# cut_coords = (0, -19, 9)
# cut_coords = 10
cut_coords = num_slices

trh_img_1 = threshold_img(dataset["feet" + feet_suffix]["image"], threshold=trh, copy=False)
trh_img_2 = threshold_img(dataset["lh" + lh_suffix]["image"], threshold=trh, copy=False)
trh_img_3 = threshold_img(dataset["rh" + rh_suffix]["image"], threshold=trh, copy=False)
trh_img_4 = threshold_img(dataset["tongue" + tongue_suffix]["image"], threshold=trh, copy=False)
all_trh_img = [
    trh_img_1,
    trh_img_2,
    trh_img_3,
    trh_img_4,
]
all_img = image.concat_imgs(all_trh_img)
regions_percentile_img, index = connected_regions(all_img)
base_img = mean_anatomical_image["image"]
# ax = fig.add_subplot(211)
cut_coords = YSlicer.find_cut_coords(base_img, cut_coords=cut_coords)

len_coords = len(cut_coords) // 3
t_0, t_1, t_2, t_3 = 0, len_coords * 1, len_coords * 2, len_coords * 3
coords = [
    cut_coords[t_0:t_1],
    cut_coords[t_1:t_2],
    cut_coords[t_2:t_3],
]

for coordinate, ax in zip(coords, faxes):
    display_1 = plotting.plot_prob_atlas(
        regions_percentile_img,
        view_type='contours',
        display_mode=str_arrangement,
        # bg_img=mean_anatomical_image["image"],
        # bg_img=,
        cut_coords=coordinate,
        black_bg=1,
        axes=ax,
        figure=fig,
        #    cut_coords=cut_coords,
        # title="Significant Regions on Atlas",
    )

# handles, labels = ax.get_legend_handles_labels()
# fig.legend(handles, labels, loc='upper center')
# fig.tight_layout()
fig.suptitle("Test")
display_1.savefig(target_path / "misc" / "level_2_results_allinone_coronal.png")
# pprint({k for k in dataset})
pprint(dataset)
# plotting.show()
# display = plotting.plot_epi(ordered_dict["realigned"]["image"], black_bg=1, axes=ax, title="Step: Realignment", display_mode=str_arrangement, cut_coords=cut_coords)
# # display.savefig(target_path / "misc" / "sub01_realigned.png")