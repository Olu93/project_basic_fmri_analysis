%-----------------------------------------------------------------------
% Job saved on 26-Apr-2021 18:45:53 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7487)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------

matlabbatch{1}.cfg_basicio.var_ops.load_vars.matname = {'C:\Users\ohund\Documents\MATLAB\mini_preprocessing_steps\sub01\_all_files.mat'};
matlabbatch{1}.cfg_basicio.var_ops.load_vars.loadvars.allvars = true;
matlabbatch{2}.cfg_basicio.var_ops.subsrefvar.input(1) = cfg_dep('Load Variables from .mat File: Loaded Variables (struct)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('{}',{1}));
matlabbatch{2}.cfg_basicio.var_ops.subsrefvar.subsreference{1}.subsfield = 'svar';
matlabbatch{2}.cfg_basicio.var_ops.subsrefvar.subsreference{2}.subsfield = 'feet';
matlabbatch{2}.cfg_basicio.var_ops.subsrefvar.tgt_spec.nifti{1}.name = 'filter';
matlabbatch{2}.cfg_basicio.var_ops.subsrefvar.tgt_spec.nifti{1}.value = 'image';
matlabbatch{3}.cfg_basicio.var_ops.subsrefvar.input(1) = cfg_dep('Load Variables from .mat File: Loaded Variables (struct)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('{}',{1}));
matlabbatch{3}.cfg_basicio.var_ops.subsrefvar.subsreference{1}.subsfield = 'svar';
matlabbatch{3}.cfg_basicio.var_ops.subsrefvar.subsreference{2}.subsfield = 'l_hand';
matlabbatch{3}.cfg_basicio.var_ops.subsrefvar.tgt_spec.nifti{1}.name = 'filter';
matlabbatch{3}.cfg_basicio.var_ops.subsrefvar.tgt_spec.nifti{1}.value = 'image';
matlabbatch{4}.cfg_basicio.var_ops.subsrefvar.input(1) = cfg_dep('Load Variables from .mat File: Loaded Variables (struct)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('{}',{1}));
matlabbatch{4}.cfg_basicio.var_ops.subsrefvar.subsreference{1}.subsfield = 'svar';
matlabbatch{4}.cfg_basicio.var_ops.subsrefvar.subsreference{2}.subsfield = 'r_hand';
matlabbatch{4}.cfg_basicio.var_ops.subsrefvar.tgt_spec.nifti{1}.name = 'filter';
matlabbatch{4}.cfg_basicio.var_ops.subsrefvar.tgt_spec.nifti{1}.value = 'image';
matlabbatch{5}.cfg_basicio.var_ops.subsrefvar.input(1) = cfg_dep('Load Variables from .mat File: Loaded Variables (struct)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('{}',{1}));
matlabbatch{5}.cfg_basicio.var_ops.subsrefvar.subsreference{1}.subsfield = 'svar';
matlabbatch{5}.cfg_basicio.var_ops.subsrefvar.subsreference{2}.subsfield = 'tongue';
matlabbatch{5}.cfg_basicio.var_ops.subsrefvar.tgt_spec.nifti{1}.name = 'filter';
matlabbatch{5}.cfg_basicio.var_ops.subsrefvar.tgt_spec.nifti{1}.value = 'image';
matlabbatch{6}.spm.spatial.realign.estwrite.data{1}(1) = cfg_dep('Access part of MATLAB variable: val.svar.feet', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{6}.spm.spatial.realign.estwrite.data{2}(1) = cfg_dep('Access part of MATLAB variable: val.svar.l_hand', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{6}.spm.spatial.realign.estwrite.data{3}(1) = cfg_dep('Access part of MATLAB variable: val.svar.r_hand', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{6}.spm.spatial.realign.estwrite.data{4}(1) = cfg_dep('Access part of MATLAB variable: val.svar.tongue', substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{6}.spm.spatial.realign.estwrite.eoptions.quality = 0.9;
matlabbatch{6}.spm.spatial.realign.estwrite.eoptions.sep = 2.5;
matlabbatch{6}.spm.spatial.realign.estwrite.eoptions.fwhm = 5;
matlabbatch{6}.spm.spatial.realign.estwrite.eoptions.rtm = 1;
matlabbatch{6}.spm.spatial.realign.estwrite.eoptions.interp = 2;
matlabbatch{6}.spm.spatial.realign.estwrite.eoptions.wrap = [0 0 0];
matlabbatch{6}.spm.spatial.realign.estwrite.eoptions.weight = '';
matlabbatch{6}.spm.spatial.realign.estwrite.roptions.which = [2 1];
matlabbatch{6}.spm.spatial.realign.estwrite.roptions.interp = 4;
matlabbatch{6}.spm.spatial.realign.estwrite.roptions.wrap = [0 0 0];
matlabbatch{6}.spm.spatial.realign.estwrite.roptions.mask = 1;
matlabbatch{6}.spm.spatial.realign.estwrite.roptions.prefix = 'r_';
