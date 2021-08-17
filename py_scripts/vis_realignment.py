# %%
from helper import isnotebook
import matplotlib.pyplot as plt
import pathlib as path
import pandas as pd
import seaborn as sns
from sklearn.preprocessing import MinMaxScaler, StandardScaler
from helper import onsets

# %%
col_condition = "Condition"
col_slice = "Slice"
col_var = "Spatial Characteristic"
col_val = "Adjustment"
# %%
regex_string = r"^(?!sub).*"
if isnotebook():
    artifact_path = path.Path("../figures/realign_estimation").absolute()
    target_path = path.Path("../figures").absolute()
else:
    artifact_path = path.Path("./figures/realign_estimation").absolute()
    target_path = path.Path("./figures").absolute()

# for mfile in artifact_path.rglob("rp_*"):
#     print(shutil.copy2(str(mfile), str(target_path / "realign_estimation" / mfile.name)))

reslice_files = {
    idx: {
        # "fp": p.as_posix(),
        "subject": p.name.split("_")[1],
        col_condition: p.stem[9:].split("-")[0],
        # "slice": p.stem[9:].split("-")[1],
        # "data_file": p.absolute(),
        "data": pd.read_csv(p.as_posix(), index_col=None, header=None, delim_whitespace=True),
    }
    for idx, p in enumerate(artifact_path.rglob("rp_*"))
}

header = "tx,ty,tz,rx,ry,rz".split(",")

all_data = []
for idx, file_data in reslice_files.items():
    data = pd.DataFrame(file_data["data"])
    data.columns = header
    data[col_slice] = list(data.index)
    for key, val in file_data.items():
        if key != "data":
            data[key] = val

    all_data.append(data)

resclice_data_set = pd.concat(all_data, axis=0)
resclice_data_set
# %%
restructured_data_standardized = resclice_data_set.copy()
restructured_data_standardized[header] = MinMaxScaler(feature_range=(-1, 1)).fit_transform(
    restructured_data_standardized[header])
restructured_data_standardized
# %%

data_melted = pd.melt(
    resclice_data_set,
    [
        # "fp",
        "subject",
        col_condition,
        # "data_file",
        col_slice,
    ],
    var_name=col_var,
    value_name=col_val)
data_melted
#%%
fig = plt.figure()
fig, (col1_axes, col2_axes) = plt.subplots(2, 2, figsize=(10, 10))
col_translations = "tx ty tz".split()
translation_idxs = data_melted[col_var].isin(col_translations)
col_rotations = "rx ry rz".split()
rotation_idxs = data_melted[col_var].isin(col_rotations)
sns.lineplot(
    data=data_melted.loc[translation_idxs],
    x=col_slice,
    y=col_val,
    #  hue="condition",
    hue=col_var,
    markers=True,
    dashes=False,
    ax=col1_axes[0],
    # ci=68,
)
sns.lineplot(
    data=data_melted.loc[translation_idxs],
    x=col_slice,
    y=col_val,
    hue=col_condition,
    # hue=col_var,
    markers=True,
    dashes=False,
    ax=col2_axes[0],
    # ci=68,
)
sns.lineplot(
    data=data_melted.loc[rotation_idxs],
    x=col_slice,
    y=col_val,
    #  hue="condition",
    hue=col_var,
    markers=True,
    dashes=False,
    ax=col1_axes[1],
    # ci=68,
)
sns.lineplot(
    data=data_melted.loc[rotation_idxs],
    x=col_slice,
    y=col_val,
    hue=col_condition,
    # hue=col_var,
    markers=True,
    dashes=False,
    ax=col2_axes[1],
    # ci=68,
)
col1_axes[0].set_title("Translation Adjustments by Dimension")
col2_axes[0].set_title("Translation Adjustments by Condition")
col1_axes[1].set_title("Rotation Adjustments by Dimension")
col2_axes[1].set_title("Rotation Adjustments by Condition")

fig.tight_layout()
fig.savefig(target_path / "misc" / "realignment_1.png")
plt.show()

