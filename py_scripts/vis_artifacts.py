from nilearn import plotting, image
import nilearn
# from nilearn import datasets
import matplotlib.pyplot as plt
import pathlib as path

artifact_path = path.Path("./mini_preprocessing_steps/artifacts").absolute()
target_path = path.Path("./figures").absolute()
# np.interp(a, (a.min(), a.max()), (-1, +1))

# download some example data
# haxby_dataset = datasets.fetch_haxby()
subset_num = None
dataset = {
    fn.as_posix(): {
        "fp": fn.absolute(),
        "sub": fn.absolute().name.split("_")[0],
        "name": fn.absolute().name,
        "image": image.load_img(str(fn)),
        
    }
    for fn in list(artifact_path.glob("*.nii"))[:subset_num]
}

for key, image_data in dataset.items():
    image_data["image_normed"] = image.math_img("np.interp(img1, (img1.min(), img1.max()), (-5, +5))", img1=image_data["image"]) 

num_files = len(dataset)
num_maps = 4
trh = 4
# create a figure with multiple axes to plot each anatomical image
fig, axes = plt.subplots(nrows=num_files//num_maps, ncols=num_maps)
fig.set_size_inches((10 * (num_files//num_maps), 5))

# axes is a 2 dimensional numpy array
for ax, (ns_key, ns_file), idx in zip(axes.flatten(), dataset.items(), range(num_files)):
    display = plotting.plot_stat_map(ns_file["image_normed"], axes=ax, threshold=0.1)
    if (idx % num_maps) == 0:
        # ax.set_ylabel(ns_file["sub"])
        ax.set_xlabel(ns_file["sub"])
        ax.set_title(ns_file["sub"].replace("sub", "Subject "), y=0.52, x=0.25, pad=-14)
        # ax.title.set_position(-0.1,1.02)

# save the output figure with all the anatomical images
# fig.tight_layout()
display.savefig(target_path / "misc" / "artifacts.png")
plotting.show()