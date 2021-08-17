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
from matplotlib.colors import LinearSegmentedColormap, BASE_COLORS, CSS4_COLORS
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
all_movement_images = image.load_img(list(sub_file_path.rglob('./movement_all/spm*_0001.nii'))[0].as_posix())
tmp = list(path.Path("./global_results/").rglob('./**/mean_*.nii'))[0]

all_color_maps = [(k, type(v)) for k, v in plotting.cm.__dict__.items() if isinstance(v, LinearSegmentedColormap)][::1]

all_base_colors = [(k, v) for k, v in list(CSS4_COLORS.items()) + list(BASE_COLORS.items()) if k not in ["b", "w"]]

mean_anatomical_image = {
    "fp": tmp.as_posix(),
    "type": "t1",
    "name": tmp.name,
    "image": image.load_img(str(tmp)),
}
trh = 3.3
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
# feet_suffix = ("_vs_rest" if against_rest else "")
# lh_suffix = ("_vs_rest" if against_rest else "")
# rh_suffix = ("_vs_rest" if against_rest else "")
# hands_suffix = ("_vs_rest" if against_rest else "")
_suffix = ("_vs_rest" if against_rest else "")

dataset = {
    v["type"]: v
    for k, v in dataset.items()
    # if v["type"] in [
    #     # "hands" + feet_suffix,
    #     # "hands_vs_rest" + feet_suffix,
    #     "lh_vs_rh" + lh_suffix,
    #     # "lh_vs_rest" + lh_suffix,
    #     "rh_vs_lh" + rh_suffix,
    #     # "rh_vs_rest" + rh_suffix,
    #     # "movement_all",
    # ]
}

dataset = OrderedDict(
    hands=dataset["hands"],
    hands_vs_rest=dataset["hands_vs_rest"],
    # movement_all=dataset["movement_all"],
    # time_corrected_movements_HRF=dataset["movements_vs_time"],
    # dispersion_corrected_movements_HRF=dataset["movements_vs_dispersion"],
    # movements_vs_vshrf=dataset["movements_vs_vshrf"],
    # movements_vs_vshrf_rev=dataset["movements_vs_vshrf_rev"],
    lh=dataset["lh"],
    rh=dataset["rh"],
    lh_vs_rest=dataset["lh_vs_rest"],
    rh_vs_rest=dataset["rh_vs_rest"],
    time_corrected_lh_HRF=dataset["lh_vs_time"],
    time_corrected_rh_HRF=dataset["rh_vs_time"],
    dispersion_corrected_lh_HRF=dataset["lh_vs_dispersion"],
    dispersion_corrected_rh_HRF=dataset["rh_vs_dispersion"],
    lh_derivatives_vs_each_other=dataset["lh_vshrf"],
    rh_derivatives_vs_each_other=dataset["rh_vshrf"],
    lh_bothhrf_vs_rest_bothhrf=dataset["lh_bothhrf_vs_rest_bothhrf"],
    rh_bothhrf_vs_rest_bothhrf=dataset["rh_bothhrf_vs_rest_bothhrf"],
    dispersion_during_lh_cond=dataset["lh_dispersion"],
    dispersion_during_rh_cond=dataset["rh_dispersion"],
    time_during_lh_cond=dataset["lh_time"],
    time_during_rh_cond=dataset["rh_time"],
    bothhrf_during_lh_cond=dataset["lh_bothhrf"],
    bothhrf_during_rh_cond=dataset["rh_bothhrf"],
)

dataset = {
    k: dict([("color_map_name", all_color_maps[idx][0]), ("color_map", all_color_maps[idx][1]),
             ("color_name", all_base_colors[idx][0]), ("color", all_base_colors[idx][1])] + list(v.items()))
    for idx, (k, v) in enumerate(dataset.items())
}

num_files = len(dataset)
# num_files = 14
num_maps = num_files
num_slices = 7
# create a figure with multiple axes to plot each anatomical image
# create a figure with multiple axes to plot each anatomical image
fig, axes = plt.subplots(nrows=10, ncols=2)
fig.set_size_inches((10, 40))
faxes = axes.flatten()
# axes is a 2 dimensional numpy array
ax = faxes.flatten()
str_arrangement = 'tiled'
# cut_coords = (0, -19, 9)
# cut_coords = 10
# cut_coords = None

# cut_coords = find_cut_slices(hands_statistical_images, direction="z", n_cuts=num_slices)
for ax, (key, ns_file) in zip(faxes, dataset.items()):
    ns_image = ns_file["image"]
    cut_coords = TiledSlicer.find_cut_coords(ns_image)
    cut_coords = None
    # trh_img = threshold_img(ns_image, trh)
    display = plotting.plot_stat_map(
        ns_image,
        # view_type='contours',
        display_mode=str_arrangement,
        bg_img=mean_anatomical_image["image"],
        # bg_img=,
        cut_coords=cut_coords,
        black_bg=1,
        axes=ax,
        figure=fig,
        threshold=trh,
        #    cut_coords=cut_coords,
        # title="Significant Regions on Atlas",
    )
    display.title(
        " ".join([s.upper() if s != "vs" else "vs." for s in key.split("_")]),
        # x=0.4,
        # y=1.05,
        x=0.0,
        y=1.1,
        color='white',
        bgcolor='black',
    )

# handles, labels = ax.get_legend_handles_labels()
# fig.legend(handles, labels, loc='upper center')
# fig.tight_layout()
# fig.suptitle(
#     "Test",
#     x=0.5,
#     y=.5,
# )
display.savefig(target_path / "misc" / "level_2_results_allinone_hands.png")
# pprint({k for k in dataset})
pprint(dataset)
# plotting.show()
# display = plotting.plot_epi(ordered_dict["realigned"]["image"], black_bg=1, axes=ax, title="Step: Realignment", display_mode=str_arrangement, cut_coords=cut_coords)
# # display.savefig(target_path / "misc" / "sub01_realigned.png")