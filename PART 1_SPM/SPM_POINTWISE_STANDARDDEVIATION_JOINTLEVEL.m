%% This script calculated SPM differences at the joint level for all upper limb joints
% x = TD; y = DCP

%% REACH FORWARDS
% TRUNK
xTrFl = STD_RF_TD.TrunkFlExt';
xTrLatFl = STD_RF_TD.TrunkLateralFl';
xTrAxRot = STD_RF_TD.TrunkAxialRotation';

yTrFl = STD_RF_DCP_TrFlExt';
yTrLatFl = STD_RF_DCP_TrLatFl';
yTrAxRot = STD_RF_DCP_TrRot';

% Create 3D matrix for trunk
YA = cat(3,yTrFl,yTrLatFl,yTrAxRot);
YB = cat(3,xTrFl,xTrLatFl,xTrAxRot);

% Conduct SPM analysis:
spm       = spm1d.stats.hotellings2(YA, YB);
spmi      = spm.inference(0.05);
disp(spmi)
close all
spmi.plot();
spmi.plot_threshold_label();
spmi.plot_p_values();

% SCAPULA
xScTil = STD_RF_TD.ScapTilting';
xScRot = STD_RF_TD.ScapRotation';
xScPro = STD_RF_TD.ScapProRetraction';

yScTil = STD_RF_DCP_ScTil';
yScRot = STD_RF_DCP_ScRot';
yScPro = STD_RF_DCP_ScPro';

% Create 3D matrix for scapula
YA = cat(3,yScTil,yScRot,yScPro);
YB = cat(3,xScTil,xScRot,xScPro);

% Conduct SPM analysis:
spm       = spm1d.stats.hotellings2(YA, YB);
spmi      = spm.inference(0.05);
disp(spmi)
%(2) Plot:
close all
spmi.plot();
spmi.plot_threshold_label();
spmi.plot_p_values();

% SHOULDER
xShAbd = STD_RF_TD.ElevationplaneH2';
xShEl = STD_RF_TD.ShoulderElevationH1';
xShRot = STD_RF_TD.ShoulderRotationH1';

yShEl = STD_RF_DCP_ShEl';
yShRot = STD_RF_DCP_ShRot';
yShAbd = STD_RF_DCP_ShAbd';
% Make sure we have the same number of subjects in ShElevation & rotation/Abduction trials
yShEl(30,:) =  [];
yShEl(28,:) =  [];
yShEl(19,:) =  [];
yShEl(18,:) =  [];
yShEl(17,:) =  [];
yShEl(16,:) =  [];
yShEl(14,:) =  [];
yShRot(21,:) = [];
yShAbd(21,:) = [];

% Create 3D matrix for shoulder
YA = cat(3,yShAbd,yShRot,yShEl);
YB = cat(3,xShAbd,xShRot,xShEl);

% Conduct SPM analysis:
spm       = spm1d.stats.hotellings2(YA, YB);
spmi      = spm.inference(0.05);
disp(spmi)
%(2) Plot:
close all
spmi.plot();
spmi.plot_threshold_label();
spmi.plot_p_values();


% ELBOW
xElbFl = STD_RF_TD.ElbowFlExt';
xElbProSup = STD_RF_TD.ElbowProSupination';

yElbFl = STD_RF_DCP_ElbowFlExt';
yElbProSup= STD_RF_DCP_ElbowProSup';

% Create 3D matrix for elbow
YA = cat(3,yElbFl,yElbProSup);
YB = cat(3,xElbFl,xElbProSup);

% Conduct SPM analysis:
spm       = spm1d.stats.hotellings2(YA, YB);
spmi      = spm.inference(0.05);
disp(spmi)
%(2) Plot:
close all
spmi.plot();
spmi.plot_threshold_label();
spmi.plot_p_values();

% WRIST
xWrFlExt = STD_RF_TD.WristFlExt';
xWrDev = STD_RF_TD.WristDeviation';

yWrFlExt = STD_RF_DCP_WrFlExt';
yWrDev= STD_RF_DCP_WrDev';

% Create 3D matrix for wrist
YA = cat(3,yWrFlExt,yWrDev);
YB = cat(3,xWrFlExt,xWrDev);

