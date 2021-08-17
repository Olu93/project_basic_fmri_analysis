%-----------------------------------------------------------------------
% Job saved on 07-May-2021 07:19:00 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7487)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.cfg_basicio.var_ops.cfg_named_input.name = 'subject_folder';
matlabbatch{1}.cfg_basicio.var_ops.cfg_named_input.input = 'subjects';
matlabbatch{2}.cfg_basicio.var_ops.cfg_named_input.name = 'seperator';
matlabbatch{2}.cfg_basicio.var_ops.cfg_named_input.input = '\';
matlabbatch{3}.cfg_basicio.var_ops.cfg_named_input.name = 'figures_folder';
matlabbatch{3}.cfg_basicio.var_ops.cfg_named_input.input = 'global_results';
matlabbatch{4}.cfg_basicio.run_ops.call_matlab.inputs{1}.string = 'C:\Users\ohund\Documents\MATLAB\';
matlabbatch{4}.cfg_basicio.run_ops.call_matlab.inputs{2}.string(1) = cfg_dep('Named Input: seperator', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{4}.cfg_basicio.run_ops.call_matlab.inputs{3}.string(1) = cfg_dep('Named Input: subject_folder', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{4}.cfg_basicio.run_ops.call_matlab.outputs{1}.filter.dir = true;
matlabbatch{4}.cfg_basicio.run_ops.call_matlab.fun = 'append';
matlabbatch{5}.cfg_basicio.run_ops.call_matlab.inputs{1}.string = 'C:\Users\ohund\Documents\MATLAB\';
matlabbatch{5}.cfg_basicio.run_ops.call_matlab.inputs{2}.string(1) = cfg_dep('Named Input: seperator', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{5}.cfg_basicio.run_ops.call_matlab.outputs{1}.filter.dir = true;
matlabbatch{5}.cfg_basicio.run_ops.call_matlab.fun = 'append';
matlabbatch{6}.cfg_basicio.file_dir.dir_ops.cfg_mkdir.parent(1) = cfg_dep('Figures Directory', substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','outputs', '{}',{1}));
matlabbatch{6}.cfg_basicio.file_dir.dir_ops.cfg_mkdir.name(1) = cfg_dep('Named Input: figures_folder', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{7}.cfg_basicio.file_dir.file_ops.file_fplist.dir(1) = cfg_dep('Search Directory', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','outputs', '{}',{1}));
matlabbatch{7}.cfg_basicio.file_dir.file_ops.file_fplist.filter = 'normed_.*';
matlabbatch{7}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPListRec';
matlabbatch{8}.spm.util.imcalc.input(1) = cfg_dep('File Selector (Batch Mode): Selected Files (normed_.*)', substruct('.','val', '{}',{7}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{8}.spm.util.imcalc.output = 'mean_anatomical';
matlabbatch{8}.spm.util.imcalc.outdir(1) = cfg_dep('Make Directory:''anat''', substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dir'));
matlabbatch{8}.spm.util.imcalc.expression = 'sum(X)/length(X)';
matlabbatch{8}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{8}.spm.util.imcalc.options.dmtx = 1;
matlabbatch{8}.spm.util.imcalc.options.mask = 0;
matlabbatch{8}.spm.util.imcalc.options.interp = 1;
matlabbatch{8}.spm.util.imcalc.options.dtype = 64;
matlabbatch{9}.spm.util.disp.data(1) = cfg_dep('Image Calculator: ImCalc Computed Image: mean_anatomical', substruct('.','val', '{}',{8}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
