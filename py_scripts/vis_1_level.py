from typing import OrderedDict
from nilearn import plotting
import nilearn
from nilearn import image
import matplotlib.pyplot as plt
import pathlib as path
from pprint import pprint

from nilearn.datasets.struct import load_mni152_template

sub_file_path = path.Path("./single_results/dispersion").absolute()
template = load_mni152_template()

target_path = path.Path("./figures").absolute()

# download some example data
# haxby_dataset = datasets.fetch_haxby()
subset_num = 3
all_normed_anatomical_images = list(sub_file_path.rglob('./sub*/con_0001.nii')) + list(
    sub_file_path.rglob('./sub*/con_0002.nii')) + list(sub_file_path.rglob('./sub*/con_0003.nii')) + list(
        sub_file_path.rglob('./sub*/con_0004.nii'))  #+ list(sub_file_path.rglob('./sub*/con_0005.nii'))

dataset = {
    fn.as_posix(): {
        "fp": fn.as_posix(),
        "type": fn.absolute().name.split("_")[0],
        "name": fn.absolute().name,
        "image": image.load_img(str(fn)),
    }
    for fn in all_normed_anatomical_images[::subset_num] if not fn.is_dir()
}

num_files = len(dataset)
# num_files = 14
num_maps = 6
trh = 0.0
# create a figure with multiple axes to plot each anatomical image
fig, axes = plt.subplots(nrows=(num_files // num_maps), ncols=num_maps)
fig.set_size_inches((7 * (num_files // num_maps), 10))
faxes = axes.flatten()
# axes is a 2 dimensional numpy array
ax = faxes[1]
str_arrangement = 'x'
cut_coords = [36]

for ax, (ns_key, ns_file), idx in zip(faxes, dataset.items(), range(num_files)):
    # display = plotting.plot_epi(ns_file["image"], black_bg=1, axes=ax, display_mode=str_arrangement, cut_coords=cut_coords)
    display = plotting.plot_stat_map(
        ns_file["image"],
        black_bg=1,
        axes=ax,
        threshold=trh,
        display_mode=str_arrangement,
        figure=fig,
        cut_coords=cut_coords,
        colorbar=False,
        cmap=plotting.cm.black_blue,
    )
    if idx in [0, 5, 19]:
        display.add_contours(template, filled=True, alpha=0.3, levels=[0], colors='r', linewidth=10)

    rowname_mapping = ["Feet", "L. Hand", "R. Hand", "Tongue"]
    if idx in [0, 6, 12, 18]:
        ax.annotate(
            rowname_mapping[idx // num_maps] + " Cond.",
            xy=(0, 0),
            xytext=(-0.7, 0.5),
            xycoords='axes fraction',
            fontsize='xx-large',
            color='white',
            backgroundcolor='black',
            annotation_clip=False,
        )

    if idx in range(0, 6):
        display.title(
            f"Subject {(idx*subset_num)+1}",
            x=0.2,
            y=1.3,
            color='white',
            bgcolor='black',
            fontsize='xx-large',
        )

    # display = plotting.plot_glass_brain(ns_file["image"], black_bg=1, axes=ax, threshold=trh, display_mode=str_arrangement, cut_coords=cut_coords)
# fig.tight_layout()
display.savefig(target_path / "misc" / "level_1_results.png")
# plotting.show()
# display = plotting.plot_epi(ordered_dict["realigned"]["image"], black_bg=1, axes=ax, title="Step: Realignment", display_mode=str_arrangement, cut_coords=cut_coords)
# # display.savefig(target_path / "misc" / "sub01_realigned.png")
pprint(list(dataset.keys()))