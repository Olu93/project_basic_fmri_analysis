from typing import OrderedDict
from nilearn import plotting
import nilearn
# from nilearn import datasets
import matplotlib.pyplot as plt
import pathlib as path
import numpy as np

from nilearn.plotting.displays import MosaicSlicer, TiledSlicer


def square_subplots(fig, faxes):
    rows, cols = faxes[0].get_subplotspec().get_gridspec().get_geometry()
    l = fig.subplotpars.left
    r = fig.subplotpars.right
    t = fig.subplotpars.top
    b = fig.subplotpars.bottom
    wspace = fig.subplotpars.wspace
    hspace = fig.subplotpars.hspace
    figw, figh = fig.get_size_inches()

    axw = figw * (r - l) / (cols + (cols - 1) * wspace)
    axh = figh * (t - b) / (rows + (rows - 1) * hspace)
    axs = min(axw, axh)
    w = (1 - axs / figw * (cols + (cols - 1) * wspace)) / 2.
    h = (1 - axs / figh * (rows + (rows - 1) * hspace)) / 2.
    fig.subplots_adjust(bottom=h, top=1 - h, left=w, right=1 - w)


sub_file_path = path.Path("./subjects/sub01/sub01_l_hand").absolute()
initial_path = sub_file_path / "sub01_l_hand-0001.nii"
smoothed_path = sub_file_path / "snr_sub01_l_hand-0001.nii"
normalised_path = sub_file_path / "nr_sub01_l_hand-0001.nii"
realigned_path = sub_file_path / "r_sub01_l_hand-0001.nii"
anatomical_path = path.Path("./subjects/sub01/sub01_t1/sub01_t1-0001.nii").absolute()

target_path = path.Path("./figures").absolute()

# download some example data
# haxby_dataset = datasets.fetch_haxby()

subset_num = None
ordered_dict = OrderedDict()
ordered_dict["anatomical"] = {
    "fp": anatomical_path.absolute(),
    "sub": "Subject 1",
    "name": "Anatomical Image",
    "image": nilearn.image.load_img(str(anatomical_path)),
}
ordered_dict["smoothed"] = {
    "fp": smoothed_path.absolute(),
    "sub": "Subject 1",
    "name": "Smoothed",
    "image": nilearn.image.load_img(str(smoothed_path)),
}
ordered_dict["normalised"] = {
    "fp": normalised_path.absolute(),
    "sub": "Subject 1",
    "name": "Normalised",
    "image": nilearn.image.load_img(str(normalised_path)),
}
ordered_dict["realigned"] = {
    "fp": realigned_path.absolute(),
    "sub": "Subject 1",
    "name": "Realigned",
    "image": nilearn.image.load_img(str(realigned_path)),
}
ordered_dict["initial"] = {
    "fp": initial_path.absolute(),
    "sub": "Subject 1",
    "name": "Initial",
    "image": nilearn.image.load_img(str(initial_path)),
}

num_files = 5
num_maps = 4
trh = 4
# create a figure with multiple axes to plot each anatomical image
# axes is a 2 dimensional numpy array
str_arrangement = 'tiled'
cut_coords = None
display_list = []

for idx, (k, val) in zip(range(num_files), ordered_dict.items()):
    fig = plt.figure()
    fig.set_size_inches((5, 5))
    if k == "anatomical":
        display = plotting.plot_anat(
            val["image"],
            black_bg=1,
            figure=fig,
            title=val["name"],
            display_mode=str_arrangement,
            cut_coords=cut_coords,
        )
    else:
        display = plotting.plot_epi(
            val["image"],
            black_bg=1,
            figure=fig,
            title=val["name"],
            display_mode=str_arrangement,
            cut_coords=cut_coords,
        )
    fig.tight_layout()
    display.savefig(target_path / "prep" / f"preprocessing_{idx}.png")
