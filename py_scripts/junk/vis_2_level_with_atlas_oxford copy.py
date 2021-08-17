from typing import OrderedDict
from matplotlib.colors import LinearSegmentedColormap, BASE_COLORS
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
atlas_data_schaefer = datasets.fetch_atlas_schaefer_2018()
atlas_data_oxford = datasets.fetch_atlas_harvard_oxford('cort-maxprob-thr0-1mm')
atlas_data_oxford_4d = datasets.fetch_atlas_harvard_oxford('cort-prob-1mm')
atlas_data_yeo = datasets.fetch_atlas_yeo_2011()['thick_17']

data_load = image.load_img(atlas_data_oxford.maps)
atlas_mapping = {
    idx: {
        "coord": coord,
        "label_num": label_idx,
        "label_str": atlas_data_oxford.labels[label_idx],
        # "contour": image.index_img(atlas_data_oxford.maps, [0, idx]),
        "contour": data_load,
    }
    for idx, (coord, label_idx) in enumerate(
        zip(*plotting.find_parcellation_cut_coords(labels_img=data_load, return_label_names=True, label_hemisphere='left')))
}
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
all_movement_images = image.load_img(str(list(sub_file_path.rglob('./movement_all/spmT_0001.nii'))[0]))

all_color_maps = [(k, type(v)) for k, v in plotting.cm.__dict__.items()
                  if isinstance(v, LinearSegmentedColormap) and (k.startswith("blue") or k.startswith("purple"))][::2]

all_base_colors = [(k, v) for k, v in BASE_COLORS.items() if k not in ["b", "w"]]

num_files = len(atlas_mapping)
num_maps = 8
trh = 7.0
dataset = {
    fn.as_posix(): {
        "fp": fn.absolute(),
        "type": fn.absolute().parent.name,
        "name": fn.absolute().name,
        "image": image.load_img(str(fn)),
        "image_tresh": threshold_img(image.load_img(str(fn)), threshold=trh, copy=False),
    }
    for fn in all_normed_anatomical_images[::subset_num] if not fn.is_dir()
}



against_rest = True
feet_suffix = ("_vs_rest" if against_rest else "")
lh_suffix = ("_vs_rest" if against_rest else "")
rh_suffix = ("_vs_rest" if against_rest else "")
tongue_suffix = ("_vs_rest" if against_rest else "")
movement_all_suffix = "movement_all"
dataset = {
    v["type"]: v
    for k, v in dataset.items() if v["type"] in [
        "feet" + feet_suffix,
        "lh" + lh_suffix,
        "rh" + rh_suffix,
        "tongue" + tongue_suffix,
        # "movement_all",
        #    "resting",
    ]
}
dataset = {
    k: dict([("color_map_name", all_color_maps[idx][0]), ("color_map", all_color_maps[idx][1]),
             ("color_name", all_base_colors[idx][0]), ("color", all_base_colors[idx][1])] + list(v.items()))
    for idx, (k, v) in enumerate(dataset.items())
}
# trh_img_1 = threshold_img(dataset["feet" + feet_suffix]["image"], threshold=trh, copy=False)
# trh_img_2 = threshold_img(dataset["lh" + lh_suffix]["image"], threshold=trh, copy=False)
# trh_img_3 = threshold_img(dataset["rh" + rh_suffix]["image"], threshold=trh, copy=False)
# trh_img_4 = threshold_img(dataset["tongue" + tongue_suffix]["image"], threshold=trh, copy=False)
# all_trh_img = [
#     trh_img_1,
#     trh_img_2,
#     trh_img_3,
#     trh_img_4,
# ]
# all_in_one = image.mean_img(all_trh_img)
# regions_percentile_img, index = connected_regions(all_in_one)

fig, axes = plt.subplots(nrows=(num_files // num_maps), ncols=num_maps)
fig.set_size_inches((15 * (num_files // num_maps), 3 * num_maps))
faxes = axes.flatten()
str_arrangement = 'tiled'
cut_coords = None

# ns_mask, indices = connected_label_regions(image.index_img(atlas_data_smith.bm20, [6, 7]))

# ns_mask = image.mean_img(ns_mask)
# ns_mask = threshold_img(ns_mask, threshold=3, copy=False)
# ns_mask, indices = connected_regions(ns_mask)
for ax, idx, (dict_idx, atlas_entry) in zip(faxes, range(num_files), atlas_mapping.items()):
    coords, label_idx, label_str, atlas_image = atlas_entry.values()
    display = plotting.plot_roi(
        atlas_image,
        view_type='contours',
        colorbar=0,
        black_bg=1,
        threshold=3,
        axes=ax,
        display_mode=str_arrangement,
        cut_coords=cut_coords,
    )
    display.title(label_str)
    for _, ns_file in dataset.items():
        # display_1.add_contours(
        #     ns_file["image_tresh"],
        #     filled=True,
        #     colors=ns_file["color_name"],
        # )
        display.add_overlay(
            ns_file["image_tresh"],
            cmap=ns_file["color_map_name"],
        )

# plotting.show()
display.savefig(target_path / "misc" / "level_2_results_atlas_oxford.png")
pprint({k for k in dataset})
# plotting.show()
# display = plotting.plot_epi(ordered_dict["realigned"]["image"], black_bg=1, axes=ax, title="Step: Realignment", display_mode=str_arrangement, cut_coords=cut_coords)
# # display.savefig(target_path / "misc" / "sub01_realigned.png")