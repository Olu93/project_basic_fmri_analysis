from py_scripts.helper_func import shorten_labels
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
from nilearn.image.image import get_data, new_img_like, threshold_img
from nilearn.image.resampling import resample_to_img
from nilearn.plotting import find_cuts
from nilearn.plotting.displays import MosaicSlicer, TiledSlicer
from nilearn.plotting.find_cuts import find_cut_slices, find_xyz_cut_coords
from nilearn.regions.region_extractor import RegionExtractor, connected_label_regions, connected_regions
from nilearn.input_data import NiftiLabelsMasker
import numpy as np

# from nilearn.regions import connected_regions

atlas_data_aal = datasets.fetch_atlas_aal()
atlas_data_msdl = datasets.fetch_atlas_msdl()
atlas_data_icbm = datasets.fetch_icbm152_2009()
atlas_data_allen = datasets.fetch_atlas_allen_2011()
# atlas_data_seitzman = datasets.fetch_coords_seitzman_2018()
atlas_data_smith = datasets.fetch_atlas_smith_2009()
# atlas_data_schaefer = datasets.fetch_atlas_schaefer_2018()
atlas_data_oxford_4d = datasets.fetch_atlas_harvard_oxford('cort-prob-1mm')
atlas_data_yeo = datasets.fetch_atlas_yeo_2011()
atlas_data_talairach = datasets.fetch_atlas_talairach('gyrus')
atlas_data_oxford = datasets.fetch_atlas_harvard_oxford('cort-maxprob-thr0-1mm')

tmp = list(path.Path("./global_results/").rglob('./**/mean_*.nii'))[0]
mean_anatomical_image = {
    "fp": tmp.as_posix(),
    "type": "t1",
    "name": tmp.name,
    "image": image.load_img(str(tmp)),
}

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
# mask_raw.to_filename('masks/brodmann_sensori_motor_mask.nii')
# region_labels = connected_label_regions(mask_raw)
# plotting.plot_roi(region_labels,
#                   title='Brodmann Mask',
#                   display_mode='mosaic',
#                   cut_coords=15,
#                   colorbar=True,
#                   cmap='Paired')

# plotting.show()
# region_labels.to_filename('masks/brodmann_sensori_motor_mask.nii')

selected_indices_level_2 = [6, 16] + [17, 18] # + [25,30]  # + list(range(41, 46))
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

template = load_mni152_template()

sub_file_path = path.Path("./global_results/dispersion").absolute()

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
num_maps = num_files + 1  # Because of mask
trh = 4.5

image_type = "image_tresh"
dataset = {
    fn.as_posix(): {
        "fp": fn.absolute(),
        "type": fn.absolute().parent.name,
        "name": fn.absolute().name,
        "image": image.load_img(str(fn)),
        image_type: threshold_img(image.load_img(str(fn)), threshold=trh, copy=False),
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
        "feet" + feet_suffix,  # 6, 16, 25, 30
        "lh" + lh_suffix,  # 6 16-19
        "rh" + rh_suffix,  # 6 16-19
        "tongue" + tongue_suffix,  # 6, 16, (41-45 - weak)
        # movement_all_suffix,
    ]
}
dataset = {
    k: dict([("color_map_name", all_color_maps[idx][0]), ("color_map", all_color_maps[idx][1]),
             ("color_name", all_base_colors[idx][0]), ("color", all_base_colors[idx][1])] + list(v.items()))
    for idx, (k, v) in enumerate(dataset.items())
}

all_in_one = image.mean_img([v[image_type] for _, v in dataset.items()])
# regions_percentile_img, index = connected_regions(all_in_one)

fig, axes = plt.subplots(nrows=len(dataset), ncols=num_maps)
fig.set_size_inches((5 * num_maps, 6 * len(dataset)))
faxes = axes.flatten()
str_arrangement = 'tiled'
# cut_coords = np.array(list(MosaicSlicer.find_cut_coords(all_in_one).values()))

for ax_row, ns_file, row_num in zip(axes if len(axes.shape) > 1 else [axes], dataset.values(), range(len(dataset))):
    fmri_img = ns_file[image_type]
    masked_img = new_img_like(fmri_img, np.multiply(get_data(fmri_img), get_data(mask_raw)))
    cut_coords = TiledSlicer.find_cut_coords(masked_img)
    ax = ax_row[0]
    display = plotting.plot_anat(
        mean_anatomical_image["image"],
        # view_type='contours',
        colorbar=0,
        black_bg=1,
        axes=ax,
        display_mode=str_arrangement,
        cut_coords=cut_coords,
    )

    display.add_overlay(
        mask_raw,
        cmap=plotting.cm.green_transparent,
        # filled=False,
        # colors='b',
        # levels=[5],
    )

    ax.annotate(
        ns_file["type"].replace("_vs_rest", "").upper(),
        xy=(0, 0),
        xytext=(-0.5, 0.75),
        xycoords='axes fraction',
        fontsize='xx-large',
        color='white',
        backgroundcolor='black',
        annotation_clip=False,
    )

    if row_num == 0:
        display.title(
            "ROI: Brodmann 1-7",
            y=1.1,
            color='white',
            bgcolor='black',
            fontsize='xx-large',
        )

    for ax, col_num, (dict_idx, atlas_entry) in zip(ax_row[1:], range(num_files), atlas_mapping.items()):
        label_str, old_label_idx, label_idx, coords, atlas_image = atlas_entry.values()
        title_str = f"{old_label_idx}: {label_str}"
        print(title_str)
        # coords = cut_coords[:, idx % cut_coords.shape[1]]
        coords = cut_coords
        display = plotting.plot_stat_map(
            fmri_img,
            bg_img=mean_anatomical_image["image"],
            # view_type='contours',
            colorbar=1 if col_num == num_files else 0,
            black_bg=1,
            axes=ax,
            display_mode=str_arrangement,
            cut_coords=coords,
            cmap=plotting.cm.cold_hot)

        if row_num == 0:
            display.title(
                title_str,
                y=1.1,
                color='white',
                bgcolor='black',
                fontsize='xx-large',
            )

        display.add_contours(
            atlas_image,
            filled=False,
            colors='r',
            levels=[5],
            # cmap=ns_file["color_map_name"],
        )
        # display.add_contours(
        #     fmri_img,
        #     filled=True,
        #     # cmap=ns_file["color_map_name"],
        #     color='y',
        # )

# plotting.show()
display.savefig(target_path / "misc" / "level_2_results_atlas_oxford.png")
pprint({k for k in dataset})
# plotting.show()
# display = plotting.plot_epi(ordered_dict["realigned"]["image"], black_bg=1, axes=ax, title="Step: Realignment", display_mode=str_arrangement, cut_coords=cut_coords)
# # display.savefig(target_path / "misc" / "sub01_realigned.png")