% Conduct SPM analysis:
spm       = spm1d.stats.hotellings2(YA, YB);
spmi      = spm.inference(0.05);
disp(spmi)
%(2) Plot:
close all
spmi.plot();
spmi.plot_threshold_label();
spmi.plot_p_values();


%% REACH AND GRASP VERTICAL

% TRUNK
xTrFl = STD_RGV_TD.TrunkFlExt';
xTrLatFl = STD_RGV_TD.TrunkLateralFl';
xTrAxRot = STD_RGV_TD.TrunkAxialRotation';

yTrFl = STD_RGV_DCP_TrFlExt';
yTrLatFl = STD_RGV_DCP_TrLatFl';
yTrAxRot = STD_RGV_DCP_TrRot';

% Create 3D matrix for trunk
YA = cat(3,yTrFl,yTrLatFl,yTrAxRot);
YB = cat(3,xTrFl,xTrLatFl,xTrAxRot);

% Conduct SPM analysis:
spm       = spm1d.stats.hotellings2(YA, YB);
spmi      = spm.inference(0.05);
disp(spmi)
%(2) Plot:
close all
spmi.plot();
spmi.plot_threshold_label();
spmi.plot_p_values();

% SCAPULA
xScTil = STD_RGV_TD.ScapTilting';
xScRot = STD_RGV_TD.ScapRotation';
xScPro = STD_RGV_TD.ScapProRetraction';

yScTil = STD_RGV_DCP_ScTil';
yScRot = STD_RGV_DCP_ScRot';
yScPro = STD_RGV_DCP_ScPro';

% Create 3D matrix for scapula
YA = cat(3,yScTil,yScRot,yScPro);
YB = cat(3,xScTil,xScRot,xScPro);

% Conduct SPM analysis:
spm       = spm1d.stats.hotellings2(YA, YB);
spmi      = spm.inference(0.05);
disp(spmi)
%(2) Plot:
close all
spmi.plot();
spmi.plot_threshold_label();
spmi.plot_p_values();

% SHOULDER
xShAbd = STD_RGV_TD.ElevationplaneH2';
xShEl = STD_RGV_TD.ShoulderElevationH1';
xShRot = STD_RGV_TD.ShoulderRotationH1';

yShEl = STD_RGV_DCP_ShEl';
yShRot = STD_RGV_DCP_ShRot';
yShAbd = STD_RGV_DCP_ShAbd';

% Make sure we have the same number of subjects in ShElevation & rotation/Abduction trials
yShEl(26,:) =  [];
yShEl(19,:) =  [];
yShEl(18,:) =  [];
yShEl(17,:) =  [];
yShEl(4,:) =  [];

% Create 3D matrix for shoulder
YA = cat(3,yShAbd,yShRot,yShEl);
YB = cat(3,xShAbd,xShRot,xShEl);

% Conduct SPM analysis:
spm       = spm1d.stats.hotellings2(YA, YB);
spmi      = spm.inference(0.05);
disp(spmi)
%(2) Plot:
close all
spmi.plot();
spmi.plot_threshold_label();
spmi.plot_p_values();

% ELBOW
xElbFl = STD_RGV_TD.ElbowFlExt';
xElbProSup = STD_RGV_TD.ElbowProSupination';

yElbFl = STD_RGV_DCP_ElbowFlExt';
yElbProSup= STD_RGV_DCP_ElbowProSup';

% Create 3D matrix for elbow
YA = cat(3,yElbFl,yElbProSup);
YB = cat(3,xElbFl,xElbProSup);

% Conduct SPM analysis:
spm       = spm1d.stats.hotellings2(YA, YB);
spmi      = spm.inference(0.05);
disp(spmi)
%(2) Plot:
close all
spmi.plot();
spmi.plot_threshold_label();
spmi.plot_p_values();

% WRIST
xWrFlExt = STD_RGV_TD.WristFlExt';
xWrDev = STD_RGV_TD.WristDeviation';

yWrFlExt = STD_RGV_DCP_WrFlExt';
yWrDev= STD_RGV_DCP_WrDev';

% Create 3D matrix for wrist
YA = cat(3,yWrFlExt,yWrDev);
YB = cat(3,xWrFlExt,xWrDev);

