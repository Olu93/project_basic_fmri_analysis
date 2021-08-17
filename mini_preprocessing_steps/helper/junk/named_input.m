%-----------------------------------------------------------------------
% Job saved on 26-Apr-2021 01:35:51 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7487)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.cfg_basicio.var_ops.cfg_named_input.name = 'file_seperator';
matlabbatch{1}.cfg_basicio.var_ops.cfg_named_input.input = '\';
matlabbatch{2}.cfg_basicio.var_ops.cfg_named_input.name = 'str_feet';
matlabbatch{2}.cfg_basicio.var_ops.cfg_named_input.input = 'feet';
matlabbatch{3}.cfg_basicio.var_ops.cfg_named_input.name = 'str_lh';
matlabbatch{3}.cfg_basicio.var_ops.cfg_named_input.input = 'l_hand';
matlabbatch{4}.cfg_basicio.var_ops.cfg_named_input.name = 'str_rh';
matlabbatch{4}.cfg_basicio.var_ops.cfg_named_input.input = 'r_hand';
matlabbatch{5}.cfg_basicio.var_ops.cfg_named_input.name = 'str_tongue';
matlabbatch{5}.cfg_basicio.var_ops.cfg_named_input.input = 'tongue';
matlabbatch{6}.cfg_basicio.var_ops.cfg_named_input.name = 'str_rest';
matlabbatch{6}.cfg_basicio.var_ops.cfg_named_input.input = 'resting_state';
matlabbatch{7}.cfg_basicio.var_ops.cfg_named_input.name = 'str_t1';
matlabbatch{7}.cfg_basicio.var_ops.cfg_named_input.input = 't1';
matlabbatch{8}.cfg_basicio.file_dir.dir_ops.cfg_named_dir.name = 'base';
matlabbatch{8}.cfg_basicio.file_dir.dir_ops.cfg_named_dir.dirs = {{'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps'}};
matlabbatch{9}.cfg_basicio.var_ops.cfg_save_vars.name = 'base_vars';
matlabbatch{9}.cfg_basicio.var_ops.cfg_save_vars.outdir(1) = cfg_dep('Named Directory Selector: base(1)', substruct('.','val', '{}',{8}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{1}));
matlabbatch{9}.cfg_basicio.var_ops.cfg_save_vars.vars(1).vname = 'placeholder';
matlabbatch{9}.cfg_basicio.var_ops.cfg_save_vars.vars(1).vcont = [];
matlabbatch{9}.cfg_basicio.var_ops.cfg_save_vars.vars(2).vname = 'placeholder';
matlabbatch{9}.cfg_basicio.var_ops.cfg_save_vars.vars(2).vcont = [];
matlabbatch{9}.cfg_basicio.var_ops.cfg_save_vars.vars(3).vname = 'root';
matlabbatch{9}.cfg_basicio.var_ops.cfg_save_vars.vars(3).vcont(1) = cfg_dep('Named Directory Selector: base(1)', substruct('.','val', '{}',{8}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{1}));
matlabbatch{9}.cfg_basicio.var_ops.cfg_save_vars.vars(4).vname = 'seperator';
matlabbatch{9}.cfg_basicio.var_ops.cfg_save_vars.vars(4).vcont(1) = cfg_dep('Named Input: file_seperator', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{9}.cfg_basicio.var_ops.cfg_save_vars.vars(5).vname = 'subject';
matlabbatch{9}.cfg_basicio.var_ops.cfg_save_vars.vars(5).vcont = [];
matlabbatch{9}.cfg_basicio.var_ops.cfg_save_vars.vars(6).vname = 'condition1';
matlabbatch{9}.cfg_basicio.var_ops.cfg_save_vars.vars(6).vcont(1) = cfg_dep('Named Input: str_feet', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{9}.cfg_basicio.var_ops.cfg_save_vars.vars(7).vname = 'condition2';
matlabbatch{9}.cfg_basicio.var_ops.cfg_save_vars.vars(7).vcont(1) = cfg_dep('Named Input: str_lh', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{9}.cfg_basicio.var_ops.cfg_save_vars.vars(8).vname = 'condition3';
matlabbatch{9}.cfg_basicio.var_ops.cfg_save_vars.vars(8).vcont(1) = cfg_dep('Named Input: str_rh', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{9}.cfg_basicio.var_ops.cfg_save_vars.vars(9).vname = 'condition4';
matlabbatch{9}.cfg_basicio.var_ops.cfg_save_vars.vars(9).vcont(1) = cfg_dep('Named Input: str_tongue', substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{9}.cfg_basicio.var_ops.cfg_save_vars.vars(10).vname = 'condition_resting';
matlabbatch{9}.cfg_basicio.var_ops.cfg_save_vars.vars(10).vcont(1) = cfg_dep('Named Input: str_rest', substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{9}.cfg_basicio.var_ops.cfg_save_vars.vars(11).vname = 'condition_anat';
matlabbatch{9}.cfg_basicio.var_ops.cfg_save_vars.vars(11).vcont(1) = cfg_dep('Named Input: str_t1', substruct('.','val', '{}',{7}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{9}.cfg_basicio.var_ops.cfg_save_vars.saveasstruct = true;
