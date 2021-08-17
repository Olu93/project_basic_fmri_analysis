from typing import OrderedDict
from nilearn import plotting
import nilearn
from nilearn import image
import matplotlib.pyplot as plt
import pathlib as path
from pprint import pprint
from nilearn import datasets

# from nilearn.regions import connected_regions

atlas_data = datasets.fetch_atlas_msdl()
atlas_filename = atlas_data.maps

sub_file_path = path.Path("./global_results/dispersion_masked").absolute()

target_path = path.Path("./figures").absolute()

# download some example data
# haxby_dataset = datasets.fetch_haxby()
subset_num = 1
all_normed_anatomical_images = list(sub_file_path.rglob('./**/con_0001.nii'))

dataset = {
    fn.as_posix(): {
        "fp": fn.absolute(),
        "type": fn.absolute().parent.name,
        "name": fn.absolute().name,
        "image": image.load_img(str(fn)),
    }
    for fn in all_normed_anatomical_images[::subset_num] if not fn.is_dir()
}

dataset = {
    k: v
    for k, v in dataset.items() if v["type"] in [
        "feet_vs_rest",
        "lh_vs_rest",
        "rh_vs_rest",
        "tongue_vs_rest",
        #    "resting",
    ]
}
num_files = len(dataset)
# num_files = 14
num_maps = 4
trh = 7.0
# create a figure with multiple axes to plot each anatomical image
fig, axes = plt.subplots(nrows=(num_files // num_maps), ncols=num_maps)
fig.set_size_inches((15 * (num_files // num_maps), 5))
faxes = axes.flatten()
# axes is a 2 dimensional numpy array
ax = faxes[1]
str_arrangement = 'tiled'
cut_coords = None

for ax, (ns_key, ns_file), idx in zip(faxes, dataset.items(), range(num_files)):
    # display = plotting.plot_epi(ns_file["image"], black_bg=1, axes=ax, display_mode=str_arrangement, cut_coords=cut_coords)
    display = plotting.plot_stat_map(
        ns_file["image"],
        black_bg=1,
        axes=ax,
        threshold=trh,
        display_mode=str_arrangement,
        cut_coords=cut_coords,
        # colorbar=False,
    )
    # display = plotting.plot_glass_brain(ns_file["image"],
    #                                     black_bg=1,
    #                                     axes=ax,
    #                                     threshold=trh,
    #                                     display_mode='mosaic',
    #                                     cut_coords=cut_coords,
    #                                     )
fig.tight_layout()
display.savefig(target_path / "misc" / "level_2_results_.png")
pprint({k for k in dataset})
# plotting.show()
# display = plotting.plot_epi(ordered_dict["realigned"]["image"], black_bg=1, axes=ax, title="Step: Realignment", display_mode=str_arrangement, cut_coords=cut_coords)
# # display.savefig(target_path / "misc" / "sub01_realigned.png")