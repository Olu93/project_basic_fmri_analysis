import os
import sys
import pathlib as path
import io
import tqdm
from pprint import pprint
import shutil

regex_string = r"^(?!sub).*"
artifact_path = path.Path("./single_results").absolute()
artifact_target = path.Path("./mini_preprocessing_steps/artifacts").absolute()
log_file = io.open("log.txt", "w")
all_files_1 = []
all_files_2 = []

print("Start!")

for fn in list(artifact_target.glob(f"*.nii")):
    print(os.remove(fn))

for select in ["01", "54", "60"]:
    search_path = artifact_path / ("sub"  + select)
    selected_files = list(search_path.absolute().rglob(f"spmT*.nii"))[:4]
    all_files_1.extend(selected_files)


for p in all_files_1:
    target_path = artifact_target / "_".join([p.parent.name, p.name])
    print(shutil.copyfile(p, target_path))



