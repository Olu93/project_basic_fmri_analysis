from typing import OrderedDict
from nilearn import plotting
import nilearn
from nilearn import image
import matplotlib.pyplot as plt
import pathlib as path

sub_file_path = path.Path("./subjects/").absolute()

target_path = path.Path("./figures").absolute()

# download some example data
# haxby_dataset = datasets.fetch_haxby()
all_normed_anatomical_images = list(sub_file_path.rglob('./*_t1/normed_t1*.nii'))
subset_num = 3

dataset = {
    fn.as_posix(): {
        "fp": fn.absolute(),
        "sub": fn.absolute().name.split("_")[0],
        "name": fn.absolute().name,
        "image": image.load_img(str(fn)),
        
    }
    for fn in all_normed_anatomical_images if not fn.is_dir()
}



num_files = len(dataset)
# num_files = 14
num_maps = 9
trh = 4
# create a figure with multiple axes to plot each anatomical image
fig, axes = plt.subplots(nrows=(num_files//num_maps), ncols=num_maps)
fig.set_size_inches((10 * (num_files//num_maps), 7))
faxes = axes.flatten()
# axes is a 2 dimensional numpy array
ax = faxes[1]
str_arrangement = 'z'
cut_coords = [-5]

for ax, (ns_key, ns_file), idx in zip(faxes, dataset.items(), range(num_files)):
    display = plotting.plot_anat(ns_file["image"], black_bg=1, axes=ax, display_mode=str_arrangement, cut_coords=cut_coords)
display.savefig(target_path / "misc" / "normed_anatomicals.png")
# fig.tight_layout()
# plotting.show()
# display = plotting.plot_epi(ordered_dict["realigned"]["image"], black_bg=1, axes=ax, title="Step: Realignment", display_mode=str_arrangement, cut_coords=cut_coords)
# # display.savefig(target_path / "misc" / "sub01_realigned.png")