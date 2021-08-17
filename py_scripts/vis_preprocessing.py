from typing import OrderedDict
from nilearn import plotting
import nilearn
from nilearn.image import threshold_img
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


slice_ = "19"
cond_ = "l_hand"
subject_ = "sub60"
sub_file_path = path.Path(f"./subjects/{subject_}/{subject_}_{cond_}").absolute()
initial_path = sub_file_path / f"{subject_}_{cond_}-00{slice_}.nii"
realigned_path = sub_file_path / f"r_{subject_}_{cond_}-00{slice_}.nii"
normalised_path = sub_file_path / f"nr_{subject_}_{cond_}-00{slice_}.nii"
smoothed_path = sub_file_path / f"snr_{subject_}_{cond_}-00{slice_}.nii"
anatomical_path = path.Path(f"./subjects/{subject_}/{subject_}_t1/{subject_}_t1-0001.nii").absolute()

target_path = path.Path("./figures").absolute()

# download some example data
# haxby_dataset = datasets.fetch_haxby()

subset_num = None
dataset = OrderedDict()
dataset["anatomical"] = {
    "fp":
    anatomical_path.absolute(),
    "sub":
    "Subject 1",
    "name":
    "Anatomical Image",
    "image":
    nilearn.image.load_img(str(anatomical_path)),
    "image_normed":
    nilearn.image.math_img("np.interp(img1, (img1.min(), img1.max()), (-1, +1))",
                           img1=nilearn.image.load_img(str(anatomical_path)))
}
dataset["initial"] = {
    "fp":
    initial_path.absolute(),
    "sub":
    "Subject 1",
    "name":
    "Initial",
    "image":
    nilearn.image.load_img(str(initial_path)),
    "image_normed":
    nilearn.image.math_img("np.interp(img1, (img1.min(), img1.max()), (-1, +1))",
                           img1=nilearn.image.load_img(str(initial_path)))
}
dataset["realigned"] = {
    "fp":
    realigned_path.absolute(),
    "sub":
    "Subject 1",
    "name":
    "Realigned",
    "image":
    nilearn.image.load_img(str(realigned_path)),
    "image_normed":
    nilearn.image.math_img("np.interp(img1, (img1.min(), img1.max()), (-1, +1))",
                           img1=nilearn.image.load_img(str(realigned_path)))
}
dataset["normalised"] = {
    "fp":
    normalised_path.absolute(),
    "sub":
    "Subject 1",
    "name":
    "Normalised",
    "image":
    nilearn.image.load_img(str(normalised_path)),
    "image_normed":
    nilearn.image.math_img("np.interp(img1, (img1.min(), img1.max()), (-1, +1))",
                           img1=nilearn.image.load_img(str(normalised_path)))
}
dataset["smoothed"] = {
    "fp":
    smoothed_path.absolute(),
    "sub":
    "Subject 1",
    "name":
    "Smoothed",
    "image":
    nilearn.image.load_img(str(smoothed_path)),
    "image_normed":
    nilearn.image.math_img("(x - np.nanmin(x)) / (np.nanmax(x) - np.nanmin(x))",
                           x=nilearn.image.load_img(str(smoothed_path)))
}

num_files = 5
num_maps = 4
trh = 4
# create a figure with multiple axes to plot each anatomical image
fig, axes = plt.subplots(nrows=1, ncols=5)
fig.set_size_inches((25, 5))
faxes = axes.flatten()
# axes is a 2 dimensional numpy array
str_arrangement = 'tiled'

image_to_look_at = "image" if True else "image_normed"
cut_coords = TiledSlicer.find_cut_coords(dataset["smoothed"]['image'], cut_coords=None)
# cut_coords = None
display_list = []

for idx, ax, (k, val) in zip(range(num_files), faxes, dataset.items()):
    # fig = plt.figure()
    # fig.set_size_inches((5, 5))
    if k == "anatomical":
        display = plotting.plot_img(
            val[image_to_look_at],
            black_bg=1,
            figure=fig,
            axes=ax,
            display_mode=str_arrangement,
            cut_coords=cut_coords,
        )
        display.title(
            val["name"],
            y=1.1,
            color='white',
            bgcolor='black',
            fontsize='xx-large',
        )

    else:
        display = plotting.plot_img(
            val[image_to_look_at],
            black_bg=1,
            # figure=fig,
            axes=ax,
            display_mode=str_arrangement,
            cut_coords=cut_coords,
            # threshold=None,
        )
        display.title(
            val["name"],
            y=1.1,
            color='white',
            bgcolor='black',
            fontsize='xx-large',
        )

# fig.tight_layout()

display.savefig(target_path / "misc" / "preprocessing.png")
