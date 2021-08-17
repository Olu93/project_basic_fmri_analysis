from typing import OrderedDict
from nilearn import plotting
import nilearn
from nilearn import image
import matplotlib.pyplot as plt
import pathlib as path
from pprint import pprint
from nilearn.regions import connected_regions
from nilearn.image import threshold_img
from matplotlib.colors import LinearSegmentedColormap, BASE_COLORS
from nilearn import datasets

atlas_data = datasets.fetch_atlas_msdl()
atlas_filename = atlas_data.maps
# from nilearn.regions import connected_regions

sub_file_path = path.Path("./global_results/dispersion").absolute()

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
# create a figure with multiple axes to plot each anatomical image
fig = plt.figure(figsize=(20, 5))
ax = plt.gca()
# axes is a 2 dimensional numpy array
# str_arrangement = 'y'
# str_arrangement = 'mosaic'
str_arrangement = 'mosaic'
# cut_coords = (0, -19, 9)
# cut_coords = 10
cut_coords = 10

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
regions_percentile_img, index = connected_regions(image.concat_imgs(all_trh_img))

# ax = fig.add_subplot(211)
fig2 = plt.figure(figsize=(10, 5))
ax2 = fig2.add_subplot('111')
display_1 = plotting.plot_anat(
    mean_anatomical_image["image"],
    colorbar=False,
    display_mode=str_arrangement,
    cut_coords=cut_coords,
    figure=fig2,
    axes=ax2,
    title="Overlay of significant regions",
)

display_2 = plotting.plot_prob_atlas(
    regions_percentile_img,
    # view_type='contours',
    display_mode=str_arrangement,
    bg_img=mean_anatomical_image["image"],
    cut_coords=cut_coords,
    black_bg=1,
    # axes=ax,
    # figure=fig,
    #    cut_coords=cut_coords,
    # title="Significant Regions on Atlas",
)

coords = [(-34, -39, -9)]

for (ns_key, ns_file), idx in zip(dataset.items(), range(num_files)):
    # display = plotting.plot_epi(ns_file["image"], black_bg=1, axes=ax, display_mode=str_arrangement, cut_coords=cut_coords)
    # if dataset["feet_vs_rest"]["image"] == dataset["feet_vs_rest"]["image"]:
    #     continue
    display_1.add_overlay(
        ns_file["image"],
        threshold=trh,
        cmap=ns_file["color_map_name"],
        # colors=ns_file["color_name"],
        # filled=True,
        label=ns_file["type"],
    )

# handles, labels = ax.get_legend_handles_labels()
# fig.legend(handles, labels, loc='upper center')
# fig.tight_layout()
display_2.savefig(target_path / "misc" / "level_2_results_allinone_atlas.png")
display_1.savefig(target_path / "misc" / "level_2_results_allinone_anat.png")
pprint({k for k in dataset})
pprint(all_color_maps)
# plotting.show()
# display = plotting.plot_epi(ordered_dict["realigned"]["image"], black_bg=1, axes=ax, title="Step: Realignment", display_mode=str_arrangement, cut_coords=cut_coords)
# # display.savefig(target_path / "misc" / "sub01_realigned.png")