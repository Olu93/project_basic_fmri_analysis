from typing import OrderedDict
from nilearn import plotting
import nilearn
from nilearn import image
import matplotlib.pyplot as plt
import pathlib as path
from pprint import pprint
from nilearn.image.image import get_data, mean_img, new_img_like
from nilearn.plotting.displays import TiledSlicer, YSlicer
from nilearn.plotting.find_cuts import find_cut_slices, find_xyz_cut_coords
from nilearn.plotting.img_plotting import plot_prob_atlas
from nilearn.regions import connected_regions
from nilearn.image import threshold_img
from matplotlib.colors import LinearSegmentedColormap, BASE_COLORS
from nilearn import datasets
from nilearn import surface
import numpy as np
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

surf_ = datasets.fetch_atlas_surf_destrieux()
fsaverage = datasets.fetch_surf_fsaverage()
# from nilearn.decomposition import DictLearning

# # Initialize DictLearning object
# dict_learn = DictLearning(n_components=20)
# # Fit to the data
# dict_learn.fit(image.mean_img([ns_file["image"] for _, ns_file in dataset.items()]))
# # Resting state networks/maps in attribute `components_img_`
# # Note that this attribute is implemented from version 0.4.1.
# # For older versions, see the note section above for details.
# components_img = dict_learn.components_img_

# plotting.plot_prob_atlas(components_img, view_type='filled_contours', title='Dictionary Learning maps')

# plotting.show()
# from nilearn.regions import RegionExtractor

# extractor = RegionExtractor(components_img,
#                             threshold=0.5,
#                             thresholding_strategy='ratio_n_voxels',
#                             extractor='local_regions',
#                             standardize=True)
# # Just call fit() to process for regions extraction
# extractor.fit()
# # Extracted regions are stored in regions_img_
# regions_extracted_img = extractor.regions_img_
# # Each region index is stored in index_
# regions_index = extractor.index_
# # Total number of regions extracted
# n_regions_extracted = regions_extracted_img.shape[-1]
# plotting.plot_prob_atlas(regions_extracted_img, view_type='filled_contours')
# plotting.show()

from nilearn.regions import RegionExtractor

regions_percentile_img, index = connected_regions([ns_file["image_tresh"] for _, ns_file in dataset.items()],
                                                  min_region_size=1500)

# min_region_size in voxel volume mm^3
extraction = RegionExtractor(regions_percentile_img,
                             min_region_size=800,
                             threshold=98,
                             thresholding_strategy='percentile')

# Just call fit() to execute region extraction procedure
extraction.fit()
regions_img = extraction.regions_img_

roi_map = new_img_like(regions_percentile_img, (get_data(regions_percentile_img) > 0) * np.arange(1, 7),
                       copy_header=False)
roi_map_ones = new_img_like(regions_percentile_img, (get_data(regions_percentile_img) > 0), copy_header=True)
# from nilearn.regions import Parcellations
# ward = Parcellations(method='kmeans',
#                      n_parcels=20,
#                      standardize=True,
#                      smoothing_fwhm=10,
#                      memory='nilearn_cache',
#                      memory_level=1,
#                      verbose=1)
# ward.fit(roi_map)
# ward_labels_img = ward.labels_img_
# first_plot = plotting.plot_roi(ward_labels_img, title="Ward parcellation")
# plotting.show()

mean_texture = surface.vol_to_surf(mean_anatomical_image["image"], fsaverage.pial_right)
all_texture = surface.vol_to_surf(all_movement_images, fsaverage.pial_right)
roi_texture = surface.vol_to_surf(roi_map, fsaverage.pial_right, radius=3, interpolation='linear')
roi_texture_ones = surface.vol_to_surf(roi_map_ones, fsaverage.pial_right, radius=3,
                                       interpolation='nearest').astype(np.float32)
roi_texture_ones = np.stack(
    [
        surface.vol_to_surf(
            image.index_img(roi_map_ones, region), fsaverage.pial_right, radius=3, interpolation='nearest')
        for region in index
    ],
    axis=-1,
).astype(np.float32)
# roi_texture_ones = (get_data(regions_percentile_img) > 0) * np.arange(1, 7)
# parcellated_texture = surface.vol_to_surf(ward_labels_img, fsaverage.pial_right)

# plotting-plot_prob_atlas(roi_map)
# plotting.show()

# these are the regions we want to outline
regions_dict = {b'G_postcentral': 'Postcentral gyrus', b'G_precentral': 'Precentral gyrus'}

# get indices in atlas for these labels
regions_indices = [np.where(np.array(surf_['labels']) == region)[0][0] for region in regions_dict]

labels = list(regions_dict.values())

regions_indices, labels = zip(*enumerate(["feet", "lh", "rh", "rh", "tongue", "tongue"]))
list_of_views = ['lateral', 'medial']  # + ['dorsal', 'ventral'] + ['anterior', 'posterior']
list_of_views_templates = ['lateral', 'medial'] + ['dorsal', 'ventral'] + ['anterior', 'posterior']

fig, axes = plotting.plot_img_on_surf(
    all_movement_images,
    views=list_of_views,
    hemispheres=['left', 'right'],
    colorbar=True,
    # darkness=1,
    inflate=True,
    threshold=3.,
    # bg_map=fsaverage.sulc_right,
)
# fig = plotting.plot_surf_stat_map(fsaverage.infl_right, all_texture)
for idx, ax in enumerate(axes.flatten()):
    plotting.plot_surf_contours(
        fsaverage.pial_left if (idx % 2) == 0 else fsaverage.pial_right,
        roi_texture_ones,
        axes=ax,
        bg_map=fsaverage.sulc_left if (idx % 2) == 0 else fsaverage.sulc_right,
        # labels=labels,
        # levels=regions_indices,
        # legend=True,
    )
# plotting.plot_surf_contours(fsaverage.infl_right, surf_['map_right'], figure=fig)
# plotting.show()
# plotting.plot_surf_stat_map(
#     fsaverage.infl_right,
#     texture,
#     # display_mode='mosaic',
#     # cut_coords=10,
#     # threshold=3,
#     # black_bg=1,
#     # bg_img=mean_anatomical_image["image"],
# )

# for _, ns_file in dataset.items():
#     texture = surface.vol_to_surf(ns_file)
#     plotting.add_contours(
#         fsaverage.infl_right,
#         ns_file["image_tresh"],
#         # filled=True,
#         colors=ns_file["color_name"],
#         filled=False,
#         levels=[5],
#         # cmap=ns_file["color_map_name"],
#     )
# display.title(
#     " ".join([s.upper() if s != "vs" else "vs." for s in key.split("_")]),
#     # x=0.4,
#     # y=1.05,
#     x=0.5,
#     y=0.2,
#     color='white',
#     bgcolor='black',
# )
fig.savefig(target_path / "misc" / "level_2_results_single_movements_surface.png")