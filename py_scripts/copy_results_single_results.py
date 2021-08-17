import os
import sys
import pathlib as path
import io
import tqdm
from pprint import pprint
import shutil
import time

regex_string = r"^(?!sub).*"
starting_path = path.Path("./subjects").absolute()
# target_path = path.Path("./single_results").absolute()
log_file = io.open("log.txt", "w")
all_files_1 = []
all_files_2 = []

print("Start!")
for select in starting_path.rglob('**/sub*/results/all/*'):
    all_files_1.extend([select])
for select in starting_path.rglob('**/sub*/results/basic/*'):
    all_files_1.extend([select])
for select in starting_path.rglob('**/sub*/results/dispersion/*'):
    all_files_1.extend([select])
for select in starting_path.rglob('**/sub*/results/time_modulation/*'):
    all_files_1.extend([select])


pprint(all_files_1)
for p in all_files_1:
    target = p.parent.parent / p.name
    if not p.is_dir():

        print(p, '-->', target)
        # print(shutil.move(p, target))


# for select in starting_path.glob('**/sub*/all/'):
#     all_files_2.extend([select])
# for select in starting_path.glob('**/sub*/basic/'):
#     all_files_2.extend([select])
# for select in starting_path.glob('**/sub*/dispersion/'):
#     all_files_2.extend([select])
# for select in starting_path.glob('**/sub*/time_modulation/'):
#     all_files_2.extend([select])

# for p in all_files_2:
#     print('Delete: ', p)
#     print(p.rmdir())