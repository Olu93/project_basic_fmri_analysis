%-----------------------------------------------------------------------
% Job saved on 26-Apr-2021 02:14:19 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7487)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
root_dir = 'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps'

seperator = '\'
matlabbatch{1}.cfg_basicio.var_ops.cfg_named_input.name = 'root';
matlabbatch{1}.cfg_basicio.var_ops.cfg_named_input.input = '<UNDEFINED>';

current_length = current_length + 1
sep_num = current_length
matlabbatch{current_length}.cfg_basicio.var_ops.cfg_named_input.name = 'seperator';
matlabbatch{current_length}.cfg_basicio.var_ops.cfg_named_input.input = seperator;

current_length = length(matlabbatch) +1
% subject_folder_num = current_length
% matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{1}.string(1) = cfg_dep('Named Input: base', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
% matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{2}.string(1) = cfg_dep('Named Input: file_seperator', substruct('.','val', '{}',{sep_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
% matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{3}.string(1) = cfg_dep('Named Input: subject', substruct('.','val', '{}',{subject_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
% matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{4}.string = '';
% matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.outputs{1}.filter.dir = true;
% matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.fun = 'append';


mv_gr_num = 6
movement_group = (0:mv_gr_num)*0
condition_biases = (0:5) * 0 

matlabbatch{31}.cfg_basicio.var_ops.cfg_named_input.name = 'Feet Movement';
matlabbatch{31}.cfg_basicio.var_ops.cfg_named_input.input = [1 movement_group 0 movement_group 0 movement_group 0 movement_group condition_biases];
matlabbatch{31}.cfg_basicio.var_ops.cfg_named_input.name = 'Left Hand';
matlabbatch{31}.cfg_basicio.var_ops.cfg_named_input.input = [0 movement_group 1 movement_group 0 movement_group 0 movement_group condition_biases];
matlabbatch{31}.cfg_basicio.var_ops.cfg_named_input.name = 'Right Hand';
matlabbatch{31}.cfg_basicio.var_ops.cfg_named_input.input = [0 movement_group 0 movement_group 1 movement_group 0 movement_group condition_biases];
matlabbatch{31}.cfg_basicio.var_ops.cfg_named_input.name = 'Tongue';
matlabbatch{31}.cfg_basicio.var_ops.cfg_named_input.input = [0 movement_group 0 movement_group 0 movement_group 1 movement_group condition_biases];
matlabbatch{31}.cfg_basicio.var_ops.cfg_named_input.name = 'Movement in General';
matlabbatch{31}.cfg_basicio.var_ops.cfg_named_input.input = [1 movement_group 1 movement_group 1 movement_group 1 movement_group condition_biases];
matlabbatch{31}.cfg_basicio.var_ops.cfg_named_input.name = 'Left Hand vs. Right Hand';
matlabbatch{31}.cfg_basicio.var_ops.cfg_named_input.input = [0 movement_group 1 movement_group -1 movement_group 0 movement_group condition_biases];
matlabbatch{31}.cfg_basicio.var_ops.cfg_named_input.name = 'Right Hand vs. Left Hand';
matlabbatch{31}.cfg_basicio.var_ops.cfg_named_input.input = [0 movement_group -1 movement_group 1 movement_group 0 movement_group condition_biases];
matlabbatch{31}.cfg_basicio.var_ops.cfg_named_input.name = 'Hands';
matlabbatch{31}.cfg_basicio.var_ops.cfg_named_input.input = [0 movement_group 1 movement_group 1 movement_group 0 movement_group condition_biases];
matlabbatch{31}.cfg_basicio.var_ops.cfg_named_input.name = 'Hands vs Rest';
matlabbatch{31}.cfg_basicio.var_ops.cfg_named_input.input = [1 movement_group -1 movement_group -1 movement_group 1 movement_group condition_biases];
matlabbatch{31}.cfg_basicio.var_ops.cfg_named_input.name = 'Foot vs Rest';
matlabbatch{31}.cfg_basicio.var_ops.cfg_named_input.input = [3 movement_group -1 movement_group -1 movement_group -1 movement_group condition_biases];
matlabbatch{31}.cfg_basicio.var_ops.cfg_named_input.name = 'LH vs Rest';
matlabbatch{31}.cfg_basicio.var_ops.cfg_named_input.input = [-1 movement_group 3 movement_group -1 movement_group -1 movement_group condition_biases];
matlabbatch{31}.cfg_basicio.var_ops.cfg_named_input.name = 'RH vs Rest';
matlabbatch{31}.cfg_basicio.var_ops.cfg_named_input.input = [-1 movement_group -1 movement_group 3 movement_group -1 movement_group condition_biases];
matlabbatch{31}.cfg_basicio.var_ops.cfg_named_input.name = 'Tongue vs Rest';
matlabbatch{31}.cfg_basicio.var_ops.cfg_named_input.input = [-1 movement_group -1 movement_group -1 movement_group 3 movement_group condition_biases];