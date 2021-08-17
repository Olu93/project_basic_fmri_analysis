%-----------------------------------------------------------------------
% Job saved on 29-Apr-2021 03:57:29 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7487)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.cfg_basicio.var_ops.cfg_named_input.name = 'root';
matlabbatch{1}.cfg_basicio.var_ops.cfg_named_input.input = '<UNDEFINED>';
matlabbatch{2}.cfg_basicio.var_ops.cfg_named_input.name = 'seperator';
matlabbatch{2}.cfg_basicio.var_ops.cfg_named_input.input = '\';
matlabbatch{3}.cfg_basicio.var_ops.cfg_named_input.name = 'subject';
matlabbatch{3}.cfg_basicio.var_ops.cfg_named_input.input = '<UNDEFINED>';
matlabbatch{4}.cfg_basicio.run_ops.call_matlab.inputs{1}.string(1) = cfg_dep('Named Input: root', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{4}.cfg_basicio.run_ops.call_matlab.inputs{2}.string(1) = cfg_dep('Named Input: seperator', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{4}.cfg_basicio.run_ops.call_matlab.outputs{1}.filter.dir = true;
matlabbatch{4}.cfg_basicio.run_ops.call_matlab.fun = 'append';
matlabbatch{5}.cfg_basicio.run_ops.call_matlab.inputs{1}.string(1) = cfg_dep('Named Input: root', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{5}.cfg_basicio.run_ops.call_matlab.inputs{2}.string(1) = cfg_dep('Named Input: seperator', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{5}.cfg_basicio.run_ops.call_matlab.inputs{3}.string = 'helper\gen_1_files.m';
matlabbatch{5}.cfg_basicio.run_ops.call_matlab.outputs{1}.filter.batch = true;
matlabbatch{5}.cfg_basicio.run_ops.call_matlab.fun = 'append';
matlabbatch{6}.cfg_basicio.var_ops.cfg_named_input.name = 'config_file';
matlabbatch{6}.cfg_basicio.var_ops.cfg_named_input.input = '_all_files.mat';
matlabbatch{7}.cfg_basicio.run_ops.call_matlab.inputs{1}.string(1) = cfg_dep('Named Input: root', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{7}.cfg_basicio.run_ops.call_matlab.inputs{2}.string(1) = cfg_dep('Named Input: seperator', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{7}.cfg_basicio.run_ops.call_matlab.inputs{3}.string(1) = cfg_dep('Named Input: subject', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{7}.cfg_basicio.run_ops.call_matlab.inputs{4}.string(1) = cfg_dep('Named Input: seperator', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{7}.cfg_basicio.run_ops.call_matlab.inputs{5}.string(1) = cfg_dep('Named Input: config_file', substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{7}.cfg_basicio.run_ops.call_matlab.outputs{1}.filter.batch = true;
matlabbatch{7}.cfg_basicio.run_ops.call_matlab.fun = 'append';
matlabbatch{8}.cfg_basicio.run_ops.call_matlab.inputs{1}.string(1) = cfg_dep('Named Input: root', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{8}.cfg_basicio.run_ops.call_matlab.inputs{2}.string(1) = cfg_dep('Named Input: seperator', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{8}.cfg_basicio.run_ops.call_matlab.inputs{3}.string(1) = cfg_dep('Named Input: subject', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{8}.cfg_basicio.run_ops.call_matlab.inputs{4}.string(1) = cfg_dep('Named Input: seperator', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{8}.cfg_basicio.run_ops.call_matlab.inputs{5}.string(1) = cfg_dep('Named Input: config_file', substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{8}.cfg_basicio.run_ops.call_matlab.outputs{1}.filter.mat = true;
matlabbatch{8}.cfg_basicio.run_ops.call_matlab.fun = 'append';
matlabbatch{9}.cfg_basicio.var_ops.load_vars.matname(1) = cfg_dep('Call MATLAB function: Call MATLAB: output 1 - filter mat', substruct('.','val', '{}',{8}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','outputs', '{}',{1}));
matlabbatch{9}.cfg_basicio.var_ops.load_vars.loadvars.allvars = true;
matlabbatch{10}.cfg_basicio.var_ops.subsrefvar.input(1) = cfg_dep('Load Variables from .mat File: Loaded Variables (struct)', substruct('.','val', '{}',{9}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('{}',{1}));
matlabbatch{10}.cfg_basicio.var_ops.subsrefvar.subsreference{1}.subsfield = 'svar';
matlabbatch{10}.cfg_basicio.var_ops.subsrefvar.subsreference{2}.subsfield = 'feet';
matlabbatch{10}.cfg_basicio.var_ops.subsrefvar.tgt_spec.nifti{1}.name = 'filter';
matlabbatch{10}.cfg_basicio.var_ops.subsrefvar.tgt_spec.nifti{1}.value = 'image';
matlabbatch{11}.cfg_basicio.var_ops.subsrefvar.input(1) = cfg_dep('Load Variables from .mat File: Loaded Variables (struct)', substruct('.','val', '{}',{9}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('{}',{1}));
matlabbatch{11}.cfg_basicio.var_ops.subsrefvar.subsreference{1}.subsfield = 'svar';
matlabbatch{11}.cfg_basicio.var_ops.subsrefvar.subsreference{2}.subsfield = 'l_hand';
matlabbatch{11}.cfg_basicio.var_ops.subsrefvar.tgt_spec.nifti{1}.name = 'filter';
matlabbatch{11}.cfg_basicio.var_ops.subsrefvar.tgt_spec.nifti{1}.value = 'image';
matlabbatch{12}.cfg_basicio.var_ops.subsrefvar.input(1) = cfg_dep('Load Variables from .mat File: Loaded Variables (struct)', substruct('.','val', '{}',{9}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('{}',{1}));
matlabbatch{12}.cfg_basicio.var_ops.subsrefvar.subsreference{1}.subsfield = 'svar';
matlabbatch{12}.cfg_basicio.var_ops.subsrefvar.subsreference{2}.subsfield = 'r_hand';
matlabbatch{12}.cfg_basicio.var_ops.subsrefvar.tgt_spec.nifti{1}.name = 'filter';
matlabbatch{12}.cfg_basicio.var_ops.subsrefvar.tgt_spec.nifti{1}.value = 'image';
matlabbatch{13}.cfg_basicio.var_ops.subsrefvar.input(1) = cfg_dep('Load Variables from .mat File: Loaded Variables (struct)', substruct('.','val', '{}',{9}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('{}',{1}));
matlabbatch{13}.cfg_basicio.var_ops.subsrefvar.subsreference{1}.subsfield = 'svar';
matlabbatch{13}.cfg_basicio.var_ops.subsrefvar.subsreference{2}.subsfield = 'tongue';
matlabbatch{13}.cfg_basicio.var_ops.subsrefvar.tgt_spec.nifti{1}.name = 'filter';
matlabbatch{13}.cfg_basicio.var_ops.subsrefvar.tgt_spec.nifti{1}.value = 'image';
matlabbatch{14}.cfg_basicio.var_ops.subsrefvar.input(1) = cfg_dep('Load Variables from .mat File: Loaded Variables (struct)', substruct('.','val', '{}',{9}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('{}',{1}));
matlabbatch{14}.cfg_basicio.var_ops.subsrefvar.subsreference{1}.subsfield = 'svar';
matlabbatch{14}.cfg_basicio.var_ops.subsrefvar.subsreference{2}.subsfield = 'resting_state';
matlabbatch{14}.cfg_basicio.var_ops.subsrefvar.tgt_spec.nifti{1}.name = 'filter';
matlabbatch{14}.cfg_basicio.var_ops.subsrefvar.tgt_spec.nifti{1}.value = 'image';
matlabbatch{15}.cfg_basicio.var_ops.subsrefvar.input(1) = cfg_dep('Load Variables from .mat File: Loaded Variables (struct)', substruct('.','val', '{}',{9}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('{}',{1}));
matlabbatch{15}.cfg_basicio.var_ops.subsrefvar.subsreference{1}.subsfield = 'svar';
matlabbatch{15}.cfg_basicio.var_ops.subsrefvar.subsreference{2}.subsfield = 't1';
matlabbatch{15}.cfg_basicio.var_ops.subsrefvar.tgt_spec.nifti{1}.name = 'filter';
matlabbatch{15}.cfg_basicio.var_ops.subsrefvar.tgt_spec.nifti{1}.value = 'image';
matlabbatch{16}.spm.spatial.realign.estwrite.data{1}(1) = cfg_dep('Access part of MATLAB variable: val.svar.feet', substruct('.','val', '{}',{10}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{16}.spm.spatial.realign.estwrite.data{2}(1) = cfg_dep('Access part of MATLAB variable: val.svar.l_hand', substruct('.','val', '{}',{11}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{16}.spm.spatial.realign.estwrite.data{3}(1) = cfg_dep('Access part of MATLAB variable: val.svar.r_hand', substruct('.','val', '{}',{12}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{16}.spm.spatial.realign.estwrite.data{4}(1) = cfg_dep('Access part of MATLAB variable: val.svar.tongue', substruct('.','val', '{}',{13}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{16}.spm.spatial.realign.estwrite.data{5}(1) = cfg_dep('Access part of MATLAB variable: val.svar.resting_state', substruct('.','val', '{}',{14}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{16}.spm.spatial.realign.estwrite.eoptions.quality = 0.9;
matlabbatch{16}.spm.spatial.realign.estwrite.eoptions.sep = 2.5;
matlabbatch{16}.spm.spatial.realign.estwrite.eoptions.fwhm = 5;
matlabbatch{16}.spm.spatial.realign.estwrite.eoptions.rtm = 1;
matlabbatch{16}.spm.spatial.realign.estwrite.eoptions.interp = 2;
matlabbatch{16}.spm.spatial.realign.estwrite.eoptions.wrap = [0 0 0];
matlabbatch{16}.spm.spatial.realign.estwrite.eoptions.weight = '';
matlabbatch{16}.spm.spatial.realign.estwrite.roptions.which = [2 1];
matlabbatch{16}.spm.spatial.realign.estwrite.roptions.interp = 4;
matlabbatch{16}.spm.spatial.realign.estwrite.roptions.wrap = [0 0 0];
matlabbatch{16}.spm.spatial.realign.estwrite.roptions.mask = 1;
matlabbatch{16}.spm.spatial.realign.estwrite.roptions.prefix = 'r_';
matlabbatch{17}.cfg_basicio.var_ops.subsrefvar.input(1) = cfg_dep('Load Variables from .mat File: Loaded Variables (struct)', substruct('.','val', '{}',{9}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('{}',{1}));
matlabbatch{17}.cfg_basicio.var_ops.subsrefvar.subsreference{1}.subsfield = 'svar';
matlabbatch{17}.cfg_basicio.var_ops.subsrefvar.subsreference{2}.subsfield = 'feet';
matlabbatch{17}.cfg_basicio.var_ops.subsrefvar.subsreference{3}.subsinda = {1};
matlabbatch{17}.cfg_basicio.var_ops.subsrefvar.tgt_spec.nifti{1}.name = 'filter';
matlabbatch{17}.cfg_basicio.var_ops.subsrefvar.tgt_spec.nifti{1}.value = 'image';
matlabbatch{18}.cfg_basicio.var_ops.subsrefvar.input(1) = cfg_dep('Realign: Estimate & Reslice: Resliced Images (Sess 1)', substruct('.','val', '{}',{16}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{1}, '.','rfiles'));
matlabbatch{18}.cfg_basicio.var_ops.subsrefvar.subsreference{1}.subsinda = {1};
matlabbatch{18}.cfg_basicio.var_ops.subsrefvar.tgt_spec.nifti{1}.name = 'filter';
matlabbatch{18}.cfg_basicio.var_ops.subsrefvar.tgt_spec.nifti{1}.value = 'image';
matlabbatch{19}.spm.util.checkreg.data(1) = cfg_dep('Realign: Estimate & Reslice: Mean Image', substruct('.','val', '{}',{16}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','rmean'));
matlabbatch{19}.spm.util.checkreg.data(2) = cfg_dep('Access part of MATLAB variable: val.svar.feet(1)', substruct('.','val', '{}',{17}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{19}.spm.util.checkreg.data(3) = cfg_dep('Access part of MATLAB variable: val(1)', substruct('.','val', '{}',{18}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
