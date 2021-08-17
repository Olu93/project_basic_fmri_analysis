%-----------------------------------------------------------------------
% Job saved on 24-Apr-2021 17:47:38 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7487)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.cfg_basicio.var_ops.cfg_named_input.name = 'str_t1';
matlabbatch{1}.cfg_basicio.var_ops.cfg_named_input.input = 't1';
matlabbatch{2}.spm.spatial.coreg.estimate.ref = {'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\meansub01_feet-0001.nii,1'};
matlabbatch{2}.spm.spatial.coreg.estimate.source = {'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_t1\sub01_t1-0001.nii,1'};
matlabbatch{2}.spm.spatial.coreg.estimate.other = {''};
matlabbatch{2}.spm.spatial.coreg.estimate.eoptions.cost_fun = 'nmi';
matlabbatch{2}.spm.spatial.coreg.estimate.eoptions.sep = [4 2];
matlabbatch{2}.spm.spatial.coreg.estimate.eoptions.tol = [0.02 0.02 0.02 0.001 0.001 0.001 0.01 0.01 0.01 0.001 0.001 0.001];
matlabbatch{2}.spm.spatial.coreg.estimate.eoptions.fwhm = [7 7];
matlabbatch{3}.spm.spatial.normalise.est.subj.vol(1) = cfg_dep('Coregister: Estimate: Coregistered Images', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','cfiles'));
matlabbatch{3}.spm.spatial.normalise.est.eoptions.biasreg = 0.0001;
matlabbatch{3}.spm.spatial.normalise.est.eoptions.biasfwhm = 60;
matlabbatch{3}.spm.spatial.normalise.est.eoptions.tpm = {'C:\Users\ohund\Documents\MATLAB\spm12\tpm\TPM.nii'};
matlabbatch{3}.spm.spatial.normalise.est.eoptions.affreg = 'mni';
matlabbatch{3}.spm.spatial.normalise.est.eoptions.reg = [0 0.001 0.5 0.05 0.2];
matlabbatch{3}.spm.spatial.normalise.est.eoptions.fwhm = 0;
matlabbatch{3}.spm.spatial.normalise.est.eoptions.samp = 2;
matlabbatch{4}.spm.spatial.normalise.write.subj.def(1) = cfg_dep('Normalise: Estimate: Deformation (Subj 1)', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','def'));
%%
matlabbatch{4}.spm.spatial.normalise.write.subj.resample = {
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0001.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0002.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0003.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0004.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0005.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0006.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0007.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0008.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0009.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0010.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0011.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0012.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0013.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0014.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0015.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0016.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0017.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0018.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0019.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0020.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0021.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0022.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0023.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0024.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0025.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0026.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0027.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0028.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0029.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0030.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0031.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0032.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0033.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0034.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0035.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0036.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0037.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0038.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0039.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0040.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0041.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0042.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0043.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0044.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0045.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0046.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0047.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0048.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0049.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0050.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0051.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0052.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0053.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0054.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0055.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0056.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0057.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0058.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0059.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0060.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0061.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0062.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0063.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0064.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0065.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0066.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0067.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0068.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0069.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0070.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0071.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0072.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0073.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0074.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0075.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0076.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0077.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0078.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0079.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0080.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0081.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0082.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0083.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0084.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0085.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0086.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0087.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0088.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0089.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0090.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0091.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0092.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0093.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0094.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0095.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0096.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0097.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0098.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0099.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0100.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0101.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0102.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0103.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0104.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0105.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0106.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0107.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0108.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0109.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0110.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0111.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0112.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0113.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0114.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0115.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0116.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0117.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0118.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0119.nii,1'
                                                             'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01_feet\r_sub01_feet-0120.nii,1'
                                                             };
%%
matlabbatch{4}.spm.spatial.normalise.write.woptions.bb = [-78 -112 -70
                                                           78 76 85];
matlabbatch{4}.spm.spatial.normalise.write.woptions.vox = [2.9 2.9 3];
matlabbatch{4}.spm.spatial.normalise.write.woptions.interp = 5;
matlabbatch{4}.spm.spatial.normalise.write.woptions.prefix = 'n';
