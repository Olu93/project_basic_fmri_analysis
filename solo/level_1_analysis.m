%-----------------------------------------------------------------------
% Job saved on 05-May-2021 02:29:25 by cfg_util (rev $Rev: 7345 $)
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
matlabbatch{5}.cfg_basicio.run_ops.call_matlab.inputs{3}.string(1) = cfg_dep('Named Input: subject', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{5}.cfg_basicio.run_ops.call_matlab.inputs{4}.string(1) = cfg_dep('Named Input: seperator', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{5}.cfg_basicio.run_ops.call_matlab.inputs{5}.string = 'single_results';
matlabbatch{5}.cfg_basicio.run_ops.call_matlab.outputs{1}.filter.dir = true;
matlabbatch{5}.cfg_basicio.run_ops.call_matlab.fun = 'append';
matlabbatch{6}.cfg_basicio.var_ops.cfg_named_input.name = 'config_file';
matlabbatch{6}.cfg_basicio.var_ops.cfg_named_input.input = 's_all_files.mat';
matlabbatch{7}.cfg_basicio.run_ops.call_matlab.inputs{1}.evaluated = string;
matlabbatch{7}.cfg_basicio.run_ops.call_matlab.outputs = cell(1, 0);
matlabbatch{7}.cfg_basicio.run_ops.call_matlab.fun = 'disp';
matlabbatch{8}.cfg_basicio.run_ops.call_matlab.inputs{1}.string(1) = cfg_dep('Named Input: root', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{8}.cfg_basicio.run_ops.call_matlab.inputs{2}.string(1) = cfg_dep('Named Input: seperator', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{8}.cfg_basicio.run_ops.call_matlab.inputs{3}.string(1) = cfg_dep('Named Input: subject', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{8}.cfg_basicio.run_ops.call_matlab.inputs{4}.string(1) = cfg_dep('Named Input: seperator', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{8}.cfg_basicio.run_ops.call_matlab.inputs{5}.string(1) = cfg_dep('Named Input: config_file', substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{8}.cfg_basicio.run_ops.call_matlab.inputs{6}.string = '';
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
matlabbatch{16}.cfg_basicio.var_ops.subsrefvar.input(1) = cfg_dep('Load Variables from .mat File: Loaded Variables (struct)', substruct('.','val', '{}',{9}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('{}',{1}));
matlabbatch{16}.cfg_basicio.var_ops.subsrefvar.subsreference{1}.subsfield = 'svar';
matlabbatch{16}.cfg_basicio.var_ops.subsrefvar.subsreference{2}.subsfield = 'results_folder';
matlabbatch{16}.cfg_basicio.var_ops.subsrefvar.tgt_spec.dir{1}.name = 'filter';
matlabbatch{16}.cfg_basicio.var_ops.subsrefvar.tgt_spec.dir{1}.value = 'dir';
matlabbatch{17}.cfg_basicio.var_ops.subsrefvar.input(1) = cfg_dep('Load Variables from .mat File: Loaded Variables (struct)', substruct('.','val', '{}',{9}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('{}',{1}));
matlabbatch{17}.cfg_basicio.var_ops.subsrefvar.subsreference{1}.subsfield = 'svar';
matlabbatch{17}.cfg_basicio.var_ops.subsrefvar.subsreference{2}.subsfield = 'rp_feet';
matlabbatch{17}.cfg_basicio.var_ops.subsrefvar.tgt_spec.mat{1}.name = 'filter';
matlabbatch{17}.cfg_basicio.var_ops.subsrefvar.tgt_spec.mat{1}.value = 'mat';
matlabbatch{18}.cfg_basicio.var_ops.subsrefvar.input(1) = cfg_dep('Load Variables from .mat File: Loaded Variables (struct)', substruct('.','val', '{}',{9}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('{}',{1}));
matlabbatch{18}.cfg_basicio.var_ops.subsrefvar.subsreference{1}.subsfield = 'svar';
matlabbatch{18}.cfg_basicio.var_ops.subsrefvar.subsreference{2}.subsfield = 'rp_l_hand';
matlabbatch{18}.cfg_basicio.var_ops.subsrefvar.tgt_spec.mat{1}.name = 'filter';
matlabbatch{18}.cfg_basicio.var_ops.subsrefvar.tgt_spec.mat{1}.value = 'mat';
matlabbatch{19}.cfg_basicio.var_ops.subsrefvar.input(1) = cfg_dep('Load Variables from .mat File: Loaded Variables (struct)', substruct('.','val', '{}',{9}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('{}',{1}));
matlabbatch{19}.cfg_basicio.var_ops.subsrefvar.subsreference{1}.subsfield = 'svar';
matlabbatch{19}.cfg_basicio.var_ops.subsrefvar.subsreference{2}.subsfield = 'rp_r_hand';
matlabbatch{19}.cfg_basicio.var_ops.subsrefvar.tgt_spec.mat{1}.name = 'filter';
matlabbatch{19}.cfg_basicio.var_ops.subsrefvar.tgt_spec.mat{1}.value = 'mat';
matlabbatch{20}.cfg_basicio.var_ops.subsrefvar.input(1) = cfg_dep('Load Variables from .mat File: Loaded Variables (struct)', substruct('.','val', '{}',{9}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('{}',{1}));
matlabbatch{20}.cfg_basicio.var_ops.subsrefvar.subsreference{1}.subsfield = 'svar';
matlabbatch{20}.cfg_basicio.var_ops.subsrefvar.subsreference{2}.subsfield = 'rp_tongue';
matlabbatch{20}.cfg_basicio.var_ops.subsrefvar.tgt_spec.mat{1}.name = 'filter';
matlabbatch{20}.cfg_basicio.var_ops.subsrefvar.tgt_spec.mat{1}.value = 'mat';
matlabbatch{21}.cfg_basicio.var_ops.subsrefvar.input(1) = cfg_dep('Load Variables from .mat File: Loaded Variables (struct)', substruct('.','val', '{}',{9}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('{}',{1}));
matlabbatch{21}.cfg_basicio.var_ops.subsrefvar.subsreference{1}.subsfield = 'svar';
matlabbatch{21}.cfg_basicio.var_ops.subsrefvar.subsreference{2}.subsfield = 'rp_resting_state';
matlabbatch{21}.cfg_basicio.var_ops.subsrefvar.tgt_spec.mat{1}.name = 'filter';
matlabbatch{21}.cfg_basicio.var_ops.subsrefvar.tgt_spec.mat{1}.value = 'mat';
matlabbatch{22}.cfg_basicio.file_dir.dir_ops.cfg_mkdir.parent(1) = cfg_dep('Access part of MATLAB variable: val.svar.results_folder', substruct('.','val', '{}',{16}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{22}.cfg_basicio.file_dir.dir_ops.cfg_mkdir.name = 'basic';
matlabbatch{23}.cfg_basicio.file_dir.dir_ops.cfg_mkdir.parent(1) = cfg_dep('Access part of MATLAB variable: val.svar.results_folder', substruct('.','val', '{}',{16}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{23}.cfg_basicio.file_dir.dir_ops.cfg_mkdir.name = 'dispersion';
matlabbatch{24}.cfg_basicio.file_dir.dir_ops.cfg_mkdir.parent(1) = cfg_dep('Access part of MATLAB variable: val.svar.results_folder', substruct('.','val', '{}',{16}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{24}.cfg_basicio.file_dir.dir_ops.cfg_mkdir.name = 'time_modulation';
matlabbatch{25}.cfg_basicio.file_dir.dir_ops.cfg_mkdir.parent(1) = cfg_dep('Access part of MATLAB variable: val.svar.results_folder', substruct('.','val', '{}',{16}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{25}.cfg_basicio.file_dir.dir_ops.cfg_mkdir.name = 'all';
matlabbatch{26}.spm.stats.fmri_spec.dir(1) = cfg_dep('Make Directory: Make Directory ''basic''', substruct('.','val', '{}',{22}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dir'));
matlabbatch{26}.spm.stats.fmri_spec.timing.units = 'secs';
matlabbatch{26}.spm.stats.fmri_spec.timing.RT = 2.5;
matlabbatch{26}.spm.stats.fmri_spec.timing.fmri_t = 40;
matlabbatch{26}.spm.stats.fmri_spec.timing.fmri_t0 = 20;
matlabbatch{26}.spm.stats.fmri_spec.sess(1).scans(1) = cfg_dep('Access part of MATLAB variable: val.svar.feet', substruct('.','val', '{}',{10}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{26}.spm.stats.fmri_spec.sess(1).cond.name = 'Moving Both Feet';
matlabbatch{26}.spm.stats.fmri_spec.sess(1).cond.onset = [29
                                                          67
                                                          133
                                                          197
                                                          254];
matlabbatch{26}.spm.stats.fmri_spec.sess(1).cond.duration = [18
                                                             23
                                                             40
                                                             36
                                                             39];
matlabbatch{26}.spm.stats.fmri_spec.sess(1).cond.tmod = 0;
matlabbatch{26}.spm.stats.fmri_spec.sess(1).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{26}.spm.stats.fmri_spec.sess(1).cond.orth = 1;
matlabbatch{26}.spm.stats.fmri_spec.sess(1).multi = {''};
matlabbatch{26}.spm.stats.fmri_spec.sess(1).regress = struct('name', {}, 'val', {});
matlabbatch{26}.spm.stats.fmri_spec.sess(1).multi_reg(1) = cfg_dep('Access part of MATLAB variable: val.svar.rp_feet', substruct('.','val', '{}',{17}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{26}.spm.stats.fmri_spec.sess(1).hpf = 128;
matlabbatch{26}.spm.stats.fmri_spec.sess(2).scans(1) = cfg_dep('Access part of MATLAB variable: val.svar.l_hand', substruct('.','val', '{}',{11}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{26}.spm.stats.fmri_spec.sess(2).cond.name = 'Moving Left Hand';
matlabbatch{26}.spm.stats.fmri_spec.sess(2).cond.onset = [8
                                                          68
                                                          102
                                                          181
                                                          243];
matlabbatch{26}.spm.stats.fmri_spec.sess(2).cond.duration = [19
                                                             19
                                                             43
                                                             21
                                                             39];
matlabbatch{26}.spm.stats.fmri_spec.sess(2).cond.tmod = 0;
matlabbatch{26}.spm.stats.fmri_spec.sess(2).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{26}.spm.stats.fmri_spec.sess(2).cond.orth = 1;
matlabbatch{26}.spm.stats.fmri_spec.sess(2).multi = {''};
matlabbatch{26}.spm.stats.fmri_spec.sess(2).regress = struct('name', {}, 'val', {});
matlabbatch{26}.spm.stats.fmri_spec.sess(2).multi_reg(1) = cfg_dep('Access part of MATLAB variable: val.svar.rp_l_hand', substruct('.','val', '{}',{18}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{26}.spm.stats.fmri_spec.sess(2).hpf = 128;
matlabbatch{26}.spm.stats.fmri_spec.sess(3).scans(1) = cfg_dep('Access part of MATLAB variable: val.svar.r_hand', substruct('.','val', '{}',{12}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{26}.spm.stats.fmri_spec.sess(3).cond.name = 'Moving Right Hand';
matlabbatch{26}.spm.stats.fmri_spec.sess(3).cond.onset = [11
                                                          93
                                                          149
                                                          213
                                                          273];
matlabbatch{26}.spm.stats.fmri_spec.sess(3).cond.duration = [37
                                                             31
                                                             35
                                                             43
                                                             15];
matlabbatch{26}.spm.stats.fmri_spec.sess(3).cond.tmod = 0;
matlabbatch{26}.spm.stats.fmri_spec.sess(3).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{26}.spm.stats.fmri_spec.sess(3).cond.orth = 1;
matlabbatch{26}.spm.stats.fmri_spec.sess(3).multi = {''};
matlabbatch{26}.spm.stats.fmri_spec.sess(3).regress = struct('name', {}, 'val', {});
matlabbatch{26}.spm.stats.fmri_spec.sess(3).multi_reg(1) = cfg_dep('Access part of MATLAB variable: val.svar.rp_r_hand', substruct('.','val', '{}',{19}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{26}.spm.stats.fmri_spec.sess(3).hpf = 128;
matlabbatch{26}.spm.stats.fmri_spec.sess(4).scans(1) = cfg_dep('Access part of MATLAB variable: val.svar.tongue', substruct('.','val', '{}',{13}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{26}.spm.stats.fmri_spec.sess(4).cond.name = 'Moving Tongue';
matlabbatch{26}.spm.stats.fmri_spec.sess(4).cond.onset = [17
                                                          91
                                                          126
                                                          185
                                                          268];
matlabbatch{26}.spm.stats.fmri_spec.sess(4).cond.duration = [43
                                                             19
                                                             18
                                                             41
                                                             29];
matlabbatch{26}.spm.stats.fmri_spec.sess(4).cond.tmod = 0;
matlabbatch{26}.spm.stats.fmri_spec.sess(4).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{26}.spm.stats.fmri_spec.sess(4).cond.orth = 1;
matlabbatch{26}.spm.stats.fmri_spec.sess(4).multi = {''};
matlabbatch{26}.spm.stats.fmri_spec.sess(4).regress = struct('name', {}, 'val', {});
matlabbatch{26}.spm.stats.fmri_spec.sess(4).multi_reg(1) = cfg_dep('Access part of MATLAB variable: val.svar.rp_tongue', substruct('.','val', '{}',{20}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{26}.spm.stats.fmri_spec.sess(4).hpf = 128;
matlabbatch{26}.spm.stats.fmri_spec.sess(5).scans(1) = cfg_dep('Access part of MATLAB variable: val.svar.resting_state', substruct('.','val', '{}',{14}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{26}.spm.stats.fmri_spec.sess(5).cond = struct('name', {}, 'onset', {}, 'duration', {}, 'tmod', {}, 'pmod', {}, 'orth', {});
matlabbatch{26}.spm.stats.fmri_spec.sess(5).multi = {''};
matlabbatch{26}.spm.stats.fmri_spec.sess(5).regress = struct('name', {}, 'val', {});
matlabbatch{26}.spm.stats.fmri_spec.sess(5).multi_reg(1) = cfg_dep('Access part of MATLAB variable: val.svar.rp_resting_state', substruct('.','val', '{}',{21}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{26}.spm.stats.fmri_spec.sess(5).hpf = 128;
matlabbatch{26}.spm.stats.fmri_spec.fact = struct('name', {}, 'levels', {});
matlabbatch{26}.spm.stats.fmri_spec.bases.hrf.derivs = [0 0];
matlabbatch{26}.spm.stats.fmri_spec.volt = 1;
matlabbatch{26}.spm.stats.fmri_spec.global = 'None';
matlabbatch{26}.spm.stats.fmri_spec.mthresh = 0.5;
matlabbatch{26}.spm.stats.fmri_spec.mask = {''};
matlabbatch{26}.spm.stats.fmri_spec.cvi = 'AR(1)';
matlabbatch{27}.spm.stats.fmri_spec.dir(1) = cfg_dep('Make Directory: Make Directory ''dispersion''', substruct('.','val', '{}',{23}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dir'));
matlabbatch{27}.spm.stats.fmri_spec.timing.units = 'secs';
matlabbatch{27}.spm.stats.fmri_spec.timing.RT = 2.5;
matlabbatch{27}.spm.stats.fmri_spec.timing.fmri_t = 40;
matlabbatch{27}.spm.stats.fmri_spec.timing.fmri_t0 = 20;
matlabbatch{27}.spm.stats.fmri_spec.sess(1).scans(1) = cfg_dep('Access part of MATLAB variable: val.svar.feet', substruct('.','val', '{}',{10}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{27}.spm.stats.fmri_spec.sess(1).cond.name = 'Moving Both Feet';
matlabbatch{27}.spm.stats.fmri_spec.sess(1).cond.onset = [29
                                                          67
                                                          133
                                                          197
                                                          254];
matlabbatch{27}.spm.stats.fmri_spec.sess(1).cond.duration = [18
                                                             23
                                                             40
                                                             36
                                                             39];
matlabbatch{27}.spm.stats.fmri_spec.sess(1).cond.tmod = 0;
matlabbatch{27}.spm.stats.fmri_spec.sess(1).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{27}.spm.stats.fmri_spec.sess(1).cond.orth = 1;
matlabbatch{27}.spm.stats.fmri_spec.sess(1).multi = {''};
matlabbatch{27}.spm.stats.fmri_spec.sess(1).regress = struct('name', {}, 'val', {});
matlabbatch{27}.spm.stats.fmri_spec.sess(1).multi_reg(1) = cfg_dep('Access part of MATLAB variable: val.svar.rp_feet', substruct('.','val', '{}',{17}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{27}.spm.stats.fmri_spec.sess(1).hpf = 128;
matlabbatch{27}.spm.stats.fmri_spec.sess(2).scans(1) = cfg_dep('Access part of MATLAB variable: val.svar.l_hand', substruct('.','val', '{}',{11}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{27}.spm.stats.fmri_spec.sess(2).cond.name = 'Moving Left Hand';
matlabbatch{27}.spm.stats.fmri_spec.sess(2).cond.onset = [8
                                                          68
                                                          102
                                                          181
                                                          243];
matlabbatch{27}.spm.stats.fmri_spec.sess(2).cond.duration = [19
                                                             19
                                                             43
                                                             21
                                                             39];
matlabbatch{27}.spm.stats.fmri_spec.sess(2).cond.tmod = 0;
matlabbatch{27}.spm.stats.fmri_spec.sess(2).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{27}.spm.stats.fmri_spec.sess(2).cond.orth = 1;
matlabbatch{27}.spm.stats.fmri_spec.sess(2).multi = {''};
matlabbatch{27}.spm.stats.fmri_spec.sess(2).regress = struct('name', {}, 'val', {});
matlabbatch{27}.spm.stats.fmri_spec.sess(2).multi_reg(1) = cfg_dep('Access part of MATLAB variable: val.svar.rp_l_hand', substruct('.','val', '{}',{18}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{27}.spm.stats.fmri_spec.sess(2).hpf = 128;
matlabbatch{27}.spm.stats.fmri_spec.sess(3).scans(1) = cfg_dep('Access part of MATLAB variable: val.svar.r_hand', substruct('.','val', '{}',{12}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{27}.spm.stats.fmri_spec.sess(3).cond.name = 'Moving Right Hand';
matlabbatch{27}.spm.stats.fmri_spec.sess(3).cond.onset = [11
                                                          93
                                                          149
                                                          213
                                                          273];
matlabbatch{27}.spm.stats.fmri_spec.sess(3).cond.duration = [37
                                                             31
                                                             35
                                                             43
                                                             15];
matlabbatch{27}.spm.stats.fmri_spec.sess(3).cond.tmod = 0;
matlabbatch{27}.spm.stats.fmri_spec.sess(3).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{27}.spm.stats.fmri_spec.sess(3).cond.orth = 1;
matlabbatch{27}.spm.stats.fmri_spec.sess(3).multi = {''};
matlabbatch{27}.spm.stats.fmri_spec.sess(3).regress = struct('name', {}, 'val', {});
matlabbatch{27}.spm.stats.fmri_spec.sess(3).multi_reg(1) = cfg_dep('Access part of MATLAB variable: val.svar.rp_r_hand', substruct('.','val', '{}',{19}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{27}.spm.stats.fmri_spec.sess(3).hpf = 128;
matlabbatch{27}.spm.stats.fmri_spec.sess(4).scans(1) = cfg_dep('Access part of MATLAB variable: val.svar.tongue', substruct('.','val', '{}',{13}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{27}.spm.stats.fmri_spec.sess(4).cond.name = 'Moving Tongue';
matlabbatch{27}.spm.stats.fmri_spec.sess(4).cond.onset = [17
                                                          91
                                                          126
                                                          185
                                                          268];
matlabbatch{27}.spm.stats.fmri_spec.sess(4).cond.duration = [43
                                                             19
                                                             18
                                                             41
                                                             29];
matlabbatch{27}.spm.stats.fmri_spec.sess(4).cond.tmod = 0;
matlabbatch{27}.spm.stats.fmri_spec.sess(4).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{27}.spm.stats.fmri_spec.sess(4).cond.orth = 1;
matlabbatch{27}.spm.stats.fmri_spec.sess(4).multi = {''};
matlabbatch{27}.spm.stats.fmri_spec.sess(4).regress = struct('name', {}, 'val', {});
matlabbatch{27}.spm.stats.fmri_spec.sess(4).multi_reg(1) = cfg_dep('Access part of MATLAB variable: val.svar.rp_tongue', substruct('.','val', '{}',{20}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{27}.spm.stats.fmri_spec.sess(4).hpf = 128;
matlabbatch{27}.spm.stats.fmri_spec.sess(5).scans(1) = cfg_dep('Access part of MATLAB variable: val.svar.resting_state', substruct('.','val', '{}',{14}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{27}.spm.stats.fmri_spec.sess(5).cond = struct('name', {}, 'onset', {}, 'duration', {}, 'tmod', {}, 'pmod', {}, 'orth', {});
matlabbatch{27}.spm.stats.fmri_spec.sess(5).multi = {''};
matlabbatch{27}.spm.stats.fmri_spec.sess(5).regress = struct('name', {}, 'val', {});
matlabbatch{27}.spm.stats.fmri_spec.sess(5).multi_reg(1) = cfg_dep('Access part of MATLAB variable: val.svar.rp_resting_state', substruct('.','val', '{}',{21}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{27}.spm.stats.fmri_spec.sess(5).hpf = 128;
matlabbatch{27}.spm.stats.fmri_spec.fact = struct('name', {}, 'levels', {});
matlabbatch{27}.spm.stats.fmri_spec.bases.hrf.derivs = [1 1];
matlabbatch{27}.spm.stats.fmri_spec.volt = 1;
matlabbatch{27}.spm.stats.fmri_spec.global = 'None';
matlabbatch{27}.spm.stats.fmri_spec.mthresh = 0.5;
matlabbatch{27}.spm.stats.fmri_spec.mask = {''};
matlabbatch{27}.spm.stats.fmri_spec.cvi = 'AR(1)';
matlabbatch{28}.spm.stats.fmri_spec.dir(1) = cfg_dep('Make Directory: Make Directory ''time_modulation''', substruct('.','val', '{}',{24}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dir'));
matlabbatch{28}.spm.stats.fmri_spec.timing.units = 'secs';
matlabbatch{28}.spm.stats.fmri_spec.timing.RT = 2.5;
matlabbatch{28}.spm.stats.fmri_spec.timing.fmri_t = 40;
matlabbatch{28}.spm.stats.fmri_spec.timing.fmri_t0 = 20;
matlabbatch{28}.spm.stats.fmri_spec.sess(1).scans(1) = cfg_dep('Access part of MATLAB variable: val.svar.feet', substruct('.','val', '{}',{10}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{28}.spm.stats.fmri_spec.sess(1).cond.name = 'Moving Both Feet';
matlabbatch{28}.spm.stats.fmri_spec.sess(1).cond.onset = [29
                                                          67
                                                          133
                                                          197
                                                          254];
matlabbatch{28}.spm.stats.fmri_spec.sess(1).cond.duration = [18
                                                             23
                                                             40
                                                             36
                                                             39];
matlabbatch{28}.spm.stats.fmri_spec.sess(1).cond.tmod = 1;
matlabbatch{28}.spm.stats.fmri_spec.sess(1).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{28}.spm.stats.fmri_spec.sess(1).cond.orth = 1;
matlabbatch{28}.spm.stats.fmri_spec.sess(1).multi = {''};
matlabbatch{28}.spm.stats.fmri_spec.sess(1).regress = struct('name', {}, 'val', {});
matlabbatch{28}.spm.stats.fmri_spec.sess(1).multi_reg(1) = cfg_dep('Access part of MATLAB variable: val.svar.rp_feet', substruct('.','val', '{}',{17}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{28}.spm.stats.fmri_spec.sess(1).hpf = 128;
matlabbatch{28}.spm.stats.fmri_spec.sess(2).scans(1) = cfg_dep('Access part of MATLAB variable: val.svar.l_hand', substruct('.','val', '{}',{11}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{28}.spm.stats.fmri_spec.sess(2).cond.name = 'Moving Left Hand';
matlabbatch{28}.spm.stats.fmri_spec.sess(2).cond.onset = [8
                                                          68
                                                          102
                                                          181
                                                          243];
matlabbatch{28}.spm.stats.fmri_spec.sess(2).cond.duration = [19
                                                             19
                                                             43
                                                             21
                                                             39];
matlabbatch{28}.spm.stats.fmri_spec.sess(2).cond.tmod = 1;
matlabbatch{28}.spm.stats.fmri_spec.sess(2).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{28}.spm.stats.fmri_spec.sess(2).cond.orth = 1;
matlabbatch{28}.spm.stats.fmri_spec.sess(2).multi = {''};
matlabbatch{28}.spm.stats.fmri_spec.sess(2).regress = struct('name', {}, 'val', {});
matlabbatch{28}.spm.stats.fmri_spec.sess(2).multi_reg(1) = cfg_dep('Access part of MATLAB variable: val.svar.rp_l_hand', substruct('.','val', '{}',{18}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{28}.spm.stats.fmri_spec.sess(2).hpf = 128;
matlabbatch{28}.spm.stats.fmri_spec.sess(3).scans(1) = cfg_dep('Access part of MATLAB variable: val.svar.r_hand', substruct('.','val', '{}',{12}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{28}.spm.stats.fmri_spec.sess(3).cond.name = 'Moving Right Hand';
matlabbatch{28}.spm.stats.fmri_spec.sess(3).cond.onset = [11
                                                          93
                                                          149
                                                          213
                                                          273];
matlabbatch{28}.spm.stats.fmri_spec.sess(3).cond.duration = [37
                                                             31
                                                             35
                                                             43
                                                             15];
matlabbatch{28}.spm.stats.fmri_spec.sess(3).cond.tmod = 1;
matlabbatch{28}.spm.stats.fmri_spec.sess(3).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{28}.spm.stats.fmri_spec.sess(3).cond.orth = 1;
matlabbatch{28}.spm.stats.fmri_spec.sess(3).multi = {''};
matlabbatch{28}.spm.stats.fmri_spec.sess(3).regress = struct('name', {}, 'val', {});
matlabbatch{28}.spm.stats.fmri_spec.sess(3).multi_reg(1) = cfg_dep('Access part of MATLAB variable: val.svar.rp_r_hand', substruct('.','val', '{}',{19}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{28}.spm.stats.fmri_spec.sess(3).hpf = 128;
matlabbatch{28}.spm.stats.fmri_spec.sess(4).scans(1) = cfg_dep('Access part of MATLAB variable: val.svar.tongue', substruct('.','val', '{}',{13}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{28}.spm.stats.fmri_spec.sess(4).cond.name = 'Moving Tongue';
matlabbatch{28}.spm.stats.fmri_spec.sess(4).cond.onset = [17
                                                          91
                                                          126
                                                          185
                                                          268];
matlabbatch{28}.spm.stats.fmri_spec.sess(4).cond.duration = [43
                                                             19
                                                             18
                                                             41
                                                             29];
matlabbatch{28}.spm.stats.fmri_spec.sess(4).cond.tmod = 1;
matlabbatch{28}.spm.stats.fmri_spec.sess(4).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{28}.spm.stats.fmri_spec.sess(4).cond.orth = 1;
matlabbatch{28}.spm.stats.fmri_spec.sess(4).multi = {''};
matlabbatch{28}.spm.stats.fmri_spec.sess(4).regress = struct('name', {}, 'val', {});
matlabbatch{28}.spm.stats.fmri_spec.sess(4).multi_reg(1) = cfg_dep('Access part of MATLAB variable: val.svar.rp_tongue', substruct('.','val', '{}',{20}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{28}.spm.stats.fmri_spec.sess(4).hpf = 128;
matlabbatch{28}.spm.stats.fmri_spec.sess(5).scans(1) = cfg_dep('Access part of MATLAB variable: val.svar.resting_state', substruct('.','val', '{}',{14}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{28}.spm.stats.fmri_spec.sess(5).cond = struct('name', {}, 'onset', {}, 'duration', {}, 'tmod', {}, 'pmod', {}, 'orth', {});
matlabbatch{28}.spm.stats.fmri_spec.sess(5).multi = {''};
matlabbatch{28}.spm.stats.fmri_spec.sess(5).regress = struct('name', {}, 'val', {});
matlabbatch{28}.spm.stats.fmri_spec.sess(5).multi_reg(1) = cfg_dep('Access part of MATLAB variable: val.svar.rp_resting_state', substruct('.','val', '{}',{21}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{28}.spm.stats.fmri_spec.sess(5).hpf = 128;
matlabbatch{28}.spm.stats.fmri_spec.fact = struct('name', {}, 'levels', {});
matlabbatch{28}.spm.stats.fmri_spec.bases.hrf.derivs = [0 0];
matlabbatch{28}.spm.stats.fmri_spec.volt = 1;
matlabbatch{28}.spm.stats.fmri_spec.global = 'None';
matlabbatch{28}.spm.stats.fmri_spec.mthresh = 0.5;
matlabbatch{28}.spm.stats.fmri_spec.mask = {''};
matlabbatch{28}.spm.stats.fmri_spec.cvi = 'AR(1)';
matlabbatch{29}.spm.stats.fmri_spec.dir(1) = cfg_dep('Make Directory: Make Directory ''all''', substruct('.','val', '{}',{25}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dir'));
matlabbatch{29}.spm.stats.fmri_spec.timing.units = 'secs';
matlabbatch{29}.spm.stats.fmri_spec.timing.RT = 2.5;
matlabbatch{29}.spm.stats.fmri_spec.timing.fmri_t = 40;
matlabbatch{29}.spm.stats.fmri_spec.timing.fmri_t0 = 20;
matlabbatch{29}.spm.stats.fmri_spec.sess(1).scans(1) = cfg_dep('Access part of MATLAB variable: val.svar.feet', substruct('.','val', '{}',{10}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{29}.spm.stats.fmri_spec.sess(1).cond.name = 'Moving Both Feet';
matlabbatch{29}.spm.stats.fmri_spec.sess(1).cond.onset = [29
                                                          67
                                                          133
                                                          197
                                                          254];
matlabbatch{29}.spm.stats.fmri_spec.sess(1).cond.duration = [18
                                                             23
                                                             40
                                                             36
                                                             39];
matlabbatch{29}.spm.stats.fmri_spec.sess(1).cond.tmod = 1;
matlabbatch{29}.spm.stats.fmri_spec.sess(1).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{29}.spm.stats.fmri_spec.sess(1).cond.orth = 1;
matlabbatch{29}.spm.stats.fmri_spec.sess(1).multi = {''};
matlabbatch{29}.spm.stats.fmri_spec.sess(1).regress = struct('name', {}, 'val', {});
matlabbatch{29}.spm.stats.fmri_spec.sess(1).multi_reg(1) = cfg_dep('Access part of MATLAB variable: val.svar.rp_feet', substruct('.','val', '{}',{17}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{29}.spm.stats.fmri_spec.sess(1).hpf = 128;
matlabbatch{29}.spm.stats.fmri_spec.sess(2).scans(1) = cfg_dep('Access part of MATLAB variable: val.svar.l_hand', substruct('.','val', '{}',{11}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{29}.spm.stats.fmri_spec.sess(2).cond.name = 'Moving Left Hand';
matlabbatch{29}.spm.stats.fmri_spec.sess(2).cond.onset = [8
                                                          68
                                                          102
                                                          181
                                                          243];
matlabbatch{29}.spm.stats.fmri_spec.sess(2).cond.duration = [19
                                                             19
                                                             43
                                                             21
                                                             39];
matlabbatch{29}.spm.stats.fmri_spec.sess(2).cond.tmod = 1;
matlabbatch{29}.spm.stats.fmri_spec.sess(2).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{29}.spm.stats.fmri_spec.sess(2).cond.orth = 1;
matlabbatch{29}.spm.stats.fmri_spec.sess(2).multi = {''};
matlabbatch{29}.spm.stats.fmri_spec.sess(2).regress = struct('name', {}, 'val', {});
matlabbatch{29}.spm.stats.fmri_spec.sess(2).multi_reg(1) = cfg_dep('Access part of MATLAB variable: val.svar.rp_l_hand', substruct('.','val', '{}',{18}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{29}.spm.stats.fmri_spec.sess(2).hpf = 128;
matlabbatch{29}.spm.stats.fmri_spec.sess(3).scans(1) = cfg_dep('Access part of MATLAB variable: val.svar.r_hand', substruct('.','val', '{}',{12}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{29}.spm.stats.fmri_spec.sess(3).cond.name = 'Moving Right Hand';
matlabbatch{29}.spm.stats.fmri_spec.sess(3).cond.onset = [11
                                                          93
                                                          149
                                                          213
                                                          273];
matlabbatch{29}.spm.stats.fmri_spec.sess(3).cond.duration = [37
                                                             31
                                                             35
                                                             43
                                                             15];
matlabbatch{29}.spm.stats.fmri_spec.sess(3).cond.tmod = 1;
matlabbatch{29}.spm.stats.fmri_spec.sess(3).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{29}.spm.stats.fmri_spec.sess(3).cond.orth = 1;
matlabbatch{29}.spm.stats.fmri_spec.sess(3).multi = {''};
matlabbatch{29}.spm.stats.fmri_spec.sess(3).regress = struct('name', {}, 'val', {});
matlabbatch{29}.spm.stats.fmri_spec.sess(3).multi_reg(1) = cfg_dep('Access part of MATLAB variable: val.svar.rp_r_hand', substruct('.','val', '{}',{19}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{29}.spm.stats.fmri_spec.sess(3).hpf = 128;
matlabbatch{29}.spm.stats.fmri_spec.sess(4).scans(1) = cfg_dep('Access part of MATLAB variable: val.svar.tongue', substruct('.','val', '{}',{13}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{29}.spm.stats.fmri_spec.sess(4).cond.name = 'Moving Tongue';
matlabbatch{29}.spm.stats.fmri_spec.sess(4).cond.onset = [17
                                                          91
                                                          126
                                                          185
                                                          268];
matlabbatch{29}.spm.stats.fmri_spec.sess(4).cond.duration = [43
                                                             19
                                                             18
                                                             41
                                                             29];
matlabbatch{29}.spm.stats.fmri_spec.sess(4).cond.tmod = 1;
matlabbatch{29}.spm.stats.fmri_spec.sess(4).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{29}.spm.stats.fmri_spec.sess(4).cond.orth = 1;
matlabbatch{29}.spm.stats.fmri_spec.sess(4).multi = {''};
matlabbatch{29}.spm.stats.fmri_spec.sess(4).regress = struct('name', {}, 'val', {});
matlabbatch{29}.spm.stats.fmri_spec.sess(4).multi_reg(1) = cfg_dep('Access part of MATLAB variable: val.svar.rp_tongue', substruct('.','val', '{}',{20}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{29}.spm.stats.fmri_spec.sess(4).hpf = 128;
matlabbatch{29}.spm.stats.fmri_spec.sess(5).scans(1) = cfg_dep('Access part of MATLAB variable: val.svar.resting_state', substruct('.','val', '{}',{14}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{29}.spm.stats.fmri_spec.sess(5).cond = struct('name', {}, 'onset', {}, 'duration', {}, 'tmod', {}, 'pmod', {}, 'orth', {});
matlabbatch{29}.spm.stats.fmri_spec.sess(5).multi = {''};
matlabbatch{29}.spm.stats.fmri_spec.sess(5).regress = struct('name', {}, 'val', {});
matlabbatch{29}.spm.stats.fmri_spec.sess(5).multi_reg(1) = cfg_dep('Access part of MATLAB variable: val.svar.rp_resting_state', substruct('.','val', '{}',{21}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','output'));
matlabbatch{29}.spm.stats.fmri_spec.sess(5).hpf = 128;
matlabbatch{29}.spm.stats.fmri_spec.fact = struct('name', {}, 'levels', {});
matlabbatch{29}.spm.stats.fmri_spec.bases.hrf.derivs = [1 1];
matlabbatch{29}.spm.stats.fmri_spec.volt = 1;
matlabbatch{29}.spm.stats.fmri_spec.global = 'None';
matlabbatch{29}.spm.stats.fmri_spec.mthresh = 0.5;
matlabbatch{29}.spm.stats.fmri_spec.mask = {''};
matlabbatch{29}.spm.stats.fmri_spec.cvi = 'AR(1)';
matlabbatch{30}.spm.stats.fmri_est.spmmat(1) = cfg_dep('fMRI model specification: SPM.mat File', substruct('.','val', '{}',{26}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{30}.spm.stats.fmri_est.write_residuals = 0;
matlabbatch{30}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{31}.spm.stats.fmri_est.spmmat(1) = cfg_dep('fMRI model specification: SPM.mat File', substruct('.','val', '{}',{27}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{31}.spm.stats.fmri_est.write_residuals = 0;
matlabbatch{31}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{32}.spm.stats.fmri_est.spmmat(1) = cfg_dep('fMRI model specification: SPM.mat File', substruct('.','val', '{}',{28}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{32}.spm.stats.fmri_est.write_residuals = 0;
matlabbatch{32}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{33}.spm.stats.fmri_est.spmmat(1) = cfg_dep('fMRI model specification: SPM.mat File', substruct('.','val', '{}',{29}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{33}.spm.stats.fmri_est.write_residuals = 0;
matlabbatch{33}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{34}.spm.stats.review.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{30}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{34}.spm.stats.review.display.matrix = 1;
matlabbatch{34}.spm.stats.review.print = 'png';
matlabbatch{35}.spm.stats.review.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{31}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{35}.spm.stats.review.display.matrix = 1;
matlabbatch{35}.spm.stats.review.print = 'png';
matlabbatch{36}.spm.stats.review.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{32}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{36}.spm.stats.review.display.matrix = 1;
matlabbatch{36}.spm.stats.review.print = 'png';
matlabbatch{37}.spm.stats.review.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{33}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{37}.spm.stats.review.display.matrix = 1;
matlabbatch{37}.spm.stats.review.print = 'png';
