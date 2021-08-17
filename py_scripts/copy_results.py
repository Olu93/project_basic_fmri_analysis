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
target_path = path.Path("./single_results").absolute()
log_file = io.open("log.txt", "w")
all_files_1 = []
all_files_2 = []

print("Start!")
for select in starting_path.rglob('sub*/results/**/SPM.mat'):
    # search_path = starting_path / ("sub"  + select)
    # selected_files = list(search_path.absolute().rglob(f"spmT*.nii"))[:4]
    all_files_1.extend([select])

# pprint(all_files_1)
for p in all_files_1:
    # print("==============")
    # print(target_path / p.name)

    from_ = list(p.parent.glob('*'))
    to_ = target_path / p.parent.name / p.parent.parent.parent.name
    os.makedirs(to_, exist_ok=True)
    for f in from_:
        if f.suffix not in [".png"]:
            t = str(to_ / f.name)
            print(f, " --> ", str(t))

            print(f, " --> ", shutil.move(f, str(t)), " OK!")
        # time.sleep(0.5)
