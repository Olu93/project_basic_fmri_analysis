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

sub_file_path = path.Path("./global_results/dispersion_masked").absolute()

target_path = path.Path("./figures").absolute()

# download some example data
# haxby_dataset = datasets.fetch_haxby()
subset_num = 1
all_statistical_images = list(sub_file_path.rglob('./**/spm*_0001.nii'))
tmp = list(path.Path("./global_results/").rglob('./**/mean_*.nii'))[0]

all_color_maps = [(k, type(v)) for k, v in plotting.cm.__dict__.items()
                  if isinstance(v, LinearSegmentedColormap) and (k.startswith("blue") or k.startswith("purple"))][::2]

all_base_colors = [(k, v) for k, v in BASE_COLORS.items() if k not in ["b", "w"]]

mean_anatomical_image = {
    "fp": tmp.as_posix(),
    "type": "t1",
    "name": tmp.name,
    "image": image.load_img(str(tmp)),
}
trh = "99.9%"
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

num_files = len(dataset)
# num_files = 14
num_maps = 4
num_slices = 3 * 5
# create a figure with multiple axes to plot each anatomical image
# create a figure with multiple axes to plot each anatomical image
fig, axes = plt.subplots(nrows=3, ncols=1)
fig.set_size_inches((11, 5))
faxes = axes.flatten()
# axes is a 2 dimensional numpy array
ax = faxes.flatten()
str_arrangement = 'y'
# cut_coords = (0, -19, 9)
# cut_coords = 10
cut_coords = num_slices

all_trh_img = [ns_file["image_tresh"] for _, ns_file in dataset.items()]
all_img = image.concat_imgs(all_trh_img)
all_img_mean = image.mean_img(all_trh_img)
regions_percentile_img, index = connected_regions(all_img)
base_img = mean_anatomical_image["image"]
# ax = fig.add_subplot(211)
cut_coords = YSlicer.find_cut_coords(all_img_mean, cut_coords=cut_coords)

len_coords = len(cut_coords) // 3
t_0, t_1, t_2, t_3 = 0, len_coords * 1, len_coords * 2, len_coords * 3
coords = [
    cut_coords[t_0:t_1],
    cut_coords[t_1:t_2],
    cut_coords[t_2:t_3],
]
all_legends = {}

for coordinate, ax in zip(coords, faxes):
    display = plotting.plot_anat(
        mean_anatomical_image["image"],
        # view_type='contours',
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
    for _, ns_file in dataset.items():
        display.add_contours(
            ns_file["image_tresh"],
            # filled=True,
            colors=ns_file["color_name"],
            filled=False,
            levels=[5],
            # cmap=ns_file["color_map_name"],
        )

    for _, ns_file in dataset.items():
        all_legends[ns_file["type"].replace("_vs_rest", "").upper()] = plt.Rectangle((0, 0),
                                                                                     1,
                                                                                     1,
                                                                                     fc=ns_file["color_name"])

# from matplotlib.patches import Rectangle

nm, cl = zip(*list(all_legends.items()))
legend = fig.legend(cl, nm, loc='upper left', bbox_to_anchor=(0.03, 0.6), facecolor="white")
plt.setp(legend.get_texts(), color='w')
frame = legend.get_frame()
# frame.set_color('white')
frame.set_facecolor('black')
frame.set_edgecolor('black')
# handles, labels = ax.get_legend_handles_labels()
# fig.legend(handles, labels, loc='upper center')
# fig.tight_layout()
fig.suptitle("Test")
display.savefig(target_path / "misc" / "level_2_results_allinone_coronal_overlay.png")
pprint(dataset)