# %%
fig = plt.figure()
fig, axes = plt.subplots(2, 3, figsize=(15, 8))
str_r = "Rotation Adjustment"
str_t = "Translation Adjustment"
str_mapping = {val: (str_r if "r" in val else str_t) + f" {val[1].upper()}" for val in "tx ty tz rx ry rz".split()}
for (idx_name, grp), ax in zip(data_melted.groupby(col_var), axes.flatten()):
    # ax = fig.add_subplot()
    g = sns.lineplot(
        data=grp,
        x=col_slice,
        y=col_val,
        hue=col_condition,
        # err_style="bars",
        markers=True,
        dashes=False,
        ax=ax,
        # ci=68,
    )
    # g._legend.remove()
    # if not idx_name == "feet":
    handles, labels = ax.get_legend_handles_labels()
    ax.set_title(str_mapping[idx_name])
    # ax.set_legend(None)
# handles, labels = ax.get_legend_handles_labels()
# fig.legend(handles, labels, loc='upper center')
fig.tight_layout()
fig.savefig(target_path / "misc" / "realignment_2.png")
plt.show()

# %%
fig = plt.figure()
fig, axes = plt.subplots(2, 2, figsize=(13, 10))
str_r = "Rotation Adjustment"
str_t = "Translation Adjustment"
str_mapping = {val: (str_r if "r" in val else str_t) + f" {val[1].upper()}" for val in "tx ty tz rx ry rz".split()}
feet_idxs_translation = data_melted[col_condition].isin(
    "feet".split()) & data_melted[col_var].isin(col_translations)
tongue_idxs_translation = data_melted[col_condition].isin(
    "tongue".split()) & data_melted[col_var].isin(col_translations)
feet_idxs_rotation = data_melted[col_condition].isin(
    "feet".split()) & data_melted[col_var].isin(col_rotations)
tongue_idxs_rotation = data_melted[col_condition].isin(
    "tongue".split()) & data_melted[col_var].isin(col_rotations)
sns.lineplot(
    data=data_melted.loc[feet_idxs_translation],
    x=col_slice,
    y=col_val,
    #  hue="condition",
    hue=col_var,
    markers=True,
    dashes=False,
    ax=axes[0][0],
    ci=None,
)
d_style = (0, (5, 10))
for marker in [item["onset"] // 2.5 for item in onsets["feet"] if item["condition"] == 1]:
    axes[0][0].axvline(marker, c='b', linestyle=d_style)
axes[0][0].set_title("Feet-Movement Adjustments")

sns.lineplot(
    data=data_melted.loc[tongue_idxs_translation],
    x=col_slice,
    y=col_val,
    #  hue="condition",
    hue=col_var,
    markers=True,
    dashes=False,
    ax=axes[0][1],
    ci=None,
)
for marker in [item["onset"] // 2.5 for item in onsets["tongue"] if item["condition"] == 1]:
    axes[0][1].axvline(marker, c='b', linestyle=d_style)
axes[0][1].set_title("Tongue-Movement Adjustments")

sns.lineplot(
    data=data_melted.loc[feet_idxs_rotation],
    x=col_slice,
    y=col_val,
    #  hue="condition",
    hue=col_var,
    markers=True,
    dashes=False,
    ax=axes[1][0],
    ci=None,
)
for marker in [item["onset"] // 2.5 for item in onsets["feet"] if item["condition"] == 1]:
    axes[1][0].axvline(marker, c='b', linestyle=d_style)

sns.lineplot(
    data=data_melted.loc[tongue_idxs_rotation],
    x=col_slice,
    y=col_val,
    #  hue="condition",
    hue=col_var,
    markers=True,
    dashes=False,
    ax=axes[1][1],
    ci=None,
)
for marker in [item["onset"] // 2.5 for item in onsets["tongue"] if item["condition"] == 1]:
    axes[1][1].axvline(marker, c='b', linestyle=d_style)

fig.tight_layout()
fig.savefig(target_path / "misc" / "realignment_3_sq.png")
plt.show()
# %%
