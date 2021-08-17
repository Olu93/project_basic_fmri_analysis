import os
import sys
import pathlib as path
import io
import tqdm
import shutil


regex_string = r"^(?!sub).*"
starting_path = path.Path(".").absolute()
target_path = path.Path(".").absolute()
all_files = []

