from typing import OrderedDict
from matplotlib import cm, colors
from nilearn import plotting
import nilearn
from nilearn import image
import matplotlib.pyplot as plt
import pathlib as path
from pprint import pprint
import matplotlib
from nilearn.image.image import get_data, new_img_like
import numpy as np
sub_file_path = path.Path("./single_results/dispersion").absolute()

target_path = path.Path("./figures").absolute()

# download some example data
# haxby_dataset = datasets.fetch_haxby()
subset_num = 3
all_image_sets = {
    "mean_feet": list(sub_file_path.rglob('./sub*/con_0001.nii')),
    "mean_lh": list(sub_file_path.rglob('./sub*/con_0002.nii')),
    "mean_rh": list(sub_file_path.rglob('./sub*/con_0003.nii')),
    "mean_tongue": list(sub_file_path.rglob('./sub*/con_0004.nii')),
    "mean_rest": list(sub_file_path.rglob('./sub*/con_0005.nii')),
    "mean_movement": list(sub_file_path.rglob('./sub*/con_0006.nii')),
}
dataset = {
    name: {
        "image": image.mean_img([image.load_img(str(fn)) for fn in image_set]),
    }
    for name, image_set in all_image_sets.items()
}

all_means = []
all_maxs = []
all_mins = []
for key, image_data in dataset.items():
    all_means.append(np.nanmean(get_data(image_data["image"])))

for key, image_data in dataset.items():
    # print(key)
    img1 = get_data(image_data["image"])
    img_normed = np.interp(img1, (np.nanmin(img1), np.nanmax(img1)), (-1, +1))
    image_std = (img1 - np.nanmean(img1)) / np.nanstd(img1)
    image_std_err = (img1 - np.nanmean(all_means)) / np.nanstd(all_means)
    image_data["image_normed"] = new_img_like(image_data["image"], img_normed)
    image_data["image_standardized"] = new_img_like(image_data["image"], image_std)
    image_data["image_standardized_err"] = new_img_like(image_data["image"], image_std_err)

num_files = len(dataset)
# num_files = 14
num_maps = 5
trh = 0.0
# create a figure with multiple axes to plot each anatomical image
fig, axes = plt.subplots(nrows=3, ncols=3, gridspec_kw={'height_ratios': [7, 7, 1]})
fig.set_size_inches((12, 8))
faxes = axes[:, :].flatten()
# axes is a 2 dimensional numpy array
str_arrangement = 'tiled'
cut_coords = None
cmap = plotting.cm.blue_red
# cmap = cm.brg

for ax, (key, ns_file), idx in zip(faxes, dataset.items(), range(num_files)):
    # display = plotting.plot_epi(ns_file["image"], black_bg=1, axes=ax, display_mode=str_arrangement, cut_coords=cut_coords)
    is_first_round = idx == 0
    display = plotting.plot_stat_map(
        ns_file["image"],
        black_bg=1,
        # threshold=trh,
        display_mode=str_arrangement,
        draw_cross=False,  #not is_first_round,
        figure=fig,
        axes=ax,
        cut_coords=cut_coords,
        colorbar=0,
        cmap=cmap,
    )
    display.title(
        " ".join([s.upper() if s != "vs" else "vs." for s in key.split("_")]),
        # x=0.4,
        # y=1.05,
        x=0.5,
        y=0.2,
        color='white',
        bgcolor='black',
    )

gs = axes[2, 0].get_gridspec()
# remove the underlying axes
for ax in axes[2:, :].flatten():
    ax.remove()

# cbar_ax = fig.add_axes([0.9, 0.15, 0.05, 0.7])
# cbar_ax = fig.add_subplot(cbar_ax)
cbar_ax = fig.add_subplot(gs[2:, :])
cbar_ax.tick_params(labelcolor="white")
norm = colors.Normalize(vmin=-1, vmax=1)
# cbar_ax = fig.add_subplot(337)
fig.colorbar(cm.ScalarMappable(norm=norm, cmap=cmap), orientation='horizontal', cax=cbar_ax)
# fig.colorbar(cm.ScalarMappable(norm=norm, cmap=cmap), orientation='horizontal', ax=axes[:2, :2])
# fig.subplots_adjust(bottom=0.2)

display.savefig(target_path / "misc" / "level_1_results_mean.png")
# plotting.show()
# display = plotting.plot_epi(ordered_dict["realigned"]["image"], black_bg=1, axes=ax, title="Step: Realignment", display_mode=str_arrangement, cut_coords=cut_coords)
# # display.savefig(target_path / "misc" / "sub01_realigned.png")
pprint(list(dataset.keys()))