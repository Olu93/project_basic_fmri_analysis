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
matlabbatch{1}.cfg_basicio.var_ops.cfg_named_input.input = '<UNDEFINED>';

current_length = length(matlabbatch) +1
sep_num = current_length
matlabbatch{current_length}.cfg_basicio.var_ops.cfg_named_input.name = 'seperator';
matlabbatch{current_length}.cfg_basicio.var_ops.cfg_named_input.input = seperator;

current_length = length(matlabbatch) +1
subject_num = current_length
matlabbatch{current_length}.cfg_basicio.var_ops.cfg_named_input.name = 'subject';
% matlabbatch{current_length}.cfg_basicio.var_ops.cfg_named_input.input = '<UNDEFINED>';
matlabbatch{current_length}.cfg_basicio.var_ops.cfg_named_input.input = '<UNDEFINED>';

current_length = length(matlabbatch) +1
prefix_num = current_length
matlabbatch{current_length}.cfg_basicio.var_ops.cfg_named_input.name = 'prefix_filter';
% matlabbatch{current_length}.cfg_basicio.var_ops.cfg_named_input.input = '<UNDEFINED>';
matlabbatch{current_length}.cfg_basicio.var_ops.cfg_named_input.input = '^r.*';

current_length = length(matlabbatch) +1
anat_num = current_length
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

regex_filters = {
    ''
    'r'
    'n'
    's'
    'u'
    'rp'
    }
