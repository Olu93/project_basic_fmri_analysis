from nilearn.masking import apply_mask
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
from nilearn.image.image import threshold_img
from nilearn.image.resampling import resample_to_img
from nilearn.plotting import find_cuts
from nilearn.plotting.displays import MosaicSlicer, TiledSlicer
from nilearn.plotting.find_cuts import find_cut_slices, find_xyz_cut_coords
from nilearn.regions.region_extractor import RegionExtractor, connected_label_regions, connected_regions
from nilearn.input_data import NiftiLabelsMasker, NiftiMapsMasker, NiftiMasker
import numpy as np

# from nilearn.regions import connected_regions

# atlas_data_aal = datasets.fetch_atlas_aal()
# atlas_data_msdl = datasets.fetch_atlas_msdl()
# atlas_data_icbm = datasets.fetch_icbm152_2009()
# atlas_data_allen = datasets.fetch_atlas_allen_2011()
# atlas_data_seitzman = datasets.fetch_coords_seitzman_2018()
# atlas_data_smith = datasets.fetch_atlas_smith_2009()
# atlas_data_schaefer = datasets.fetch_atlas_schaefer_2018()
atlas_data_oxford_4d = datasets.fetch_atlas_harvard_oxford('cort-prob-1mm')
atlas_data_yeo = datasets.fetch_atlas_yeo_2011()
atlas_data_talairach = datasets.fetch_atlas_talairach('gyrus')
atlas_data_oxford = datasets.fetch_atlas_harvard_oxford('cort-maxprob-thr0-1mm')

atlas_labels = atlas_data_oxford_4d.labels[1:]
print(len(atlas_labels))
selected_indices = np.arange(0, 48)
data_load = image.load_img(atlas_data_oxford_4d.maps)
data_load = image.index_img(data_load, selected_indices)
coordinates = plotting.find_probabilistic_atlas_cut_coords(data_load)

selected_indices_level_2 = [6, 16, 30] + [17, 18, 25] + list(range(41, 46))
atlas_mapping = {
    oidx: {
        "label_str": shorten_labels(atlas_labels[oidx]),
        "old_label_num": oidx,
        "label_num": idx,
        "coord": coord,
        "contour": image.index_img(data_load, oidx),
        "mask": image.get_data(data_load) == oidx,
        # "contour": data_load,
    }
    for idx, (oidx, coord) in enumerate(zip(selected_indices, coordinates))
}

template = load_mni152_template()

sub_file_path = path.Path("./global_results/dispersion").absolute()

target_path = path.Path("./figures").absolute()

# mask = RegionExtractor(image.index_img(data_load, [6, 16])).fit()
# masker = NiftiLabelsMasker(data_load).fit()
# report = masker.generate_report()
# plotting.show()
# download some example data
# haxby_dataset = datasets.fetch_haxby()
subset_num = 1
all_normed_anatomical_images = list(sub_file_path.rglob('./**/spmT_0001.nii'))
all_movement_images = image.load_img(str(list(sub_file_path.rglob('./movement_all/spmT_0001.nii'))[0]))
tmp = list(path.Path("./global_results/").rglob('./**/mean_*.nii'))[0]
mean_anatomical_image = {
    "fp": tmp.as_posix(),
    "type": "t1",
    "name": tmp.name,
    "image": image.load_img(str(tmp)),
}
all_color_maps = [(k, type(v)) for k, v in plotting.cm.__dict__.items()
                  if isinstance(v, LinearSegmentedColormap) and (k.startswith("blue") or k.startswith("purple"))][::2]

all_base_colors = [(k, v) for k, v in BASE_COLORS.items() if k not in ["b", "w"]]

num_files = len(atlas_mapping)
num_maps = 8
trh = 4.3
image_type = "image_tresh"

dataset = {
    fn.as_posix(): {
        "fp": fn.absolute(),
        "type": fn.absolute().parent.name,
        "name": fn.absolute().name,
        "image": image.load_img(str(fn)),
        "image_tresh": threshold_img(image.load_img(str(fn)), threshold=trh, copy=False),
        # "image_masked": mask.transform(image.load_img(str(fn)))
        # "image_masked": image.get_data(image.load_img(str(fn))) == 6
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
        # "feet" + feet_suffix,  # 6, 16, 25, 30
        # "lh" + lh_suffix,  # 6 16-19
        # "rh" + rh_suffix,  # 6 16-19
        "tongue" + tongue_suffix,  # 6, 16, (41-45 - weak)
        # "movement_all",
        #    "resting",
    ]
}
dataset = {
    k: dict([("color_map_name", all_color_maps[idx][0]), ("color_map", all_color_maps[idx][1]),
             ("color_name", all_base_colors[idx][0]), ("color", all_base_colors[idx][1])] + list(v.items()))
    for idx, (k, v) in enumerate(dataset.items())
}

# all_in_one = image.mean_img([v["image_masked"] for _, v in dataset.items()])
# regions_percentile_img, index = connected_regions(all_in_one)

for img_num, ns_file in enumerate(dataset.values()):
    fig, axes = plt.subplots(nrows=(num_files // num_maps), ncols=num_maps)
    fig.set_size_inches((5 * num_maps, 5 * (num_files // num_maps)))
    faxes = axes.flatten()
    str_arrangement = 'tiled'
    cut_coords = TiledSlicer.find_cut_coords(ns_file[image_type])
    for ax, col_num, (dict_idx, atlas_entry) in zip(faxes, range(num_files), atlas_mapping.items()):
        label_str, old_label_idx, label_idx, coords, atlas_image, atlas_mask = atlas_entry.values()
        title_str = f"{old_label_idx}: {label_str}"
        curr_type = ns_file["type"].replace("_vs_rest", "")
        print(title_str)
        # coords = cut_coords[:, idx % cut_coords.shape[1]]
        coords = cut_coords
        display = plotting.plot_stat_map(
            apply_mask(ns_file[image_type], image.new_img_like(ns_file[image_type], atlas_mask)),
            bg_img=mean_anatomical_image["image"],
            # view_type='contours',
            colorbar=0,
            black_bg=1,
            threshold=3,
            axes=ax,
            display_mode=str_arrangement,
            cut_coords=coords,
        )

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

    print(display.savefig(target_path / "misc" / f"level_2_results_atlas_oxford_trh{int(trh)}_{curr_type}.png"))
    display.close()
pprint({k for k in dataset})
# plotting.show()
# display = plotting.plot_epi(ordered_dict["realigned"]["image"], black_bg=1, axes=ax, title="Step: Realignment", display_mode=str_arrangement, cut_coords=cut_coords)
# # display.savefig(target_path / "misc" / "sub01_realigned.png")