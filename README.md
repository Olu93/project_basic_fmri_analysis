# project_basic_fmri_analysis

This project contains the submission for an analysis of various fmri-subjects across several tasks.
The results of this project can be read [here](./submission.pdf).

## Run code
In order to re-run the code you have to follow a couple of steps.

### 1. Unzip subjects in folder of choice
- The files need to start with sub**XX** with **XX** being a digit.
- Their substructures should contain folders with sub**XX**_feet, sub**XX**_l_hand, sub**XX**_r_hand, sub**XX**_tongue, sub**XX**_rest

### 2. Run Preprocessing
- Configure [./subjects/run_all_job_prod.m](./subjects/run_all_job_prod.m) to include the folders requested.
- Run the file.

### 3. First-Level Analysis
- Configure [./single_results/run_all_job_prod.m](./single_results/run_all_job_prod.m).
- Run the file.

### 4. Second-Level Analysis
- Configure [./global_results/run_all_job_prod.m](./global_results/run_all_job_prod.m).
- Run the file.

### 5. Run python skripts
- Just explore the viz files for generating figures