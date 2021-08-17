%-----------------------------------------------------------------------
% Job saved on 27-Apr-2021 01:05:57 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7487)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.spm.spatial.normalise.est.subj(1).vol = '<UNDEFINED>';
matlabbatch{1}.spm.spatial.normalise.est.subj(2).vol = '<UNDEFINED>';
matlabbatch{1}.spm.spatial.normalise.est.subj(3).vol = '<UNDEFINED>';
matlabbatch{1}.spm.spatial.normalise.est.subj(4).vol = '<UNDEFINED>';
matlabbatch{1}.spm.spatial.normalise.est.subj(5).vol = '<UNDEFINED>';
matlabbatch{1}.spm.spatial.normalise.est.eoptions.biasreg = 0.0001;
matlabbatch{1}.spm.spatial.normalise.est.eoptions.biasfwhm = 60;
matlabbatch{1}.spm.spatial.normalise.est.eoptions.tpm = {'C:\Users\ohund\Documents\MATLAB\spm12\tpm\TPM.nii'};
matlabbatch{1}.spm.spatial.normalise.est.eoptions.affreg = 'mni';
matlabbatch{1}.spm.spatial.normalise.est.eoptions.reg = [0 0.001 0.5 0.05 0.2];
matlabbatch{1}.spm.spatial.normalise.est.eoptions.fwhm = 0;
matlabbatch{1}.spm.spatial.normalise.est.eoptions.samp = 3;
matlabbatch{2}.spm.spatial.normalise.write.subj(1).def(1) = cfg_dep('Normalise: Estimate: Deformation (Subj 1)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','def'));
matlabbatch{2}.spm.spatial.normalise.write.subj(1).resample = '<UNDEFINED>';
matlabbatch{2}.spm.spatial.normalise.write.subj(2).def(1) = cfg_dep('Normalise: Estimate: Deformation (Subj 2)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{2}, '.','def'));
matlabbatch{2}.spm.spatial.normalise.write.subj(2).resample = '<UNDEFINED>';
matlabbatch{2}.spm.spatial.normalise.write.subj(3).def(1) = cfg_dep('Normalise: Estimate: Deformation (Subj 3)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{3}, '.','def'));
matlabbatch{2}.spm.spatial.normalise.write.subj(3).resample = '<UNDEFINED>';
matlabbatch{2}.spm.spatial.normalise.write.subj(4).def(1) = cfg_dep('Normalise: Estimate: Deformation (Subj 4)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{4}, '.','def'));
matlabbatch{2}.spm.spatial.normalise.write.subj(4).resample = '<UNDEFINED>';
matlabbatch{2}.spm.spatial.normalise.write.subj(5).def(1) = cfg_dep('Normalise: Estimate: Deformation (Subj 5)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{5}, '.','def'));
matlabbatch{2}.spm.spatial.normalise.write.subj(5).resample = '<UNDEFINED>';
matlabbatch{2}.spm.spatial.normalise.write.woptions.bb = [-78 -112 -70
                                                           78 76 85];
matlabbatch{2}.spm.spatial.normalise.write.woptions.vox = [2.9 2.9 3];
matlabbatch{2}.spm.spatial.normalise.write.woptions.interp = 4;
matlabbatch{2}.spm.spatial.normalise.write.woptions.prefix = 'n';
