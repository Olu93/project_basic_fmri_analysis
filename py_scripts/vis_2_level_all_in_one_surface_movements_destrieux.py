from typing import OrderedDict
from nilearn import plotting
import nilearn
from nilearn import image
import matplotlib.pyplot as plt
# import matplotlib.pyplot import Ax
import pathlib as path
from pprint import pprint
from nilearn.image.image import get_data, mean_img, new_img_like
from nilearn.image.resampling import resample_to_img
from nilearn.plotting.displays import TiledSlicer, YSlicer
from nilearn.plotting.find_cuts import find_cut_slices, find_xyz_cut_coords
from nilearn.plotting.img_plotting import plot_prob_atlas
from nilearn.regions import connected_regions
from nilearn.image import threshold_img
from matplotlib.colors import LinearSegmentedColormap, BASE_COLORS, CSS4_COLORS
from nilearn import datasets
from nilearn import surface
import numpy as np
from py_scripts.helper_func import shorten_labels
import random as r

atlas_data = datasets.fetch_atlas_msdl()
atlas_filename = atlas_data.maps
# from nilearn.regions import connected_regions

sub_file_path = path.Path("./global_results/dispersion_masked").absolute()

target_path = path.Path("./figures").absolute()
# download some example data
# haxby_dataset = datasets.fetch_haxby()
subset_num = 1
all_statistical_images = list(sub_file_path.rglob('./**/spm*_0001.nii'))
all_movement_images = image.load_img(list(sub_file_path.rglob('./lh_vs_rest/spm*_0001.nii'))[0].as_posix())
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

atlas_data_oxford_4d = datasets.fetch_atlas_harvard_oxford('cort-prob-1mm')
atlas_labels = atlas_data_oxford_4d.labels[1:]
print(len(atlas_labels))
selected_indices = np.arange(0, 48)
data_load = image.load_img(atlas_data_oxford_4d.maps)
data_load = image.index_img(data_load, selected_indices)
data_load = resample_to_img(data_load, mean_anatomical_image["image"], 'nearest')
coordinates = plotting.find_probabilistic_atlas_cut_coords(data_load)
atlas_data_brodmann = image.load_img("masks/brodmann.nii.gz")
mask_raw = atlas_data_brodmann
mask_raw = mask_raw_orginal = new_img_like(mask_raw,
                                           np.isin(get_data(mask_raw), [1, 2, 3, 4, 5, 6, 7]),
                                           copy_header=True)
mask_raw = resample_to_img(mask_raw, mean_anatomical_image["image"], 'nearest')
mask_raw = new_img_like(mask_raw, get_data(mask_raw) > 0, copy_header=True)

selected_indices_level_2 = [6, 16]  #+ [17, 18, 25]  # + list(range(41, 46))
atlas_mapping = {
    oidx: {
        "label_str": shorten_labels(atlas_labels[oidx]),
        "old_label_num": oidx,
        "label_num": idx,
        "coord": coord,
        "contour": image.index_img(data_load, oidx),
    }
    for idx, (oidx, coord) in enumerate(zip(selected_indices, coordinates)) if oidx in selected_indices_level_2
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

destrieux_atlas = datasets.fetch_atlas_surf_destrieux()

# these are the regions we want to outline
regions_dict = {
    # b'G_postcentral': 'Postcentral gyrus',
    # b'G_precentral': 'Precentral gyrus',
    b'S_postcentral': 'Postcentral Sulcus',
    b'S_intrapariet_and_P_trans': 'Intraparietal Sulcus',
    b'S_central': 'Central Sulcus',
    # b'G_pariet_inf-Supramar': 'Supramarginal Gyrus',
    # b'G_pariet_inf-Angular': 'Angular Gyrus',
    b'G_and_S_paracentral': 'Paracentral Lobule and Sulcus',
    b'G_parietal_sup': 'Superior Parietal Lobule',
    # b'S_front_sup': 'Superior Frontal Sulcus',
    # b'G_precuneus': 'Precuneus',
    # b'G_and_S_subcentral': 'Subcentral gyrus',
    # b'S_subparietal': 'Subparietal Sulcus'
}

# get indices in atlas for these labels
regions_indices = [np.where(np.array(destrieux_atlas['labels']) == region)[0][0] for region in regions_dict]
# all_colors = r.sample(list(CSS4_COLORS.values()), len(regions_indices))
all_colors = ['b', 'g', 'r', 'y', 'c', 'm', 'k', 'w']
all_colors = all_colors[:len(regions_indices)]

labels = list(regions_dict.values())

list_of_views = ['lateral'] # + ['anterior', 'posterior'] # + ['dorsal', 'ventral']
# list_of_views += ['medial']  
# list_of_views += ['anterior']  
# list_of_views += ['posterior']  
list_of_views += ['dorsal']  
# list_of_views += ['ventral']  


# figure, axes = plt.subplots(2,2, subplot_kw={'projection': '3d'})

for key, ns_file in dataset.items():

    fig, axes = plotting.plot_img_on_surf(
        ns_file["image"],
        views=list_of_views,
        hemispheres=['left', 'right'],
        colorbar=True,
        darkness=1,
        inflate=1,
        threshold=trh,
        # figure=figure,
        # axes=axes[0,:]
        # bg_map=fsaverage.sulc_right,
    )
    # fig = plotting.plot_surf_stat_map(fsaverage.infl_right, all_texture)
    for idx, ax in enumerate(axes.flatten()):
        ax.set_facecolor("black")
        plotting.plot_surf_contours(
            fsaverage.infl_left if (idx % 2) == 0 else fsaverage.infl_right,
            destrieux_atlas.map_left if (idx % 2) == 0 else destrieux_atlas.map_right,
            axes=ax,
            # bg_map=fsaverage.sulc_left if (idx % 2) == 0 else fsaverage.sulc_right,
            labels=labels,
            levels=regions_indices,
            legend=True,
            colors=all_colors,
        )
    fig.suptitle(
        ns_file["type"].replace("_vs_rest", "").upper(),
        color='white',
        backgroundcolor='black',
        fontsize='xx-large',
    )
    fig.axes[-1].tick_params(colors="white")
    fig.set_size_inches((10, 10))
    fig.set_facecolor('black')
    legends = fig.legends
    for lg in legends:
        frame = lg.get_frame()
        plt.setp(lg.get_texts(), color="w", fontsize="x-large")
        frame.set_facecolor('black')
        frame.set_edgecolor('black')
    fig.savefig(target_path / "misc" / f"level_2_results_{key}_surface.png")