% Conduct SPM analysis:
spm       = spm1d.stats.hotellings2(YA, YB);
spmi      = spm.inference(0.05);
disp(spmi)
%(2) Plot:
close all
spmi.plot();
spmi.plot_threshold_label();
spmi.plot_p_values();

%% REACH SIDEWAYS

% TRUNK
xTrFl = STD_RS_TD.TrunkFlExt';
xTrLatFl = STD_RS_TD.TrunkLateralFl';
xTrAxRot = STD_RS_TD.TrunkAxialRotation';

yTrFl = STD_RS_DCP_TrFlExt';
yTrLatFl = STD_RS_DCP_TrLatFl';
yTrAxRot = STD_RS_DCP_TrRot';

% Create 3D matrix for trunk
YA = cat(3,yTrFl,yTrLatFl,yTrAxRot);
YB = cat(3,xTrFl,xTrLatFl,xTrAxRot);

% Conduct SPM analysis:
spm       = spm1d.stats.hotellings2(YA, YB);
spmi      = spm.inference(0.05);
disp(spmi)
%(2) Plot:
close all
spmi.plot();
spmi.plot_threshold_label();
spmi.plot_p_values();

% SCAPULA
xScTil = STD_RS_TD.ScapTilting';
xScRot = STD_RS_TD.ScapRotation';
xScPro = STD_RS_TD.ScapProRetraction';

yScTil = STD_RS_DCP_ScTil';
yScRot = STD_RS_DCP_ScRot';
yScPro = STD_RS_DCP_ScPro';

% Create 3D matrix for scapula
YA = cat(3,yScTil,yScRot,yScPro);
YB = cat(3,xScTil,xScRot,xScPro);

% Conduct SPM analysis:
spm       = spm1d.stats.hotellings2(YA, YB);
spmi      = spm.inference(0.05);
disp(spmi)
%(2) Plot:
close all
spmi.plot();
spmi.plot_threshold_label();
spmi.plot_p_values();

% SHOULDER
xShAbd = STD_RS_TD.ElevationplaneH2';
xShEl = STD_RS_TD.ShoulderElevationH1';
xShRot = STD_RS_TD.ShoulderRotationH1';

yShEl = STD_RS_DCP_ShEl';
yShRot = STD_RS_DCP_ShRot';
yShAbd = STD_RS_DCP_ShAbd';

% Make sure we have the same number of subjects in ShElevation & rotation/Abduction trials
yShEl(18,:) =  [];
yShEl(17,:) =  [];
yShRot(23,:) = [];
yShAbd(23,:) = [];
% Create 3D matrix for shoulder
YA = cat(3,yShAbd,yShRot,yShEl);
YB = cat(3,xShAbd,xShRot,xShEl);

% Conduct SPM analysis:
spm       = spm1d.stats.hotellings2(YA, YB);
spmi      = spm.inference(0.05);
disp(spmi)
%(2) Plot:
close all
spmi.plot();
spmi.plot_threshold_label();
spmi.plot_p_values();

% ELBOW
xElbFl = STD_RS_TD.ElbowFlExt';
xElbProSup = STD_RS_TD.ElbowProSupination';

yElbFl = STD_RS_DCP_ElbowFlExt';
yElbProSup= STD_RS_DCP_ElbowProSup';

% Create 3D matrix for elbow
YA = cat(3,yElbFl,yElbProSup);
YB = cat(3,xElbFl,xElbProSup);

% Conduct SPM analysis:
spm       = spm1d.stats.hotellings2(YA, YB);
spmi      = spm.inference(0.05);
disp(spmi)
%(2) Plot:
close all
spmi.plot();
spmi.plot_threshold_label();
spmi.plot_p_values();

% WRIST
xWrFlExt = STD_RS_TD.WristFlExt';
xWrDev = STD_RS_TD.WristDeviation';

yWrFlExt = STD_RS_DCP_WrFlExt';
yWrDev= STD_RS_DCP_WrDev';

% Create 3D matrix for wrist
YA = cat(3,yWrFlExt,yWrDev);
YB = cat(3,xWrFlExt,xWrDev);

% Conduct SPM analysis:
spm       = spm1d.stats.hotellings2(YA, YB);
spmi      = spm.inference(0.05);
disp(spmi)
%(2) Plot:
close all
spmi.plot();
spmi.plot_threshold_label();
spmi.plot_p_values();
