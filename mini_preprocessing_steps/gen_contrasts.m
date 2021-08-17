%-----------------------------------------------------------------------
% Job saved on 26-Apr-2021 02:14:19 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7487)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
root_dir = 'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps'

seperator = '\'
results_folder = 'results'
root_num = 1
crr_len = 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'root';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = '<UNDEFINED>';

crr_len = length(matlabbatch) +1;
sep_num = crr_len;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'seperator';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = seperator;

crr_len = length(matlabbatch) +1;
subject_num = crr_len;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'subject';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = '<UNDEFINED>';

crr_len = length(matlabbatch) +1;
results_folder_name = crr_len;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'results_folder';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = results_folder;

c_type = 'basic'


mv_gr_num = 6
movement_group = (0:mv_gr_num)*0
condition_biases = (0:5) * 0 

crr_len = length(matlabbatch) + 1
constrast_start_num = crr_len
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Feet Movement';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [1 movement_group 0 movement_group 0 movement_group 0 movement_group -1 movement_group condition_biases];
crr_len = length(matlabbatch) + 1
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Left Hand';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [0 movement_group 1 movement_group 0 movement_group 0 movement_group -1 movement_group condition_biases];
crr_len = length(matlabbatch) + 1
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Right Hand';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [0 movement_group 0 movement_group 1 movement_group 0 movement_group -1 movement_group condition_biases];
crr_len = length(matlabbatch) + 1
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Tongue';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [0 movement_group 0 movement_group 0 movement_group 1 movement_group -1 movement_group condition_biases];
crr_len = length(matlabbatch) + 1
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Resting';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [0 movement_group 0 movement_group 0 movement_group 0 movement_group 1 movement_group condition_biases];
crr_len = length(matlabbatch) + 1
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Movement in General';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [1 movement_group 1 movement_group 1 movement_group 1 movement_group 0 movement_group condition_biases];
crr_len = length(matlabbatch) + 1
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Left Hand vs. Right Hand';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [0 movement_group 1 movement_group -1 movement_group 0 movement_group 0 movement_group condition_biases];
crr_len = length(matlabbatch) + 1
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Right Hand vs. Left Hand';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [0 movement_group -1 movement_group 1 movement_group 0 movement_group 0 movement_group condition_biases];
crr_len = length(matlabbatch) + 1
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Hands';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [0 movement_group 1 movement_group 1 movement_group 0 movement_group 0 movement_group condition_biases];
crr_len = length(matlabbatch) + 1
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Hands vs Rest';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [1 movement_group -1 movement_group -1 movement_group 1 movement_group 0 movement_group condition_biases];
crr_len = length(matlabbatch) + 1
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Foot vs Rest';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [3 movement_group -1 movement_group -1 movement_group -1 movement_group 0 movement_group condition_biases];
crr_len = length(matlabbatch) + 1
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'LH vs Rest';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [-1 movement_group 3 movement_group -1 movement_group -1 movement_group 0 movement_group condition_biases];
crr_len = length(matlabbatch) + 1
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'RH vs Rest';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [-1 movement_group -1 movement_group 3 movement_group -1 movement_group 0 movement_group condition_biases];
crr_len = length(matlabbatch) + 1
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'Tongue vs Rest';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = [-1 movement_group -1 movement_group -1 movement_group 3 movement_group 0 movement_group condition_biases];
constrast_end_num = crr_len

    
    
crr_len = length(matlabbatch) + 1
spm_mat_num = crr_len;
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{1}.string(1) = cfg_dep('Named Input: root', substruct('.','val', '{}',{root_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{2}.string(1) = cfg_dep('Named Input: file_seperator', substruct('.','val', '{}',{sep_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{3}.string(1) = cfg_dep('Named Input: subject', substruct('.','val', '{}',{subject_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{4}.string(1) = cfg_dep('Named Input: file_seperator', substruct('.','val', '{}',{sep_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{5}.string(1) = cfg_dep(['Named Input: ' contype_num], substruct('.','val', '{}',{contype_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{6}.string(1) = c_type;
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.outputs{1}.filter.dir = true;
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.fun = 'append';

crr_len = length(matlabbatch) +1;
matlabbatch{crr_len}.spm.stats.con.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{spm_mat_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));

for idx = constrast_start_num:constrast_end_num
    matlabbatch{crr_len}.spm.stats.con.consess{idx-constrast_start_num}.tcon.name(1) = matlabbatch{idx}.cfg_basicio.var_ops.cfg_named_input.name;
    matlabbatch{crr_len}.spm.stats.con.consess{idx-constrast_start_num}.tcon.weights = cfg_dep(['Named Input: ' num2str(idx)], substruct('.','val', '{}',{idx}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
    matlabbatch{crr_len}.spm.stats.con.consess{idx-constrast_start_num}.tcon.sessrep = 'none';

matlabbatch{crr_len}.spm.stats.con.delete = 1;

crr_len = length(matlabbatch) +1;
contrast_num = crr_len;
matlabbatch{crr_len}.spm.stats.results.spmmat(1) = cfg_dep('Contrast Manager: SPM.mat File', substruct('.','val', '{}',{contrast_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{crr_len}.spm.stats.results.conspec.titlestr = '';
matlabbatch{crr_len}.spm.stats.results.conspec.contrasts = Inf;
matlabbatch{crr_len}.spm.stats.results.conspec.threshdesc = 'FWE';
matlabbatch{crr_len}.spm.stats.results.conspec.thresh = 0.05;
matlabbatch{crr_len}.spm.stats.results.conspec.extent = 0;
matlabbatch{crr_len}.spm.stats.results.conspec.conjunction = 1;
matlabbatch{crr_len}.spm.stats.results.conspec.mask.none = 1;
matlabbatch{crr_len}.spm.stats.results.units = 1;
matlabbatch{crr_len}.spm.stats.results.export{1}.pdf = true;
