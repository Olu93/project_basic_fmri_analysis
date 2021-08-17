%-----------------------------------------------------------------------
% Job saved on 26-Apr-2021 02:14:19 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7487)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
root_dir = 'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps'
folders = {
    'feet'
    'l_hand'
    'r_hand'
    'tongue'
    'resting_state'
}
anat = 't1'
seperator = '\'
matlabbatch{1}.cfg_basicio.var_ops.cfg_named_input.name = 'root';
matlabbatch{1}.cfg_basicio.var_ops.cfg_named_input.input = root_dir;

current_length = length(matlabbatch) +1
sep_num = current_length
matlabbatch{current_length}.cfg_basicio.var_ops.cfg_named_input.name = 'seperator';
matlabbatch{current_length}.cfg_basicio.var_ops.cfg_named_input.input = seperator;

current_length = length(matlabbatch) +1
subject_num = current_length
matlabbatch{current_length}.cfg_basicio.var_ops.cfg_named_input.name = 'subject';
matlabbatch{current_length}.cfg_basicio.var_ops.cfg_named_input.input = '<UNDEFINED>';

current_length = length(matlabbatch) +1
prefix_num = current_length
matlabbatch{current_length}.cfg_basicio.var_ops.cfg_named_input.name = 'prefix_filter';
matlabbatch{current_length}.cfg_basicio.var_ops.cfg_named_input.input = '<UNDEFINED>';

current_length = length(matlabbatch) +1
matlabbatch{current_length}.cfg_basicio.var_ops.cfg_named_input.name = 'condition_anat';
matlabbatch{current_length}.cfg_basicio.var_ops.cfg_named_input.input = anat;

current_length = length(matlabbatch) +1
subject_folder_num = current_length
matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{1}.string(1) = cfg_dep('Named Input: base', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{2}.string(1) = cfg_dep('Named Input: file_seperator', substruct('.','val', '{}',{sep_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{3}.string(1) = cfg_dep('Named Input: subject', substruct('.','val', '{}',{subject_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{4}.string = '';
matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.outputs{1}.filter.dir = true;
matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.fun = 'append';

folder_num = length(matlabbatch) + 1
for fnum = 1:length(folders) 
    current_length = length(matlabbatch) + 1
    curr_condition = folders{fnum}
    matlabbatch{current_length}.cfg_basicio.var_ops.cfg_named_input.name = curr_condition
    matlabbatch{current_length}.cfg_basicio.var_ops.cfg_named_input.input = curr_condition
    
    current_length = length(matlabbatch) +1
    subject_prefix_num = current_length
    matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{1}.string(1) = cfg_dep('Named Input: str_prefix', substruct('.','val', '{}',{prefix_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
    matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{2}.string(1) = cfg_dep('Named Input: subject', substruct('.','val', '{}',{subject_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
    matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{3}.string = '_';
    matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{4}.string(1) = cfg_dep(['Condition: ' curr_condition], substruct('.','val', '{}',{folder_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
    matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{5}.string = '.*.nii';
    matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.outputs{1}.strtype.s = true;
    matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.fun = 'append';
    
    current_length = length(matlabbatch) +1
    subject_files_num = current_length
    matlabbatch{current_length}.cfg_basicio.file_dir.file_ops.file_fplist.dir(1) = cfg_dep('Subject Folder', substruct('.','val', '{}',{subject_folder_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','outputs', '{}',{1}));
    matlabbatch{current_length}.cfg_basicio.file_dir.file_ops.file_fplist.filter(1) = cfg_dep('Prefix', substruct('.','val', '{}',{subject_prefix_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','outputs', '{}',{1}));
    matlabbatch{current_length}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPListRec';
end





% regex_filters = {
%     '^sub*'
%     '^r.*'
%     '^n.*'
%     '^s.*'
%     }


