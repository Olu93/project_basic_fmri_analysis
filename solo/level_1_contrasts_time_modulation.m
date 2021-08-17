%-----------------------------------------------------------------------
% Job saved on 26-Apr-2021 02:14:19 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7487)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
root_dir = 'C:\Users\ohund\Documents\MATLAB\';

seperator = '\';
results_folder = 'results';
subjects_dir_num = 1;
crr_len = 1;
matlabbatch{1}.cfg_basicio.var_ops.cfg_named_input.name = 'subjects_folder';
matlabbatch{1}.cfg_basicio.var_ops.cfg_named_input.input = '<UNDEFINED>';
% matlabbatch{1}.cfg_basicio.var_ops.cfg_named_input.input = 'subjects';

crr_len = length(matlabbatch) +1;
sep_num = crr_len;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'seperator';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = seperator;

crr_len = length(matlabbatch) +1;
subject_num = crr_len;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'subject';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = '<UNDEFINED>';
% matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = 'sub01';

crr_len = length(matlabbatch) +1;
c_type = 'time_modulation'
% matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = 'basic';

crr_len = length(matlabbatch) +1;
results_folder_name = crr_len;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'results_folder';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = results_folder;

mv_gr_num = 6;
mv_gr = (1:mv_gr_num)*0;
time_mod_num = 1;
movement_group = (1:mv_gr_num+time_mod_num)*0;
condition_biases = (0:3) * 0 ;

crr_len = length(matlabbatch)+ 1;
constrast_start_num = crr_len;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Feet Movement';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [1 movement_group 0 movement_group 0 movement_group 0 movement_group condition_biases 0];
crr_len = length(matlabbatch)+ 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'LH';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [0 movement_group 1 movement_group 0 movement_group 0 movement_group condition_biases 0];
crr_len = length(matlabbatch)+ 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'RH';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [0 movement_group 0 movement_group 1 movement_group 0 movement_group condition_biases 0];
crr_len = length(matlabbatch)+ 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Tongue';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [0 movement_group 0 movement_group 0 movement_group 1 movement_group condition_biases 0];
crr_len = length(matlabbatch)+ 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Resting';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [0 movement_group 0 movement_group 0 movement_group 0 movement_group condition_biases 1];
crr_len = length(matlabbatch)+ 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Movement in General';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [1 movement_group 1 movement_group 1 movement_group 1 movement_group condition_biases 0];
crr_len = length(matlabbatch)+ 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'LH vs. RH';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [0 movement_group 1 movement_group -1 movement_group 0 movement_group condition_biases 0];
crr_len = length(matlabbatch)+ 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'RH vs. LH';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [0 movement_group -1 movement_group 1 movement_group 0 movement_group condition_biases 0];
crr_len = length(matlabbatch)+ 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Hands';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [0 movement_group 1 movement_group 1 movement_group 0 movement_group condition_biases 0];
crr_len = length(matlabbatch)+ 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Hands vs Rest';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [1 movement_group -1 movement_group -1 movement_group 1 movement_group condition_biases 0];
crr_len = length(matlabbatch)+ 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Foot vs Rest';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [3 movement_group -1 movement_group -1 movement_group -1 movement_group condition_biases 0];
crr_len = length(matlabbatch)+ 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'LH vs Rest';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [-1 movement_group 3 movement_group -1 movement_group -1 movement_group condition_biases 0];
crr_len = length(matlabbatch)+ 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'RH vs Rest';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [-1 movement_group -1 movement_group 3 movement_group -1 movement_group condition_biases 0];
crr_len = length(matlabbatch)+ 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Tongue vs Rest';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [-1 movement_group -1 movement_group -1 movement_group 3 movement_group condition_biases 0];
crr_len = length(matlabbatch)+ 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Time Modulation Effect';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [0 1 mv_gr 0 1 mv_gr 0 1 mv_gr 0 1 mv_gr condition_biases 0];
crr_len = length(matlabbatch)+ 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Feet-Time';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [0 1 mv_gr 0  0 mv_gr 0 0 mv_gr 0 0 mv_gr condition_biases 0];
crr_len = length(matlabbatch)+ 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'LH-Time';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [0 0 mv_gr 0  1 mv_gr 0 0 mv_gr 0 0 mv_gr condition_biases 0];
crr_len = length(matlabbatch)+ 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'RH-Time';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [0 0 mv_gr 0  0 mv_gr 0 1 mv_gr 0 0 mv_gr condition_biases 0];
crr_len = length(matlabbatch)+ 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Tongue-Time';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [0 0 mv_gr 0  0 mv_gr 0 0 mv_gr 0 1 mv_gr condition_biases 0];
crr_len = length(matlabbatch)+ 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Time Modulation Effect vs Movements';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [-1 1 mv_gr -1 1 mv_gr -1 1 mv_gr -1 1 mv_gr condition_biases 0];
crr_len = length(matlabbatch)+ 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Feet-Time vs Rest Time';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [0 3 mv_gr 0  -1 mv_gr 0 -1 mv_gr 0 -1 mv_gr condition_biases 0];
crr_len = length(matlabbatch)+ 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'LH-Time vs Rest Time';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [0 -1 mv_gr 0  3 mv_gr 0 -1 mv_gr 0 -1 mv_gr condition_biases 0];
crr_len = length(matlabbatch)+ 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'RH-Time vs Rest Time';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [0 -1 mv_gr 0  -1 mv_gr 0 3 mv_gr 0 -1 mv_gr condition_biases 0];
crr_len = length(matlabbatch)+ 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Tongue-Time vs Rest Time';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [0 -1 mv_gr 0  -1 mv_gr 0 -1 mv_gr 0 3 mv_gr condition_biases 0];
crr_len = length(matlabbatch)+ 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Feet vs Time';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [ 1 -1 mv_gr  0  0 mv_gr  0  0 mv_gr  0  0 mv_gr condition_biases 0];
crr_len = length(matlabbatch)+ 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'LH vs Time';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [ 0  0 mv_gr 1 -1 mv_gr  0  0 mv_gr  0  0 mv_gr condition_biases 0];
crr_len = length(matlabbatch)+ 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'RH vs Time';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [ 0  0 mv_gr  0  0 mv_gr 1 -1 mv_gr  0  0 mv_gr condition_biases 0];
crr_len = length(matlabbatch)+ 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Tongue vs Time';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [ 0  0 mv_gr  0  0 mv_gr  0  0 mv_gr 1 -1 mv_gr condition_biases 0];
constrast_end_num = crr_len;
    
    
crr_len = length(matlabbatch)+ 1;
spm_mat_num = crr_len;


matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{1}.string = root_dir;
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{2}.string(1) = cfg_dep('Named Input: subjects_folder', substruct('.','val', '{}',{subjects_dir_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{3}.string(1) = cfg_dep('Named Input: file_seperator', substruct('.','val', '{}',{sep_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{4}.string(1) = cfg_dep('Named Input: subject', substruct('.','val', '{}',{subject_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{5}.string(1) = cfg_dep('Named Input: file_seperator', substruct('.','val', '{}',{sep_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{6}.string = results_folder;
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{7}.string(1) = cfg_dep('Named Input: file_seperator', substruct('.','val', '{}',{sep_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{8}.string = c_type;
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{9}.string(1) = cfg_dep('Named Input: file_seperator', substruct('.','val', '{}',{sep_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{10}.string = 'SPM.mat';
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.outputs{1}.filter.mat = true;
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.fun = 'append';

crr_len = length(matlabbatch) +1;
contrast_num = crr_len;
matlabbatch{crr_len}.spm.stats.con.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{spm_mat_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','outputs', '{}',{1}));
% matlabbatch{21}.spm.stats.con.spmmat(1) = cfg_dep('Call MATLAB function: Call MATLAB: output 1 - filter mat', substruct('.','val', '{}',{20}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','outputs', '{}',{1}));

for idx = constrast_start_num:constrast_end_num
    csess = idx-constrast_start_num+1; 
    input_name = matlabbatch{idx}.cfg_basicio.var_ops.cfg_named_input.name;
    matlabbatch{crr_len}.spm.stats.con.consess{csess}.tcon.name = input_name;
    matlabbatch{crr_len}.spm.stats.con.consess{csess}.tcon.weights(1) = cfg_dep(['Named Input: ' input_name ' (' num2str(idx) ')' ], substruct('.','val', '{}',{idx}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
    matlabbatch{crr_len}.spm.stats.con.consess{csess}.tcon.sessrep = 'none';
end
matlabbatch{crr_len}.spm.stats.con.delete = 1;

crr_len = length(matlabbatch) +1;
contrast_res_num = crr_len;
matlabbatch{crr_len}.spm.stats.results.spmmat(1) = cfg_dep('Contrast Manager: SPM.mat File', substruct('.','val', '{}',{contrast_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{crr_len}.spm.stats.results.conspec.titlestr = '';
matlabbatch{crr_len}.spm.stats.results.conspec.contrasts = Inf;
matlabbatch{crr_len}.spm.stats.results.conspec.threshdesc = 'FWE';
matlabbatch{crr_len}.spm.stats.results.conspec.thresh = 0.05;
matlabbatch{crr_len}.spm.stats.results.conspec.extent = 0;
matlabbatch{crr_len}.spm.stats.results.conspec.conjunction = 1;
matlabbatch{crr_len}.spm.stats.results.conspec.mask.none = 1;
matlabbatch{crr_len}.spm.stats.results.units = 1;
matlabbatch{crr_len}.spm.stats.results.export{1}.png = true;



% crr_len = length(matlabbatch) +1;
% matlabbatch{crr_len}.cfg_basicio.file_dir.cfg_fileparts.files(1) = cfg_dep('Contrast Manager: SPM.mat File', substruct('.','val', '{}',{contrast_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));

% crr_len = length(matlabbatch) +1;
% matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{1}.string = 'C:\Users\ohund\Documents\MATLAB\';
% matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{2}.string = 'single_results';
% matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{3}.string(1) = cfg_dep('Named Input: file_seperator', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
% matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{4}.string(1) = cfg_dep('Named Input: 4', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
% matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{5}.string(1) = cfg_dep('Named Input: file_seperator', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
% matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{6}.string(1) = cfg_dep('Named Input: subject', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
% matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.outputs{1}.filter.dir = true;
% matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.fun = 'append';


% crr_len = length(matlabbatch) +1;
% matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{1}.string = root_dir;
% matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{2}.string(1) = cfg_dep('Named Input: subjects_folder', substruct('.','val', '{}',{subjects_dir_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
% matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{3}.string(1) = cfg_dep('Named Input: file_seperator', substruct('.','val', '{}',{sep_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
% matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.outputs{1}.filter.dir = true;
% matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.fun = 'append';


