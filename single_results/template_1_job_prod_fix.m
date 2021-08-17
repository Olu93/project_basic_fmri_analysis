%-----------------------------------------------------------------------
% Job saved on 30-Apr-2021 02:35:06 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7487)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.cfg_basicio.var_ops.cfg_named_input.name = 'subject_folder';
matlabbatch{1}.cfg_basicio.var_ops.cfg_named_input.input = '<UNDEFINED>';
matlabbatch{2}.cfg_basicio.var_ops.cfg_named_input.name = 'seperator';
matlabbatch{2}.cfg_basicio.var_ops.cfg_named_input.input = '\';
matlabbatch{3}.cfg_basicio.var_ops.cfg_named_input.name = 'subject';
matlabbatch{3}.cfg_basicio.var_ops.cfg_named_input.input = '<UNDEFINED>';
matlabbatch{4}.cfg_basicio.run_ops.call_matlab.inputs{1}.string = 'C:\Users\ohund\Documents\MATLAB\';
matlabbatch{4}.cfg_basicio.run_ops.call_matlab.inputs{2}.string(1) = cfg_dep('Named Input: subject_folder', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{4}.cfg_basicio.run_ops.call_matlab.outputs{1}.strtype.s = true;
matlabbatch{4}.cfg_basicio.run_ops.call_matlab.fun = 'append';
matlabbatch{5}.cfg_basicio.run_ops.runjobs.jobs = {'C:\Users\ohund\Documents\MATLAB\solo\level_0_0_configure.m'};
matlabbatch{5}.cfg_basicio.run_ops.runjobs.inputs{1}{1}.instr(1) = cfg_dep('Call MATLAB function: Call MATLAB: output 1 - strtype s', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','outputs', '{}',{1}));
matlabbatch{5}.cfg_basicio.run_ops.runjobs.inputs{1}{2}.instr(1) = cfg_dep('Named Input: subject', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{5}.cfg_basicio.run_ops.runjobs.save.dontsave = false;
matlabbatch{5}.cfg_basicio.run_ops.runjobs.missing = 'error';
matlabbatch{6}.cfg_basicio.run_ops.runjobs.jobs = {'C:\Users\ohund\Documents\MATLAB\solo\level_1_analysis.m'};
matlabbatch{6}.cfg_basicio.run_ops.runjobs.inputs{1}{1}.instr(1) = cfg_dep('Call MATLAB function: Call MATLAB: output 1 - strtype s', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','outputs', '{}',{1}));
matlabbatch{6}.cfg_basicio.run_ops.runjobs.inputs{1}{2}.instr(1) = cfg_dep('Named Input: subject', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{6}.cfg_basicio.run_ops.runjobs.save.dontsave = false;
matlabbatch{6}.cfg_basicio.run_ops.runjobs.missing = 'error';
matlabbatch{10-3}.cfg_basicio.run_ops.runjobs.jobs = {'C:\Users\ohund\Documents\MATLAB\solo\level_1_contrasts_dispersion.m'};
matlabbatch{10-3}.cfg_basicio.run_ops.runjobs.inputs{1}{1}.instr(1) = cfg_dep('Named Input: subject_folder', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{10-3}.cfg_basicio.run_ops.runjobs.inputs{1}{2}.instr(1) = cfg_dep('Named Input: subject', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{10-3}.cfg_basicio.run_ops.runjobs.save.dontsave = false;
matlabbatch{10-3}.cfg_basicio.run_ops.runjobs.missing = 'error';
