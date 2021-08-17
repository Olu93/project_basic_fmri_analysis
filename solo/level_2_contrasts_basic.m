%-----------------------------------------------------------------------
% Job saved on 25-Apr-2021 17:21:56 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7487)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
root_dir = 'C:\Users\ohund\Documents\MATLAB\';

seperator = '\';
results_folder = 'results';
subjects_dir_num = 1;
crr_len = 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'contrast_folder';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = '<UNDEFINED>';
% matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = 'feet';

crr_len = length(matlabbatch) +1;
sep_num = crr_len;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'seperator';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = seperator;

crr_len = length(matlabbatch) +1;
pattern_num = crr_len;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'pattern';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = '<UNDEFINED>';
% matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = 'con_0002';

c_type = 'basic';
crr_len = length(matlabbatch) +1;
results_folder_name = crr_len;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'results_folder';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = results_folder;
crr_len = length(matlabbatch) +1;
level_1_base_num = crr_len;
matlabbatch{crr_len}.cfg_basicio.file_dir.dir_ops.cfg_named_dir.name = 'level_1_base';
matlabbatch{crr_len}.cfg_basicio.file_dir.dir_ops.cfg_named_dir.dirs = {{'C:\Users\ohund\Documents\MATLAB\single_results'}};
crr_len = length(matlabbatch) +1;
level_2_base_num = crr_len;
matlabbatch{crr_len}.cfg_basicio.file_dir.dir_ops.cfg_named_dir.name = 'level_2_base';
matlabbatch{crr_len}.cfg_basicio.file_dir.dir_ops.cfg_named_dir.dirs = {{'C:\Users\ohund\Documents\MATLAB\global_results'}};
crr_len = length(matlabbatch) +1;
level_1_target_dir = crr_len;
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{1}.directory(1) = cfg_dep('Named Directory Selector: level_1_base(1)', substruct('.','val', '{}',{level_1_base_num}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{1}));
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{2}.string(1) = cfg_dep('Named Input: file_seperator', substruct('.','val', '{}',{sep_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{3}.string = c_type;
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.outputs{1}.filter.dir = true;
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.fun = 'append';
crr_len = length(matlabbatch) +1;
level_2_target_dir = crr_len;
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{1}.directory(1) = cfg_dep('Named Directory Selector: level_2_base(1)', substruct('.','val', '{}',{level_2_base_num}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{1}));
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{2}.string(1) = cfg_dep('Named Input: file_seperator', substruct('.','val', '{}',{sep_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{3}.string = c_type;
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{4}.string(1) = cfg_dep('Named Input: file_seperator', substruct('.','val', '{}',{sep_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{5}.string = cfg_dep('Named Input: file_seperator', substruct('.','val', '{}',{subjects_dir_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.outputs{1}.filter.dir = true;
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.fun = 'append';
crr_len = length(matlabbatch) +1;
selected_files_num = crr_len;
matlabbatch{crr_len}.cfg_basicio.file_dir.file_ops.file_fplist.dir(1) = cfg_dep('Named Directory Selector: level_1_base(1)', substruct('.','val', '{}',{level_1_target_dir}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','outputs', '{}',{1}));
matlabbatch{crr_len}.cfg_basicio.file_dir.file_ops.file_fplist.filter(1) = cfg_dep('Named Input: pattern', substruct('.','val', '{}',{pattern_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{crr_len}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPListRec';
crr_len = length(matlabbatch) +1;
t_design_num = crr_len;
matlabbatch{crr_len}.spm.stats.factorial_design.dir(1) = cfg_dep('Global results folder', substruct('.','val', '{}',{level_2_target_dir}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','outputs', '{}',{1}));
matlabbatch{crr_len}.spm.stats.factorial_design.des.t1.scans(1) = cfg_dep('File Selector (Batch Mode): Selected Files', substruct('.','val', '{}',{selected_files_num}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{crr_len}.spm.stats.factorial_design.cov = struct('c', {}, 'cname', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{crr_len}.spm.stats.factorial_design.multi_cov = struct('files', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{crr_len}.spm.stats.factorial_design.masking.tm.tm_none = 1;
matlabbatch{crr_len}.spm.stats.factorial_design.masking.im = 1;
matlabbatch{crr_len}.spm.stats.factorial_design.masking.em = {''};
matlabbatch{crr_len}.spm.stats.factorial_design.globalc.g_omit = 1;
matlabbatch{crr_len}.spm.stats.factorial_design.globalm.gmsca.gmsca_no = 1;
matlabbatch{crr_len}.spm.stats.factorial_design.globalm.glonorm = 1;
crr_len = length(matlabbatch) +1;
t_design_spec_design_num = crr_len;
matlabbatch{crr_len}.spm.stats.fmri_est.spmmat(1) = cfg_dep('Factorial design specification: SPM.mat File', substruct('.','val', '{}',{t_design_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{crr_len}.spm.stats.fmri_est.write_residuals = 0;
matlabbatch{crr_len}.spm.stats.fmri_est.method.Classical = 1;
crr_len = length(matlabbatch) +1;
t_design_spec_estimation = crr_len;
matlabbatch{crr_len}.spm.stats.con.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{t_design_spec_design_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{crr_len}.spm.stats.con.consess{1}.tcon.name = 'One-Sample T-Test';
matlabbatch{crr_len}.spm.stats.con.consess{1}.tcon.weights = 1;
matlabbatch{crr_len}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{crr_len}.spm.stats.con.delete = 0;
crr_len = length(matlabbatch) +1;
matlabbatch{crr_len}.spm.stats.results.spmmat(1) = cfg_dep('Contrast Manager: SPM.mat File', substruct('.','val', '{}',{t_design_spec_estimation}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{crr_len}.spm.stats.results.conspec.titlestr = '';
matlabbatch{crr_len}.spm.stats.results.conspec.contrasts = Inf;
matlabbatch{crr_len}.spm.stats.results.conspec.threshdesc = 'FWE';
matlabbatch{crr_len}.spm.stats.results.conspec.thresh = 0.05;
matlabbatch{crr_len}.spm.stats.results.conspec.extent = 0;
matlabbatch{crr_len}.spm.stats.results.conspec.conjunction = 1;
matlabbatch{crr_len}.spm.stats.results.conspec.mask.none = 1;
matlabbatch{crr_len}.spm.stats.results.units = 1;
matlabbatch{crr_len}.spm.stats.results.export{1}.png = true;
