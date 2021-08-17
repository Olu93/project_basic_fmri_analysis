from typing import OrderedDict
from nilearn import plotting
import nilearn
from nilearn import image
import matplotlib.pyplot as plt
import pathlib as path
from pprint import pprint
from nilearn import datasets
from nilearn.datasets.atlas import fetch_atlas_smith_2009
from nilearn.datasets.struct import load_mni152_template
from nilearn.image.image import threshold_img
from nilearn.image.resampling import resample_to_img
from nilearn.plotting.find_cuts import find_cut_slices, find_xyz_cut_coords
from nilearn.regions.region_extractor import RegionExtractor, connected_label_regions, connected_regions
from nilearn.input_data import NiftiLabelsMasker

# from nilearn.regions import connected_regions

# atlas_filename = datasets.fetch_atlas_aal()
# atlas_data_ = datasets.fetch_atlas_msdl()
# atlas_data__ = datasets.fetch_atlas_basc_multiscale_2015()
atlas_data_allen = datasets.fetch_atlas_allen_2011()
atlas_data_seitzman = datasets.fetch_coords_seitzman_2018()
atlas_data_smith = datasets.fetch_atlas_smith_2009()
# atlas_filename = atlas_data.maps
# pprint(atlas_data.labels)
template = load_mni152_template()
# smith_atlas = datasets.fetch_atlas_smith_2009()
# atlas_networks = smith_atlas.rsn10
# atlas_filename_HMAT = image.load_img('./figures/templates/HMAT_website/HMAT.nii')
# atlas_data_HMAT = image.load_img('./figures/templates/HMAT_website/*.nii', wildcards=True)
# atlas_data_A3D = image.load_img('./figures/templates/HMAT_website/*.nii', wildcards=True)
# atlas_filename = image.math_img('np.sum(img, axis=-1)', img=atlas_filename)

# resampled_stat_img = resample_to_img(atlas_filename_HMAT, template)

sub_file_path = path.Path("./global_results/basic").absolute()

target_path = path.Path("./figures").absolute()

# download some example data
# haxby_dataset = datasets.fetch_haxby()
subset_num = 1
all_normed_anatomical_images = list(sub_file_path.rglob('./**/spmT_0001.nii'))

dataset = {
    fn.as_posix(): {
        "fp": fn.absolute(),
        "type": fn.absolute().parent.name,
        "name": fn.absolute().name,
        "image": image.load_img(str(fn)),
    }
    for fn in all_normed_anatomical_images[::subset_num] if not fn.is_dir()
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
num_files = len(dataset)
# num_files = 14
num_maps = 4
trh = 5.0

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
all_in_one = image.mean_img(all_trh_img)
regions_percentile_img, index = connected_regions(all_in_one)

# min_region_size in voxel volume mm^3
# extraction = RegionExtractor(atlas_networks, min_region_size=800,
#                              threshold=98, thresholding_strategy='percentile')

# # Just call fit() to execute region extraction procedure
# extraction.fit()
# regions_img = extraction.regions_img_

# min_region_size in voxel volume mm^3
# extraction = NiftiLabelsMasker(atlas_filename, standardize=True, memory='nilearn_cache')
# extraction.fit()
# tmp = extraction.transform(all_trh_img)
# # Just call fit() to execute region extraction procedure
# extraction.fit()
# regions_img = extraction.regions_img_
# regions_img = connected_regions(atlas_filename)
# create a figure with multiple axes to plot each anatomical image
fig, axes = plt.subplots(nrows=(num_files // num_maps), ncols=num_maps)
fig.set_size_inches((15 * (num_files // num_maps), 5))
faxes = axes.flatten()
# axes is a 2 dimensional numpy array
# ax = faxes[1]
str_arrangement = 'tiled'
# mask_data = extraction.transform(all_in_one)
cut_coords = None

# extraction = RegionExtractor(image.index_img(atlas_data_smith.rsn20, [1, 6]),
#                              min_region_size=800,
#                              threshold=98,
#                              thresholding_strategy='percentile').fit()

# display = plotting.plot_prob_atlas(
#     # mask_data,
#     image.index_img(atlas_data_smith.rsn20, [1, 6]),
#     view_type='filled_contours',
#     colorbar=True,
#     black_bg=1,
#     #  axes=ax,
#     threshold=3,
#     display_mode=str_arrangement,
#     cut_coords=cut_coords)

# for overlay in [18, 19, 56, 57, 58, 59, 60, 61]:
# for overlay in [18, 19, 56, 57, 58, 59, 60, 61]:
#     # display.add_overlay(image.index_img(atlas_filename, overlay), cmap="hot")
#     display.add_overlay(atlas_filename, cmap="hot")

for ax, (ns_key, ns_file), idx in zip(faxes, dataset.items(), range(num_files)):
    ns_mask = image.index_img(atlas_data_smith.rsn20, [1, 6])
    ns_img = ns_file["image"]
    cut_coords = find_xyz_cut_coords(ns_img)
    display = plotting.plot_prob_atlas(
        ns_mask,
        view_type='contours',
        colorbar=False,
        black_bg=1,
        threshold=3,
        axes=ax,
        display_mode=str_arrangement,
        cut_coords=cut_coords,
    )
    display.add_overlay(
        ns_img,
        cmap="hot",
    )

plotting.show()
display.savefig(target_path / "misc" / "level_2_results_.png")
pprint({k for k in dataset})
# plotting.show()
# display = plotting.plot_epi(ordered_dict["realigned"]["image"], black_bg=1, axes=ax, title="Step: Realignment", display_mode=str_arrangement, cut_coords=cut_coords)
# # display.savefig(target_path / "misc" / "sub01_realigned.png")