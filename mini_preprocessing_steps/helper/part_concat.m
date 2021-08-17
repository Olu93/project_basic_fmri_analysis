%-----------------------------------------------------------------------
% Job saved on 26-Apr-2021 02:14:19 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7487)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
disp("================================");
root_dir = 'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps'

seperator = '\'
matlabbatch{1}.cfg_basicio.var_ops.cfg_named_input.name = 'root';
matlabbatch{1}.cfg_basicio.var_ops.cfg_named_input.input = '<UNDEFINED>';

current_length = length(matlabbatch) +1
sep_num = current_length
matlabbatch{current_length}.cfg_basicio.var_ops.cfg_named_input.name = 'seperator';
matlabbatch{current_length}.cfg_basicio.var_ops.cfg_named_input.input = seperator;

current_length = length(matlabbatch) +1
subject_folder_num = current_length
matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{1}.string(1) = cfg_dep('Named Input: base', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{2}.string(1) = cfg_dep('Named Input: file_seperator', substruct('.','val', '{}',{sep_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{3}.string = '<UNDEFINED>';
matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.outputs{1}.filter.dir = true;
matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.fun = 'append';


