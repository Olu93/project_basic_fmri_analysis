root_dir = 'C:\Users\ohund\Documents\MATLAB\';

seperator = '\';
results_folder = 'results';
subjects_dir_num = 1;
crr_len = 1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'subject_folder';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = '<UNDEFINED>';
% matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = 'subjects';

crr_len = length(matlabbatch) +1;
sep_num = crr_len;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'seperator';
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = seperator;

crr_len = length(matlabbatch) +1;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.name = 'figures_folder';
figures_dir_num = crr_len;
matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = '<UNDEFINED>';
% matlabbatch{crr_len}.cfg_basicio.var_ops.cfg_named_input.input = 'global_results';

crr_len = length(matlabbatch) +1;
search_dir_num = crr_len;
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{1}.string = root_dir;
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{2}.string(1) = cfg_dep('Named Input: seperator', substruct('.','val', '{}',{sep_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{3}.string(1) = cfg_dep('Named Input: subject_folder', substruct('.','val', '{}',{subjects_dir_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.outputs{1}.filter.dir = true;
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.fun = 'append';

crr_len = length(matlabbatch) +1;
target_dir_num = crr_len;
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{1}.string = root_dir;
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.inputs{2}.string(1) = cfg_dep('Named Input: seperator', substruct('.','val', '{}',{sep_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.outputs{1}.filter.dir = true;
matlabbatch{crr_len}.cfg_basicio.run_ops.call_matlab.fun = 'append';

crr_len = length(matlabbatch) +1;
output_dir_num = crr_len;
matlabbatch{crr_len}.cfg_basicio.file_dir.dir_ops.cfg_mkdir.parent(1) = cfg_dep('Figures Directory', substruct('.','val', '{}',{target_dir_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','outputs', '{}',{1}));
matlabbatch{crr_len}.cfg_basicio.file_dir.dir_ops.cfg_mkdir.name = cfg_dep('Named Input: figures_folder', substruct('.','val', '{}',{figures_dir_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));


crr_len = length(matlabbatch) +1;
found_images_num = crr_len;
matlabbatch{crr_len}.cfg_basicio.file_dir.file_ops.file_fplist.dir(1) = cfg_dep('Search Directory', substruct('.','val', '{}',{search_dir_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','outputs', '{}',{1}));
matlabbatch{crr_len}.cfg_basicio.file_dir.file_ops.file_fplist.filter = 'normed_.*';
matlabbatch{crr_len}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPListRec';


crr_len = length(matlabbatch) +1;
calculated_mean_num = crr_len;
matlabbatch{crr_len}.spm.util.imcalc.input(1) = cfg_dep('File Selector (Batch Mode): Selected Files (normed_.*)', substruct('.','val', '{}',{found_images_num}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{crr_len}.spm.util.imcalc.output = 'mean_anatomical';
matlabbatch{crr_len}.spm.util.imcalc.outdir(1) = cfg_dep('Make Directory:''anat''', substruct('.','val', '{}',{output_dir_num}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dir'));
matlabbatch{crr_len}.spm.util.imcalc.expression = 'sum(X)/length(X)';
matlabbatch{crr_len}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{crr_len}.spm.util.imcalc.options.dmtx = 1;
matlabbatch{crr_len}.spm.util.imcalc.options.mask = 0;
matlabbatch{crr_len}.spm.util.imcalc.options.interp = 1;
matlabbatch{crr_len}.spm.util.imcalc.options.dtype = 64;

crr_len = length(matlabbatch) +1;
matlabbatch{crr_len}.spm.util.disp.data(1) = cfg_dep('Image Calculator: ImCalc Computed Image: mean_anatomical', substruct('.','val', '{}',{calculated_mean_num}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));