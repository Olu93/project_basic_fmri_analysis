%-----------------------------------------------------------------------
% Job saved on 15-May-2021 02:47:00 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7487)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.cfg_basicio.var_ops.cfg_named_input.name = 'contrast_folder';
matlabbatch{1}.cfg_basicio.var_ops.cfg_named_input.input = 'feet_dispersion';
matlabbatch{2}.cfg_basicio.var_ops.cfg_named_input.name = 'seperator';
matlabbatch{2}.cfg_basicio.var_ops.cfg_named_input.input = '\';
matlabbatch{3}.cfg_basicio.var_ops.cfg_named_input.name = 'pattern';
matlabbatch{3}.cfg_basicio.var_ops.cfg_named_input.input = 'con_0030';
matlabbatch{4}.cfg_basicio.var_ops.cfg_named_input.name = 'results_folder';
matlabbatch{4}.cfg_basicio.var_ops.cfg_named_input.input = 'results';
matlabbatch{5}.cfg_basicio.file_dir.dir_ops.cfg_named_dir.name = 'level_1_base';
matlabbatch{5}.cfg_basicio.file_dir.dir_ops.cfg_named_dir.dirs = {{'C:\Users\ohund\Documents\MATLAB\single_results'}};
matlabbatch{6}.cfg_basicio.file_dir.dir_ops.cfg_named_dir.name = 'level_2_base';
matlabbatch{6}.cfg_basicio.file_dir.dir_ops.cfg_named_dir.dirs = {{'C:\Users\ohund\Documents\MATLAB\global_results'}};
matlabbatch{7}.cfg_basicio.run_ops.call_matlab.inputs{1}.directory(1) = cfg_dep('Named Directory Selector: level_1_base(1)', substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{1}));
matlabbatch{7}.cfg_basicio.run_ops.call_matlab.inputs{2}.string(1) = cfg_dep('Named Input: file_seperator', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{7}.cfg_basicio.run_ops.call_matlab.inputs{3}.string = 'dispersion';
matlabbatch{7}.cfg_basicio.run_ops.call_matlab.outputs{1}.filter.dir = true;
matlabbatch{7}.cfg_basicio.run_ops.call_matlab.fun = 'append';
matlabbatch{8}.cfg_basicio.run_ops.call_matlab.inputs{1}.directory(1) = cfg_dep('Named Directory Selector: level_2_base(1)', substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{1}));
matlabbatch{8}.cfg_basicio.run_ops.call_matlab.inputs{2}.string(1) = cfg_dep('Named Input: file_seperator', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{8}.cfg_basicio.run_ops.call_matlab.inputs{3}.string = 'dispersion_masked';
matlabbatch{8}.cfg_basicio.run_ops.call_matlab.inputs{4}.string(1) = cfg_dep('Named Input: file_seperator', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{8}.cfg_basicio.run_ops.call_matlab.inputs{5}.string(1) = cfg_dep('Named Input: file_seperator', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{8}.cfg_basicio.run_ops.call_matlab.outputs{1}.filter.dir = true;
matlabbatch{8}.cfg_basicio.run_ops.call_matlab.fun = 'append';
matlabbatch{9}.cfg_basicio.file_dir.file_ops.file_fplist.dir(1) = cfg_dep('Named Directory Selector: level_1_base(1)', substruct('.','val', '{}',{7}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','outputs', '{}',{1}));
matlabbatch{9}.cfg_basicio.file_dir.file_ops.file_fplist.filter(1) = cfg_dep('Named Input: pattern', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{9}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPListRec';
matlabbatch{10}.spm.stats.factorial_design.dir(1) = cfg_dep('Global results folder', substruct('.','val', '{}',{8}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','outputs', '{}',{1}));
matlabbatch{10}.spm.stats.factorial_design.des.t1.scans(1) = cfg_dep('File Selector (Batch Mode): Selected Files', substruct('.','val', '{}',{9}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{10}.spm.stats.factorial_design.cov = struct('c', {}, 'cname', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{10}.spm.stats.factorial_design.multi_cov = struct('files', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{10}.spm.stats.factorial_design.masking.tm.tm_none = 1;
matlabbatch{10}.spm.stats.factorial_design.masking.im = 1;
matlabbatch{10}.spm.stats.factorial_design.masking.em = {'C:\Users\ohund\Documents\MATLAB\masks\brodmann_sensori_motor_mask.nii,1'};
matlabbatch{10}.spm.stats.factorial_design.globalc.g_omit = 1;
matlabbatch{10}.spm.stats.factorial_design.globalm.gmsca.gmsca_no = 1;
matlabbatch{10}.spm.stats.factorial_design.globalm.glonorm = 1;
matlabbatch{11}.spm.stats.fmri_est.spmmat(1) = cfg_dep('Factorial design specification: SPM.mat File', substruct('.','val', '{}',{10}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{11}.spm.stats.fmri_est.write_residuals = 0;
matlabbatch{11}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{12}.spm.stats.con.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{11}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{12}.spm.stats.con.consess{1}.tcon.name = 'One-Sample T-Test';
matlabbatch{12}.spm.stats.con.consess{1}.tcon.weights = 1;
matlabbatch{12}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{12}.spm.stats.con.delete = 0;
matlabbatch{13}.spm.stats.results.spmmat(1) = cfg_dep('Contrast Manager: SPM.mat File', substruct('.','val', '{}',{12}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{13}.spm.stats.results.conspec.titlestr = '';
matlabbatch{13}.spm.stats.results.conspec.contrasts = Inf;
matlabbatch{13}.spm.stats.results.conspec.threshdesc = 'FWE';
matlabbatch{13}.spm.stats.results.conspec.thresh = 0.05;
matlabbatch{13}.spm.stats.results.conspec.extent = 0;
matlabbatch{13}.spm.stats.results.conspec.conjunction = 1;
matlabbatch{13}.spm.stats.results.conspec.mask.none = 1;
matlabbatch{13}.spm.stats.results.units = 1;
matlabbatch{13}.spm.stats.results.export{1}.png = true;