for regnum = 1:length(regex_filters)
    current_stage = regex_filters{regnum}
    if isempty(current_stage)
        regex_structure = '^'
    else
        regex_structure = ['^' current_stage  '.*']
    end
    folder_num = length(matlabbatch) + 1  
    initial_folder_num = folder_num
    for fnum = 1:length(folders) 
        current_length = length(matlabbatch) + 1
        curr_condition = folders{fnum}
        matlabbatch{current_length}.cfg_basicio.var_ops.cfg_named_input.name = curr_condition
        matlabbatch{current_length}.cfg_basicio.var_ops.cfg_named_input.input = curr_condition
        
        current_length = length(matlabbatch) +1
        subject_prefix_num = current_length
        matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{1}.string = regex_structure;
        matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{2}.string(1) = cfg_dep('Named Input: subject', substruct('.','val', '{}',{subject_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
        matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{3}.string = '_';
        matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{4}.string(1) = cfg_dep(['Condition: ' curr_condition], substruct('.','val', '{}',{folder_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
        matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{5}.string = '.*.nii';
        matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.outputs{1}.strtype.s = true;
        matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.fun = 'append';
        
        current_length = length(matlabbatch) +1
        subject_files_num = current_length
        matlabbatch{current_length}.cfg_basicio.file_dir.file_ops.file_fplist.dir(1) = cfg_dep('Subject Folder', substruct('.','val', '{}',{subject_folder_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','outputs', '{}',{1}));
        matlabbatch{current_length}.cfg_basicio.file_dir.file_ops.file_fplist.filter(1) = cfg_dep(['Prefix ' regex_structure], substruct('.','val', '{}',{subject_prefix_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','outputs', '{}',{1}));
        matlabbatch{current_length}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPListRec';
        
        
        current_length = length(matlabbatch) +1
        matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{1}.string(1) = cfg_dep('Named Input: base', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
        matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{2}.string(1) = cfg_dep('Named Input: file_seperator', substruct('.','val', '{}',{sep_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
        matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{3}.string(1) = cfg_dep('Named Input: subject', substruct('.','val', '{}',{subject_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
        matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{4}.string(1) = cfg_dep('Named Input: seperator', substruct('.','val', '{}',{sep_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
        matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{5}.string(1) = cfg_dep('Named Input: subject', substruct('.','val', '{}',{subject_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
        matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{6}.string = '_';
        matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{7}.string(1) = cfg_dep(['Named Input: ' curr_condition], substruct('.','val', '{}',{folder_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
        matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{8}.string(1) = cfg_dep('Named Input: seperator', substruct('.','val', '{}',{sep_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
        matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{9}.string = 'mean';
        matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{10}.string(1) = cfg_dep('Named Input: subject', substruct('.','val', '{}',{subject_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
        matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{11}.string = '_';
        matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{12}.string(1) = cfg_dep(['Named Input: ' curr_condition], substruct('.','val', '{}',{folder_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
        matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{13}.string = '-0001.nii';
        matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.outputs{1}.filter.dir = true;
        matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.fun = 'append';

        folder_num = length(matlabbatch) + 1  
    end
    
    current_length = length(matlabbatch) +1
    subject_prefix_num = current_length
    matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{1}.string = '^';
    matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{2}.string(1) = cfg_dep('Named Input: subject', substruct('.','val', '{}',{subject_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
    matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{3}.string = '_';
    matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{4}.string(1) = cfg_dep('Condition: T1', substruct('.','val', '{}',{anat_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
    matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.inputs{5}.string = '.*.nii';
    matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.outputs{1}.strtype.s = true;
    matlabbatch{current_length}.cfg_basicio.run_ops.call_matlab.fun = 'append';
    current_length = length(matlabbatch) +1
    t1_num = current_length
    subject_files_num = current_length
    matlabbatch{current_length}.cfg_basicio.file_dir.file_ops.file_fplist.dir(1) = cfg_dep('Subject Folder', substruct('.','val', '{}',{subject_folder_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','outputs', '{}',{1}));
    matlabbatch{current_length}.cfg_basicio.file_dir.file_ops.file_fplist.filter(1) = cfg_dep(['Prefix: ^subXX_t1.*'], substruct('.','val', '{}',{subject_prefix_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','outputs', '{}',{1}));
    matlabbatch{current_length}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPListRec';

    

    current_length = length(matlabbatch) + 1
    output_var_num = current_length 
    matlabbatch{current_length}.cfg_basicio.var_ops.cfg_save_vars.name = [current_stage '_all_files'];
    matlabbatch{current_length}.cfg_basicio.var_ops.cfg_save_vars.outdir(1) = cfg_dep('Call MATLAB function: Call MATLAB: output 1 - filter dir', substruct('.','val', '{}',{subject_folder_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','outputs', '{}',{1}));
    var_num = 1
    fset_num = initial_folder_num + 2
    fmean_num = initial_folder_num + 3
    for fnum = 1:length(folders) 
        curr_condition = folders{fnum} 
        disp(class(curr_condition))
        matlabbatch{current_length}.cfg_basicio.var_ops.cfg_save_vars.vars(var_num).vname = curr_condition;
        matlabbatch{current_length}.cfg_basicio.var_ops.cfg_save_vars.vars(var_num).vcont(1) = cfg_dep(['Directory: ' curr_condition ' (' num2str(fset_num) ')'], substruct('.','val', '{}',{fset_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
        var_num = length(matlabbatch{current_length}.cfg_basicio.var_ops.cfg_save_vars.vars) + 1
        
        matlabbatch{current_length}.cfg_basicio.var_ops.cfg_save_vars.vars(var_num).vname = ['mean_' curr_condition];
        matlabbatch{current_length}.cfg_basicio.var_ops.cfg_save_vars.vars(var_num).vcont(1) = cfg_dep(['File: Mean (' num2str(fmean_num) ')'], substruct('.','val', '{}',{fmean_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','outputs', '{}',{1}));
        matlabbatch{current_length}.cfg_basicio.var_ops.cfg_save_vars.saveasstruct = true;
        var_num = var_num +1
        fset_num = fset_num + 4
        fmean_num = fmean_num + 4
    end


    matlabbatch{current_length}.cfg_basicio.var_ops.cfg_save_vars.vars(var_num).vname = 't1';
    matlabbatch{current_length}.cfg_basicio.var_ops.cfg_save_vars.vars(var_num).vcont(1) = cfg_dep(['File: T1 (' num2str(t1_num) ')'], substruct('.','val', '{}',{t1_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
    matlabbatch{current_length}.cfg_basicio.var_ops.cfg_save_vars.saveasstruct = true;

end

% regex_filters = {
%     '^sub*'
%     '^r.*'
%     '^n.*'
%     '^s.*'
%     }


