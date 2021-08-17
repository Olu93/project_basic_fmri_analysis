import os
import sys
import pathlib as path
import io
import tqdm
from pprint import pprint
import shutil

regex_string = r"^(?!sub).*"
design_matrices_path = path.Path(".").absolute()
design_matrices_target = path.Path("./figures/design_matrices").absolute()
level_1_path = path.Path("./single_results").absolute()
level_1_target = path.Path("./figures/level_1_reports").absolute()
level_2_path = path.Path("./global_results").absolute()
level_2_target = path.Path("./figures/level_2_reports").absolute()
log_file = io.open("log.txt", "w")
all_files_design_matrices = []
all_files_1 = []
all_files_2 = []

print("Start!")
for p in design_matrices_path.absolute().glob("*.png"):
    all_files_design_matrices.append(p)

for p in level_1_path.absolute().rglob("*.png"):
    all_files_1.append(p)

for p in level_2_path.absolute().rglob("*.png"):
    all_files_2.append(p)


for p in all_files_design_matrices:
    target_path = design_matrices_target / "_".join([p.parent.name, p.name])
    shutil.move(p, target_path)

for p in all_files_1:
    target_path = level_1_target / "_".join([p.parent.name, p.name])
    shutil.move(p, target_path)

for p in all_files_2:
    target_path = level_2_target / "_".join([p.parent.name, p.name])
    shutil.move(p, target_path)
# all_files_filtered = [file for file in all_files if not file.name.startswith("sub") and not file.name.startswith("y_")]

# for file in tqdm.tqdm(all_files_filtered):
#     log_file.write(file.as_posix() + "\n")
    # os.copy(file)

