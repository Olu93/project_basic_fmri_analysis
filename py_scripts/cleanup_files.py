import os
import sys
import pathlib as path
import io
import tqdm
from pprint import pprint

regex_string = r"^(?!sub).*"
root_path = path.Path(".").absolute()
log_file = io.open("log.txt", "w")
all_files = []

print("Start!")
for p in root_path.absolute().glob("./subjects/sub*/"):
    all_files.extend(list(p.glob("./sub*/*.nii")))

all_files_filtered = [file for file in all_files if not file.name.startswith("sub") and not file.name.startswith("y_") and not file.name.startswith("snr")]

for file in tqdm.tqdm(all_files_filtered):
    log_file.write(file.as_posix() + "\n")
    os.remove(file)

