%-----------------------------------------------------------------------
% Job saved on 24-Apr-2021 13:50:12 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7487)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.cfg_basicio.var_ops.cfg_named_input.name = 'str_feet';
matlabbatch{1}.cfg_basicio.var_ops.cfg_named_input.input = 'feet';
matlabbatch{2}.cfg_basicio.var_ops.cfg_named_input.name = 'str_lh';
matlabbatch{2}.cfg_basicio.var_ops.cfg_named_input.input = 'l_hand';
matlabbatch{3}.cfg_basicio.var_ops.cfg_named_input.name = 'str_rh';
matlabbatch{3}.cfg_basicio.var_ops.cfg_named_input.input = 'r_hand';
matlabbatch{4}.cfg_basicio.var_ops.cfg_named_input.name = 'str_tongue';
matlabbatch{4}.cfg_basicio.var_ops.cfg_named_input.input = 'tongue';
matlabbatch{5}.cfg_basicio.var_ops.cfg_named_input.name = 'base';
matlabbatch{5}.cfg_basicio.var_ops.cfg_named_input.input = 'C:\Users\ohund\Documents\MATLAB\subjects';
matlabbatch{6}.cfg_basicio.var_ops.cfg_named_input.name = 'file_seperator';
matlabbatch{6}.cfg_basicio.var_ops.cfg_named_input.input = '\';
matlabbatch{7}.cfg_basicio.var_ops.cfg_named_input.name = 'subject';
matlabbatch{7}.cfg_basicio.var_ops.cfg_named_input.input = '<UNDEFINED>';
matlabbatch{8}.cfg_basicio.var_ops.cfg_named_input.name = 'str_t1';
matlabbatch{8}.cfg_basicio.var_ops.cfg_named_input.input = 't1';
matlabbatch{9}.cfg_basicio.run_ops.call_matlab.inputs{1}.string(1) = cfg_dep('Named Input: base', substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{9}.cfg_basicio.run_ops.call_matlab.inputs{2}.string(1) = cfg_dep('Named Input: file_seperator', substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{9}.cfg_basicio.run_ops.call_matlab.inputs{3}.evaluated(1) = cfg_dep('Named Input: subject', substruct('.','val', '{}',{7}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{9}.cfg_basicio.run_ops.call_matlab.inputs{4}.string(1) = cfg_dep('Named Input: file_seperator', substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{9}.cfg_basicio.run_ops.call_matlab.outputs{1}.filter.dir = true;
matlabbatch{9}.cfg_basicio.run_ops.call_matlab.fun = 'append';
matlabbatch{10}.cfg_basicio.file_dir.file_ops.file_fplist.dir(1) = cfg_dep('Call MATLAB function: Call MATLAB: output 1 - filter dir', substruct('.','val', '{}',{9}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','outputs', '{}',{1}));
matlabbatch{10}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^sub\d\d_.+-\d{4}.nii$';
matlabbatch{10}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPListRec';
matlabbatch{11}.cfg_basicio.file_dir.file_ops.file_filter.files(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^sub\d\d_.+-\d{4}.nii$)', substruct('.','val', '{}',{10}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{11}.cfg_basicio.file_dir.file_ops.file_filter.typ = '.*.nii';
matlabbatch{11}.cfg_basicio.file_dir.file_ops.file_filter.filter(1) = cfg_dep('Named Input: str_feet', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{11}.cfg_basicio.file_dir.file_ops.file_filter.frames = '';
matlabbatch{12}.cfg_basicio.file_dir.file_ops.file_filter.files(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^sub\d\d_.+-\d{4}.nii$)', substruct('.','val', '{}',{10}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{12}.cfg_basicio.file_dir.file_ops.file_filter.typ = '.*.nii';
matlabbatch{12}.cfg_basicio.file_dir.file_ops.file_filter.filter(1) = cfg_dep('Named Input: str_lh', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{12}.cfg_basicio.file_dir.file_ops.file_filter.frames = '';
matlabbatch{13}.cfg_basicio.file_dir.file_ops.file_filter.files(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^sub\d\d_.+-\d{4}.nii$)', substruct('.','val', '{}',{10}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{13}.cfg_basicio.file_dir.file_ops.file_filter.typ = '.*.nii';
matlabbatch{13}.cfg_basicio.file_dir.file_ops.file_filter.filter(1) = cfg_dep('Named Input: str_rh', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{13}.cfg_basicio.file_dir.file_ops.file_filter.frames = '';
matlabbatch{14}.cfg_basicio.file_dir.file_ops.file_filter.files(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^sub\d\d_.+-\d{4}.nii$)', substruct('.','val', '{}',{10}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{14}.cfg_basicio.file_dir.file_ops.file_filter.typ = '.*.nii';
matlabbatch{14}.cfg_basicio.file_dir.file_ops.file_filter.filter(1) = cfg_dep('Named Input: str_tongue', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{14}.cfg_basicio.file_dir.file_ops.file_filter.frames = '';
matlabbatch{15}.cfg_basicio.file_dir.file_ops.file_filter.files(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^sub\d\d_.+-\d{4}.nii$)', substruct('.','val', '{}',{10}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{15}.cfg_basicio.file_dir.file_ops.file_filter.typ = '.*.nii';
matlabbatch{15}.cfg_basicio.file_dir.file_ops.file_filter.filter(1) = cfg_dep('Named Input: str_t1', substruct('.','val', '{}',{8}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{15}.cfg_basicio.file_dir.file_ops.file_filter.frames = '';
matlabbatch{16}.cfg_basicio.file_dir.file_ops.cfg_named_file.name = 'sessions';
matlabbatch{16}.cfg_basicio.file_dir.file_ops.cfg_named_file.files{1}(1) = cfg_dep('File Filter: Filtered Files', substruct('.','val', '{}',{11}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{16}.cfg_basicio.file_dir.file_ops.cfg_named_file.files{2}(1) = cfg_dep('File Filter: Filtered Files', substruct('.','val', '{}',{12}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{16}.cfg_basicio.file_dir.file_ops.cfg_named_file.files{3}(1) = cfg_dep('File Filter: Filtered Files', substruct('.','val', '{}',{13}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{16}.cfg_basicio.file_dir.file_ops.cfg_named_file.files{4}(1) = cfg_dep('File Filter: Filtered Files', substruct('.','val', '{}',{14}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{16}.cfg_basicio.file_dir.file_ops.cfg_named_file.files{5}(1) = cfg_dep('File Filter: Filtered Files', substruct('.','val', '{}',{15}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{17}.cfg_basicio.run_ops.call_matlab.inputs{1}.string = 'log-';
matlabbatch{17}.cfg_basicio.run_ops.call_matlab.inputs{2}.evaluated(1) = cfg_dep('Named Input: subject', substruct('.','val', '{}',{7}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{17}.cfg_basicio.run_ops.call_matlab.outputs{1}.strtype.s = true;
matlabbatch{17}.cfg_basicio.run_ops.call_matlab.fun = 'append';
matlabbatch{18}.cfg_basicio.var_ops.cfg_save_vars.name(1) = cfg_dep('Call MATLAB function: Call MATLAB: output 1 - strtype s', substruct('.','val', '{}',{17}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','outputs', '{}',{1}));
matlabbatch{18}.cfg_basicio.var_ops.cfg_save_vars.outdir = {'C:\Users\ohund\Documents\MATLAB\single_results\logs'};
matlabbatch{18}.cfg_basicio.var_ops.cfg_save_vars.vars(1).vname(1) = cfg_dep('Named Input: str_feet', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{18}.cfg_basicio.var_ops.cfg_save_vars.vars(1).vcont(1) = cfg_dep('Named File Selector: sessions(1) - Files', substruct('.','val', '{}',{16}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files', '{}',{1}));
matlabbatch{18}.cfg_basicio.var_ops.cfg_save_vars.vars(2).vname(1) = cfg_dep('Named Input: str_lh', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{18}.cfg_basicio.var_ops.cfg_save_vars.vars(2).vcont(1) = cfg_dep('Named File Selector: sessions(2) - Files', substruct('.','val', '{}',{16}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files', '{}',{2}));
matlabbatch{18}.cfg_basicio.var_ops.cfg_save_vars.vars(3).vname(1) = cfg_dep('Named Input: str_rh', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{18}.cfg_basicio.var_ops.cfg_save_vars.vars(3).vcont(1) = cfg_dep('Named File Selector: sessions(3) - Files', substruct('.','val', '{}',{16}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files', '{}',{3}));
matlabbatch{18}.cfg_basicio.var_ops.cfg_save_vars.vars(4).vname(1) = cfg_dep('Named Input: str_tongue', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{18}.cfg_basicio.var_ops.cfg_save_vars.vars(4).vcont(1) = cfg_dep('Named File Selector: sessions(4) - Files', substruct('.','val', '{}',{16}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files', '{}',{4}));
matlabbatch{18}.cfg_basicio.var_ops.cfg_save_vars.vars(5).vname(1) = cfg_dep('Named Input: str_t1', substruct('.','val', '{}',{8}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{18}.cfg_basicio.var_ops.cfg_save_vars.vars(5).vcont(1) = cfg_dep('Named File Selector: sessions(5) - Files', substruct('.','val', '{}',{16}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files', '{}',{5}));
matlabbatch{18}.cfg_basicio.var_ops.cfg_save_vars.vars(6).vname = 'all_files';
matlabbatch{18}.cfg_basicio.var_ops.cfg_save_vars.vars(6).vcont(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^sub\d\d_.+-\d{4}.nii$)', substruct('.','val', '{}',{10}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{18}.cfg_basicio.var_ops.cfg_save_vars.saveasstruct = true;
matlabbatch{19}.spm.spatial.realign.estwrite.data{1}(1) = cfg_dep('Named File Selector: sessions(1) - Files', substruct('.','val', '{}',{16}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files', '{}',{1}));
matlabbatch{19}.spm.spatial.realign.estwrite.data{2}(1) = cfg_dep('Named File Selector: sessions(2) - Files', substruct('.','val', '{}',{16}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files', '{}',{2}));
matlabbatch{19}.spm.spatial.realign.estwrite.data{3}(1) = cfg_dep('Named File Selector: sessions(3) - Files', substruct('.','val', '{}',{16}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files', '{}',{3}));
matlabbatch{19}.spm.spatial.realign.estwrite.data{4}(1) = cfg_dep('Named File Selector: sessions(4) - Files', substruct('.','val', '{}',{16}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files', '{}',{4}));
matlabbatch{19}.spm.spatial.realign.estwrite.eoptions.quality = 0.9;
matlabbatch{19}.spm.spatial.realign.estwrite.eoptions.sep = 2.5;
matlabbatch{19}.spm.spatial.realign.estwrite.eoptions.fwhm = 5;
matlabbatch{19}.spm.spatial.realign.estwrite.eoptions.rtm = 1;
matlabbatch{19}.spm.spatial.realign.estwrite.eoptions.interp = 2;
matlabbatch{19}.spm.spatial.realign.estwrite.eoptions.wrap = [0 0 0];
matlabbatch{19}.spm.spatial.realign.estwrite.eoptions.weight = '';
matlabbatch{19}.spm.spatial.realign.estwrite.roptions.which = [2 1];
matlabbatch{19}.spm.spatial.realign.estwrite.roptions.interp = 4;
matlabbatch{19}.spm.spatial.realign.estwrite.roptions.wrap = [0 0 0];
matlabbatch{19}.spm.spatial.realign.estwrite.roptions.mask = 1;
matlabbatch{19}.spm.spatial.realign.estwrite.roptions.prefix = 'r_';
matlabbatch{20}.spm.spatial.coreg.estimate.ref(1) = cfg_dep('Realign: Estimate & Reslice: Mean Image', substruct('.','val', '{}',{19}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','rmean'));
matlabbatch{20}.spm.spatial.coreg.estimate.source(1) = cfg_dep('Named File Selector: sessions(5) - Files', substruct('.','val', '{}',{16}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files', '{}',{5}));
matlabbatch{20}.spm.spatial.coreg.estimate.other = {''};
matlabbatch{20}.spm.spatial.coreg.estimate.eoptions.cost_fun = 'nmi';
matlabbatch{20}.spm.spatial.coreg.estimate.eoptions.sep = [4 2];
matlabbatch{20}.spm.spatial.coreg.estimate.eoptions.tol = [0.02 0.02 0.02 0.001 0.001 0.001 0.01 0.01 0.01 0.001 0.001 0.001];
matlabbatch{20}.spm.spatial.coreg.estimate.eoptions.fwhm = [7 7];
matlabbatch{21}.spm.spatial.normalise.est.subj.vol(1) = cfg_dep('Coregister: Estimate: Coregistered Images', substruct('.','val', '{}',{20}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','cfiles'));
matlabbatch{21}.spm.spatial.normalise.est.eoptions.biasreg = 0.0001;
matlabbatch{21}.spm.spatial.normalise.est.eoptions.biasfwhm = 60;
matlabbatch{21}.spm.spatial.normalise.est.eoptions.tpm = {'C:\Users\ohund\Documents\MATLAB\spm12\tpm\TPM.nii'};
matlabbatch{21}.spm.spatial.normalise.est.eoptions.affreg = 'mni';
matlabbatch{21}.spm.spatial.normalise.est.eoptions.reg = [0 0.001 0.5 0.05 0.2];
matlabbatch{21}.spm.spatial.normalise.est.eoptions.fwhm = 0;
matlabbatch{21}.spm.spatial.normalise.est.eoptions.samp = 2;
matlabbatch{22}.spm.spatial.normalise.write.subj(1).def(1) = cfg_dep('Normalise: Estimate: Deformation (Subj 1)', substruct('.','val', '{}',{21}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','def'));
matlabbatch{22}.spm.spatial.normalise.write.subj(1).resample(1) = cfg_dep('Realign: Estimate & Reslice: Resliced Images (Sess 1)', substruct('.','val', '{}',{19}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{1}, '.','rfiles'));
matlabbatch{22}.spm.spatial.normalise.write.subj(2).def(1) = cfg_dep('Normalise: Estimate: Deformation (Subj 1)', substruct('.','val', '{}',{21}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','def'));
matlabbatch{22}.spm.spatial.normalise.write.subj(2).resample(1) = cfg_dep('Realign: Estimate & Reslice: Resliced Images (Sess 2)', substruct('.','val', '{}',{19}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{2}, '.','rfiles'));
matlabbatch{22}.spm.spatial.normalise.write.subj(3).def(1) = cfg_dep('Normalise: Estimate: Deformation (Subj 1)', substruct('.','val', '{}',{21}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','def'));
matlabbatch{22}.spm.spatial.normalise.write.subj(3).resample(1) = cfg_dep('Realign: Estimate & Reslice: Resliced Images (Sess 3)', substruct('.','val', '{}',{19}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{3}, '.','rfiles'));
matlabbatch{22}.spm.spatial.normalise.write.subj(4).def(1) = cfg_dep('Normalise: Estimate: Deformation (Subj 1)', substruct('.','val', '{}',{21}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','def'));
matlabbatch{22}.spm.spatial.normalise.write.subj(4).resample(1) = cfg_dep('Realign: Estimate & Reslice: Resliced Images (Sess 4)', substruct('.','val', '{}',{19}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{4}, '.','rfiles'));
matlabbatch{22}.spm.spatial.normalise.write.woptions.bb = [-78 -112 -70
                                                           78 76 85];
matlabbatch{22}.spm.spatial.normalise.write.woptions.vox = [2.9 2.9 3];
matlabbatch{22}.spm.spatial.normalise.write.woptions.interp = 5;
matlabbatch{22}.spm.spatial.normalise.write.woptions.prefix = 'n';
matlabbatch{23}.spm.spatial.smooth.data(1) = cfg_dep('Normalise: Write: Normalised Images (Subj 1)', substruct('.','val', '{}',{22}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','files'));
matlabbatch{23}.spm.spatial.smooth.fwhm = [8 8 8];
matlabbatch{23}.spm.spatial.smooth.dtype = 0;
matlabbatch{23}.spm.spatial.smooth.im = 0;
matlabbatch{23}.spm.spatial.smooth.prefix = 's';
matlabbatch{24}.spm.spatial.smooth.data(1) = cfg_dep('Normalise: Write: Normalised Images (Subj 2)', substruct('.','val', '{}',{22}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{2}, '.','files'));
matlabbatch{24}.spm.spatial.smooth.fwhm = [8 8 8];
matlabbatch{24}.spm.spatial.smooth.dtype = 0;
matlabbatch{24}.spm.spatial.smooth.im = 0;
matlabbatch{24}.spm.spatial.smooth.prefix = 's';
matlabbatch{25}.spm.spatial.smooth.data(1) = cfg_dep('Normalise: Write: Normalised Images (Subj 3)', substruct('.','val', '{}',{22}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{3}, '.','files'));
matlabbatch{25}.spm.spatial.smooth.fwhm = [8 8 8];
matlabbatch{25}.spm.spatial.smooth.dtype = 0;
matlabbatch{25}.spm.spatial.smooth.im = 0;
matlabbatch{25}.spm.spatial.smooth.prefix = 's';
matlabbatch{26}.spm.spatial.smooth.data(1) = cfg_dep('Normalise: Write: Normalised Images (Subj 4)', substruct('.','val', '{}',{22}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{4}, '.','files'));
matlabbatch{26}.spm.spatial.smooth.fwhm = [8 8 8];
matlabbatch{26}.spm.spatial.smooth.dtype = 0;
matlabbatch{26}.spm.spatial.smooth.im = 0;
matlabbatch{26}.spm.spatial.smooth.prefix = 's';
matlabbatch{27}.cfg_basicio.run_ops.call_matlab.inputs{1}.directory = {'C:\Users\ohund\Documents\MATLAB\single_results'};
matlabbatch{27}.cfg_basicio.run_ops.call_matlab.inputs{2}.string(1) = cfg_dep('Named Input: file_seperator', substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{27}.cfg_basicio.run_ops.call_matlab.inputs{3}.string(1) = cfg_dep('Named Input: subject', substruct('.','val', '{}',{7}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','input'));
matlabbatch{27}.cfg_basicio.run_ops.call_matlab.outputs{1}.filter.dir = true;
matlabbatch{27}.cfg_basicio.run_ops.call_matlab.fun = 'append';
matlabbatch{28}.spm.stats.fmri_spec.dir(1) = cfg_dep('Call MATLAB function: Call MATLAB: output 1 - filter dir', substruct('.','val', '{}',{27}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','outputs', '{}',{1}));
matlabbatch{28}.spm.stats.fmri_spec.timing.units = 'secs';
matlabbatch{28}.spm.stats.fmri_spec.timing.RT = 2.5;
matlabbatch{28}.spm.stats.fmri_spec.timing.fmri_t = 40;
matlabbatch{28}.spm.stats.fmri_spec.timing.fmri_t0 = 20;
matlabbatch{28}.spm.stats.fmri_spec.sess(1).scans(1) = cfg_dep('Smooth: Smoothed Images', substruct('.','val', '{}',{23}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
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
matlabbatch{28}.spm.stats.fmri_spec.sess(1).cond.tmod = 0;
matlabbatch{28}.spm.stats.fmri_spec.sess(1).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{28}.spm.stats.fmri_spec.sess(1).cond.orth = 1;
matlabbatch{28}.spm.stats.fmri_spec.sess(1).multi = {''};
matlabbatch{28}.spm.stats.fmri_spec.sess(1).regress = struct('name', {}, 'val', {});
matlabbatch{28}.spm.stats.fmri_spec.sess(1).multi_reg(1) = cfg_dep('Realign: Estimate & Reslice: Realignment Param File (Sess 1)', substruct('.','val', '{}',{19}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{1}, '.','rpfile'));
matlabbatch{28}.spm.stats.fmri_spec.sess(1).hpf = 128;
matlabbatch{28}.spm.stats.fmri_spec.sess(2).scans(1) = cfg_dep('Smooth: Smoothed Images', substruct('.','val', '{}',{24}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
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
matlabbatch{28}.spm.stats.fmri_spec.sess(2).cond.tmod = 0;
matlabbatch{28}.spm.stats.fmri_spec.sess(2).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{28}.spm.stats.fmri_spec.sess(2).cond.orth = 1;
matlabbatch{28}.spm.stats.fmri_spec.sess(2).multi = {''};
matlabbatch{28}.spm.stats.fmri_spec.sess(2).regress = struct('name', {}, 'val', {});
matlabbatch{28}.spm.stats.fmri_spec.sess(2).multi_reg(1) = cfg_dep('Realign: Estimate & Reslice: Realignment Param File (Sess 2)', substruct('.','val', '{}',{19}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{2}, '.','rpfile'));
matlabbatch{28}.spm.stats.fmri_spec.sess(2).hpf = 128;
matlabbatch{28}.spm.stats.fmri_spec.sess(3).scans(1) = cfg_dep('Smooth: Smoothed Images', substruct('.','val', '{}',{25}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
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
matlabbatch{28}.spm.stats.fmri_spec.sess(3).cond.tmod = 0;
matlabbatch{28}.spm.stats.fmri_spec.sess(3).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{28}.spm.stats.fmri_spec.sess(3).cond.orth = 1;
matlabbatch{28}.spm.stats.fmri_spec.sess(3).multi = {''};
matlabbatch{28}.spm.stats.fmri_spec.sess(3).regress = struct('name', {}, 'val', {});
matlabbatch{28}.spm.stats.fmri_spec.sess(3).multi_reg(1) = cfg_dep('Realign: Estimate & Reslice: Realignment Param File (Sess 3)', substruct('.','val', '{}',{19}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{3}, '.','rpfile'));
matlabbatch{28}.spm.stats.fmri_spec.sess(3).hpf = 128;
matlabbatch{28}.spm.stats.fmri_spec.sess(4).scans(1) = cfg_dep('Smooth: Smoothed Images', substruct('.','val', '{}',{26}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
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
matlabbatch{28}.spm.stats.fmri_spec.sess(4).cond.tmod = 0;
matlabbatch{28}.spm.stats.fmri_spec.sess(4).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{28}.spm.stats.fmri_spec.sess(4).cond.orth = 1;
matlabbatch{28}.spm.stats.fmri_spec.sess(4).multi = {''};
matlabbatch{28}.spm.stats.fmri_spec.sess(4).regress = struct('name', {}, 'val', {});
matlabbatch{28}.spm.stats.fmri_spec.sess(4).multi_reg(1) = cfg_dep('Realign: Estimate & Reslice: Realignment Param File (Sess 4)', substruct('.','val', '{}',{19}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{4}, '.','rpfile'));
matlabbatch{28}.spm.stats.fmri_spec.sess(4).hpf = 128;
matlabbatch{28}.spm.stats.fmri_spec.fact = struct('name', {}, 'levels', {});
matlabbatch{28}.spm.stats.fmri_spec.bases.hrf.derivs = [0 0];
matlabbatch{28}.spm.stats.fmri_spec.volt = 1;
matlabbatch{28}.spm.stats.fmri_spec.global = 'None';
matlabbatch{28}.spm.stats.fmri_spec.mthresh = 0.5;
matlabbatch{28}.spm.stats.fmri_spec.mask = {''};
matlabbatch{28}.spm.stats.fmri_spec.cvi = 'AR(1)';
matlabbatch{29}.spm.stats.fmri_est.spmmat(1) = cfg_dep('fMRI model specification: SPM.mat File', substruct('.','val', '{}',{28}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{29}.spm.stats.fmri_est.write_residuals = 0;
matlabbatch{29}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{30}.spm.stats.con.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{29}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{30}.spm.stats.con.consess{1}.tcon.name = 'Feet Movement';
matlabbatch{30}.spm.stats.con.consess{1}.tcon.weights = [1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
matlabbatch{30}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{30}.spm.stats.con.consess{2}.tcon.name = 'Left Hand';
matlabbatch{30}.spm.stats.con.consess{2}.tcon.weights = [0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
matlabbatch{30}.spm.stats.con.consess{2}.tcon.sessrep = 'none';
matlabbatch{30}.spm.stats.con.consess{3}.tcon.name = 'Right Hand';
matlabbatch{30}.spm.stats.con.consess{3}.tcon.weights = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
matlabbatch{30}.spm.stats.con.consess{3}.tcon.sessrep = 'none';
matlabbatch{30}.spm.stats.con.consess{4}.tcon.name = 'Tongue';
matlabbatch{30}.spm.stats.con.consess{4}.tcon.weights = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0];
matlabbatch{30}.spm.stats.con.consess{4}.tcon.sessrep = 'none';
matlabbatch{30}.spm.stats.con.consess{5}.tcon.name = 'Movement in General';
matlabbatch{30}.spm.stats.con.consess{5}.tcon.weights = [1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0];
matlabbatch{30}.spm.stats.con.consess{5}.tcon.sessrep = 'none';
matlabbatch{30}.spm.stats.con.consess{6}.tcon.name = 'Left Hand vs. Right Hand';
matlabbatch{30}.spm.stats.con.consess{6}.tcon.weights = [0 0 0 0 0 0 0 1 0 0 0 0 0 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
matlabbatch{30}.spm.stats.con.consess{6}.tcon.sessrep = 'none';
matlabbatch{30}.spm.stats.con.consess{7}.tcon.name = 'Right Hand vs. Left Hand';
matlabbatch{30}.spm.stats.con.consess{7}.tcon.weights = [0 0 0 0 0 0 0 -1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
matlabbatch{30}.spm.stats.con.consess{7}.tcon.sessrep = 'none';
matlabbatch{30}.spm.stats.con.consess{8}.tcon.name = 'Hands';
matlabbatch{30}.spm.stats.con.consess{8}.tcon.weights = [0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
matlabbatch{30}.spm.stats.con.consess{8}.tcon.sessrep = 'none';
matlabbatch{30}.spm.stats.con.consess{9}.tcon.name = 'Hands vs Rest';
matlabbatch{30}.spm.stats.con.consess{9}.tcon.weights = [1 0 0 0 0 0 0 -1 0 0 0 0 0 0 -1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0];
matlabbatch{30}.spm.stats.con.consess{9}.tcon.sessrep = 'none';
matlabbatch{30}.spm.stats.con.consess{10}.tcon.name = 'Foot vs Rest';
matlabbatch{30}.spm.stats.con.consess{10}.tcon.weights = [3 0 0 0 0 0 0 -1 0 0 0 0 0 0 -1 0 0 0 0 0 0 -1 0 0 0 0 0 0 0 0 0 0];
matlabbatch{30}.spm.stats.con.consess{10}.tcon.sessrep = 'none';
matlabbatch{30}.spm.stats.con.consess{11}.tcon.name = 'LH vs Rest';
matlabbatch{30}.spm.stats.con.consess{11}.tcon.weights = [-1 0 0 0 0 0 0 3 0 0 0 0 0 0 -1 0 0 0 0 0 0 -1 0 0 0 0 0 0 0 0 0 0];
matlabbatch{30}.spm.stats.con.consess{11}.tcon.sessrep = 'none';
matlabbatch{30}.spm.stats.con.consess{12}.tcon.name = 'RH vs Rest';
matlabbatch{30}.spm.stats.con.consess{12}.tcon.weights = [-1 0 0 0 0 0 0 -1 0 0 0 0 0 0 3 0 0 0 0 0 0 -1 0 0 0 0 0 0 0 0 0 0];
matlabbatch{30}.spm.stats.con.consess{12}.tcon.sessrep = 'none';
matlabbatch{30}.spm.stats.con.consess{13}.tcon.name = 'Tongue vs Rest';
matlabbatch{30}.spm.stats.con.consess{13}.tcon.weights = [-1 0 0 0 0 0 0 -1 0 0 0 0 0 0 -1 0 0 0 0 0 0 3 0 0 0 0 0 0 0 0 0 0];
matlabbatch{30}.spm.stats.con.consess{13}.tcon.sessrep = 'none';
matlabbatch{30}.spm.stats.con.delete = 1;
matlabbatch{31}.spm.stats.results.spmmat(1) = cfg_dep('Contrast Manager: SPM.mat File', substruct('.','val', '{}',{30}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{31}.spm.stats.results.conspec.titlestr = '';
matlabbatch{31}.spm.stats.results.conspec.contrasts = Inf;
matlabbatch{31}.spm.stats.results.conspec.threshdesc = 'FWE';
matlabbatch{31}.spm.stats.results.conspec.thresh = 0.05;
matlabbatch{31}.spm.stats.results.conspec.extent = 0;
matlabbatch{31}.spm.stats.results.conspec.conjunction = 1;
matlabbatch{31}.spm.stats.results.conspec.mask.none = 1;
matlabbatch{31}.spm.stats.results.units = 1;
matlabbatch{31}.spm.stats.results.export{1}.png = true;
