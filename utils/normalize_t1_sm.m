%-----------------------------------------------------------------------
% Job saved on 24-Apr-2021 00:58:03 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7487)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.spm.spatial.normalise.write.subj(1).def = {'C:\Users\ohund\Documents\MATLAB\subjects\sub01\sub01_t1\y_sub01_t1-0001.nii'};
matlabbatch{1}.spm.spatial.normalise.write.subj(1).resample = {'C:\Users\ohund\Documents\MATLAB\subjects\sub01\sub01_t1\sub01_t1-0001.nii,1'};
matlabbatch{1}.spm.spatial.normalise.write.subj(2).def = {'C:\Users\ohund\Documents\MATLAB\subjects\sub02\sub02_t1\y_sub02_t1-0001.nii'};
matlabbatch{1}.spm.spatial.normalise.write.subj(2).resample = {'C:\Users\ohund\Documents\MATLAB\subjects\sub02\sub02_t1\sub02_t1-0001.nii,1'};
matlabbatch{1}.spm.spatial.normalise.write.subj(3).def = {'C:\Users\ohund\Documents\MATLAB\subjects\sub03\sub03_t1\y_sub03_t1-0001.nii'};
matlabbatch{1}.spm.spatial.normalise.write.subj(3).resample = {'C:\Users\ohund\Documents\MATLAB\subjects\sub03\sub03_t1\sub03_t1-0001.nii,1'};
matlabbatch{1}.spm.spatial.normalise.write.woptions.bb = [-78 -112 -70
                                                          78 76 85];
matlabbatch{1}.spm.spatial.normalise.write.woptions.vox = [1 1 1];
matlabbatch{1}.spm.spatial.normalise.write.woptions.interp = 4;
matlabbatch{1}.spm.spatial.normalise.write.woptions.prefix = 'w';
matlabbatch{2}.spm.util.imcalc.input(1) = cfg_dep('Normalise: Write: Normalised Images (Subj 1)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','files'));
matlabbatch{2}.spm.util.imcalc.input(2) = cfg_dep('Normalise: Write: Normalised Images (Subj 2)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{2}, '.','files'));
matlabbatch{2}.spm.util.imcalc.input(3) = cfg_dep('Normalise: Write: Normalised Images (Subj 3)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{3}, '.','files'));
matlabbatch{2}.spm.util.imcalc.output = 'mean_anatomical_image_sm';
matlabbatch{2}.spm.util.imcalc.outdir = {'C:\Users\ohund\Documents\MATLAB\figures'};
matlabbatch{2}.spm.util.imcalc.expression = 'sum(X)/length(X)';
matlabbatch{2}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{2}.spm.util.imcalc.options.dmtx = 1;
matlabbatch{2}.spm.util.imcalc.options.mask = 0;
matlabbatch{2}.spm.util.imcalc.options.interp = 1;
matlabbatch{2}.spm.util.imcalc.options.dtype = 16;
matlabbatch{3}.spm.util.disp.data(1) = cfg_dep('Image Calculator: ImCalc Computed Image: mean_anatomical_image', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
