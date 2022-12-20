
%% WRIST FLEXION

yY1 = STD_RS_DCP_WrFlExt';
yX1 =STD_RS_TD.WristFlExt';

%(1) Conduct normality test:
alpha     = 0.05;
spm       = spm1d.stats.normality.ttest2(yY1, yX1);
spmi      = spm.inference(0.05);
disp(spmi)

%(2) Plot:
% close all
figure('position', [0 0  1200 300])
subplot(131);  plot(yY1', 'k');  hold on;  plot(yX1', 'r');  title('Data')
subplot(132);  plot(spm.residuals', 'k');  title('Residuals')
subplot(133);  spmi.plot();  title('Normality test')

% Plot mean and STD
% figure('position', [0 0 1000 300])
% subplot(121)
figure();
spm1d.plot.plot_meanSD(yY1, 'color','k');
hold on
spm1d.plot.plot_meanSD(yX1, 'color','r');
% title('Mean and SD')
ylim([0 20]);

%(1) Conduct non-parametric test:
rng(0)
alpha      = 0.05/2;
two_tailed = false;
iterations = 1000;
snpm       = spm1d.stats.nonparam.ttest2(yY1, yX1);
snpmi      = snpm.inference(alpha, 'two_tailed', two_tailed, 'iterations', iterations);
disp('Non-Parametric results')
disp( snpmi )

%(2) Compare to parametric inference:
spm        = spm1d.stats.ttest2(yY1, yX1);
spmi       = spm.inference(alpha, 'two_tailed',two_tailed);
disp('Parametric results')
disp( spmi )
% plot:
% close all
figure('position', [0 0 1000 300])
subplot(121);  spmi.plot();  spmi.plot_threshold_label();  spmi.plot_p_values();
subplot(122);  snpmi.plot(); snpmi.plot_threshold_label(); snpmi.plot_p_values();

%% WRIST DEVIATION

yY2 = STD_RS_DCP_WrDev';
yX2 =STD_RS_TD.WristDeviation';

%(1) Conduct normality test:
alpha     = 0.05;
spm       = spm1d.stats.normality.ttest2(yY2, yX2);
spmi      = spm.inference(0.05);
disp(spmi)

%(2) Plot:
% close all
figure('position', [0 0  1200 300])
subplot(131);  plot(yY2', 'k');  hold on;  plot(yX2', 'r');  title('Data')
subplot(132);  plot(spm.residuals', 'k');  title('Residuals')
subplot(133);  spmi.plot();  title('Normality test')

% Plot mean and STD
% figure('position', [0 0 1000 300])
% subplot(121)
figure();
spm1d.plot.plot_meanSD(yY2, 'color','k');
hold on
spm1d.plot.plot_meanSD(yX2, 'color','r');
% title('Mean and SD')
ylim([0 20]);

%(1) Conduct non-parametric test:
rng(0)
alpha      = 0.05/2;
two_tailed = false;
iterations = 1000;
snpm       = spm1d.stats.nonparam.ttest2(yY2, yX2);
snpmi      = snpm.inference(alpha, 'two_tailed', two_tailed, 'iterations', iterations);
disp('Non-Parametric results')
disp( snpmi )

%(2) Compare to parametric inference:
spm        = spm1d.stats.ttest2(yY2, yX2);
spmi       = spm.inference(alpha, 'two_tailed',two_tailed);
disp('Parametric results')
disp( spmi )
% plot:
% close all
figure('position', [0 0 1000 300])
subplot(121);  spmi.plot();  spmi.plot_threshold_label();  spmi.plot_p_values();
subplot(122);  snpmi.plot(); snpmi.plot_threshold_label(); snpmi.plot_p_values();
%% ELBOW FLEXION/EXTENSION
yY3 = STD_RS_DCP_ElbowFlExt';
yX3 =STD_RS_TD.ElbowFlExt';

%(1) Conduct normality test:
alpha     = 0.05;
spm       = spm1d.stats.normality.ttest2(yY3, yX3);
spmi      = spm.inference(0.05);
disp(spmi)

%(2) Plot:
% close all
figure('position', [0 0  1200 300])
subplot(131);  plot(yY3', 'k');  hold on;  plot(yX3', 'r');  title('Data')
subplot(132);  plot(spm.residuals', 'k');  title('Residuals')
subplot(133);  spmi.plot();  title('Normality test')

% Plot mean and STD
% figure('position', [0 0 1000 300])
% subplot(121)
figure();
spm1d.plot.plot_meanSD(yY3, 'color','k');
hold on
spm1d.plot.plot_meanSD(yX3, 'color','r');
% title('Mean and SD')
ylim([0 20]);

%(1) Conduct non-parametric test:
rng(0)
alpha      = 0.05/2;
two_tailed = false;
iterations = 1000;
snpm       = spm1d.stats.nonparam.ttest2(yY3, yX3);
snpmi      = snpm.inference(alpha, 'two_tailed', two_tailed, 'iterations', iterations);
disp('Non-Parametric results')
disp( snpmi )

%(2) Compare to parametric inference:
spm        = spm1d.stats.ttest2(yY3, yX3);
spmi       = spm.inference(alpha, 'two_tailed',two_tailed);
disp('Parametric results')
disp( spmi )
% plot:
% close all
figure('position', [0 0 1000 300])
subplot(121);  spmi.plot();  spmi.plot_threshold_label();  spmi.plot_p_values();
subplot(122);  snpmi.plot(); snpmi.plot_threshold_label(); snpmi.plot_p_values();

%% ELBOW SUPINATION
yY4 = STD_RS_DCP_ElbowProSup';
yX4 =STD_RS_TD.ElbowProSupination';

%(1) Conduct normality test:
alpha     = 0.05;
spm       = spm1d.stats.normality.ttest2(yY4, yX4);
spmi      = spm.inference(0.05);
disp(spmi)

%(2) Plot:
% close all
figure('position', [0 0  1200 300])
subplot(131);  plot(yY4', 'k');  hold on;  plot(yX4', 'r');  title('Data')
subplot(132);  plot(spm.residuals', 'k');  title('Residuals')
subplot(133);  spmi.plot();  title('Normality test')

% Plot mean and STD
% figure('position', [0 0 1000 300])
% subplot(121)
figure();
spm1d.plot.plot_meanSD(yY4, 'color','k');
hold on
spm1d.plot.plot_meanSD(yX4, 'color','r');
% title('Mean and SD')
ylim([0 20]);

%(1) Conduct non-parametric test:
rng(0)
alpha      = 0.05/2;
two_tailed = false;
iterations = 1000;
snpm       = spm1d.stats.nonparam.ttest2(yY4, yX4);
snpmi      = snpm.inference(alpha, 'two_tailed', two_tailed, 'iterations', iterations);
disp('Non-Parametric results')
disp( snpmi )

%(2) Compare to parametric inference:
spm        = spm1d.stats.ttest2(yY4, yX4);
spmi       = spm.inference(alpha, 'two_tailed',two_tailed);
disp('Parametric results')
disp( spmi )
% plot:
% close all
figure('position', [0 0 1000 300])
subplot(121);  spmi.plot();  spmi.plot_threshold_label();  spmi.plot_p_values();
subplot(122);  snpmi.plot(); snpmi.plot_threshold_label(); snpmi.plot_p_values();

%% SHOULDER ELEVATION
yY5 = STD_RS_DCP_ShEl';
yX5 = STD_RS_TD.ShoulderElevationH2';

%(1) Conduct normality test:
alpha     = 0.05;
spm       = spm1d.stats.normality.ttest2(yY5, yX5);
spmi      = spm.inference(0.05);
disp(spmi)

%(2) Plot:
% close all
figure('position', [0 0  1200 300])
subplot(131);  plot(yY5', 'k');  hold on;  plot(yX5', 'r');  title('Data')
subplot(132);  plot(spm.residuals', 'k');  title('Residuals')
subplot(133);  spmi.plot();  title('Normality test')

% Plot mean and STD
% figure('position', [0 0 1000 300])
% subplot(121)
figure();
spm1d.plot.plot_meanSD(yY5, 'color','k');
hold on
spm1d.plot.plot_meanSD(yX5, 'color','r');
% title('Mean and SD')
ylim([0 20]);

%(1) Conduct non-parametric test:
rng(0)
alpha      = 0.05/3;
two_tailed = false;
iterations = 1000;
snpm       = spm1d.stats.nonparam.ttest2(yY5, yX5);
snpmi      = snpm.inference(alpha, 'two_tailed', two_tailed, 'iterations', iterations);
disp('Non-Parametric results')
disp( snpmi )

%(2) Compare to parametric inference:
spm        = spm1d.stats.ttest2(yY5, yX5);
spmi       = spm.inference(alpha, 'two_tailed',two_tailed);
disp('Parametric results')
disp( spmi )
% plot:
% close all
figure('position', [0 0 1000 300])
subplot(121);  spmi.plot();  spmi.plot_threshold_label();  spmi.plot_p_values();
subplot(122);  snpmi.plot(); snpmi.plot_threshold_label(); snpmi.plot_p_values();

%% SHOULDER ROTATION
yY6 = STD_RS_DCP_ShRot';
yX6 = STD_RS_TD.ShoulderRotationH1';

% Remove H34 from TDs
yX6(8,:) = [];

%(1) Conduct normality test:
alpha     = 0.05;
spm       = spm1d.stats.normality.ttest2(yY6, yX6);
spmi      = spm.inference(0.05);
disp(spmi)

%(2) Plot:
% close all
figure('position', [0 0  1200 300])
subplot(131);  plot(yY6', 'k');  hold on;  plot(yX6', 'r');  title('Data')
subplot(132);  plot(spm.residuals', 'k');  title('Residuals')
subplot(133);  spmi.plot();  title('Normality test')

% Plot mean and STD
% figure('position', [0 0 1000 300])
% subplot(121)
figure();
spm1d.plot.plot_meanSD(yY6, 'color','k');
hold on
spm1d.plot.plot_meanSD(yX6, 'color','r');
% title('Mean and SD')
ylim([0 20]);

%(1) Conduct non-parametric test:
rng(0)
alpha      = 0.05/3;
two_tailed = false;
iterations = 1000;
snpm       = spm1d.stats.nonparam.ttest2(yY6, yX6);
snpmi      = snpm.inference(alpha, 'two_tailed', two_tailed, 'iterations', iterations);
disp('Non-Parametric results')
disp( snpmi )

%(2) Compare to parametric inference:
spm        = spm1d.stats.ttest2(yY6, yX6);
spmi       = spm.inference(alpha, 'two_tailed',two_tailed);
disp('Parametric results')
disp( spmi )
% plot:
% close all
figure('position', [0 0 1000 300])
subplot(121);  spmi.plot();  spmi.plot_threshold_label();  spmi.plot_p_values();
subplot(122);  snpmi.plot(); snpmi.plot_threshold_label(); snpmi.plot_p_values();

%% SHOULDER ABDUCTION
yY7 = STD_RS_DCP_ShAbd';
yX7 = STD_RS_TD.ElevationplaneH1';

% Remove H34 from TDs
yX7(8,:) = [];

%(1) Conduct normality test:
alpha     = 0.05;
spm       = spm1d.stats.normality.ttest2(yY7, yX7);
spmi      = spm.inference(0.05);
disp(spmi)

%(2) Plot:
% close all
figure('position', [0 0  1200 300])
subplot(131);  plot(yY7', 'k');  hold on;  plot(yX7', 'r');  title('Data')
subplot(132);  plot(spm.residuals', 'k');  title('Residuals')
subplot(133);  spmi.plot();  title('Normality test')

% Plot mean and STD
% figure('position', [0 0 1000 300])
% subplot(121)
figure();
spm1d.plot.plot_meanSD(yY7, 'color','k');
hold on
spm1d.plot.plot_meanSD(yX7, 'color','r');
% title('Mean and SD')
ylim([0 20]);

%(1) Conduct non-parametric test:
rng(0)
alpha      = 0.05/3;
two_tailed = false;
iterations = 1000;
snpm       = spm1d.stats.nonparam.ttest2(yY7, yX7);
snpmi      = snpm.inference(alpha, 'two_tailed', two_tailed, 'iterations', iterations);
disp('Non-Parametric results')
disp( snpmi )

%(2) Compare to parametric inference:
spm        = spm1d.stats.ttest2(yY7, yX7);
spmi       = spm.inference(alpha, 'two_tailed',two_tailed);
disp('Parametric results')
disp( spmi )
% plot:
% close all
figure('position', [0 0 1000 300])
subplot(121);  spmi.plot();  spmi.plot_threshold_label();  spmi.plot_p_values();
subplot(122);  snpmi.plot(); snpmi.plot_threshold_label(); snpmi.plot_p_values();

%% SCAPULA TILTING
yY8 = STD_RS_DCP_ScTil';
yX8 = STD_RS_TD.ScapTilting';

%(1) Conduct normality test:
alpha     = 0.05;
spm       = spm1d.stats.normality.ttest2(yY8, yX8);
spmi      = spm.inference(0.05);
disp(spmi)

%(2) Plot:
% close all
figure('position', [0 0  1200 300])
subplot(131);  plot(yY8', 'k');  hold on;  plot(yX8', 'r');  title('Data')
subplot(132);  plot(spm.residuals', 'k');  title('Residuals')
subplot(133);  spmi.plot();  title('Normality test')

% Plot mean and STD
% figure('position', [0 0 1000 300])
% subplot(121)
figure();
spm1d.plot.plot_meanSD(yY8, 'color','k');
hold on
spm1d.plot.plot_meanSD(yX8, 'color','r');
% title('Mean and SD')
ylim([0 20]);

%(1) Conduct non-parametric test:
rng(0)
alpha      = 0.05/3;
two_tailed = false;
iterations = 1000;
snpm       = spm1d.stats.nonparam.ttest2(yY8, yX8);
snpmi      = snpm.inference(alpha, 'two_tailed', two_tailed, 'iterations', iterations);
disp('Non-Parametric results')
disp( snpmi )

%(2) Compare to parametric inference:
spm        = spm1d.stats.ttest2(yY8, yX8);
spmi       = spm.inference(alpha, 'two_tailed',two_tailed);
disp('Parametric results')
disp( spmi )
% plot:
% close all
figure('position', [0 0 1000 300])
subplot(121);  spmi.plot();  spmi.plot_threshold_label();  spmi.plot_p_values();
subplot(122);  snpmi.plot(); snpmi.plot_threshold_label(); snpmi.plot_p_values();

%% SCAPULA ROTATION
yY9 = STD_RS_DCP_ScRot';
yX9 = STD_RS_TD.ScapRotation';

%(1) Conduct normality test:
alpha     = 0.05;
spm       = spm1d.stats.normality.ttest2(yY9, yX9);
spmi      = spm.inference(0.05);
disp(spmi)

%(2) Plot:
% close all
figure('position', [0 0  1200 300])
subplot(131);  plot(yY9', 'k');  hold on;  plot(yX9', 'r');  title('Data')
subplot(132);  plot(spm.residuals', 'k');  title('Residuals')
subplot(133);  spmi.plot();  title('Normality test')

% Plot mean and STD
% figure('position', [0 0 1000 300])
% subplot(121)
figure();
spm1d.plot.plot_meanSD(yY9, 'color','k');
hold on
spm1d.plot.plot_meanSD(yX9, 'color','r');
% title('Mean and SD')
ylim([0 20]);

%(1) Conduct non-parametric test:
rng(0)
alpha      = 0.05/3;
two_tailed = false;
iterations = 1000;
snpm       = spm1d.stats.nonparam.ttest2(yY9, yX9);
snpmi      = snpm.inference(alpha, 'two_tailed', two_tailed, 'iterations', iterations);
disp('Non-Parametric results')
disp( snpmi )

%(2) Compare to parametric inference:
spm        = spm1d.stats.ttest2(yY9, yX9);
spmi       = spm.inference(alpha, 'two_tailed',two_tailed);
disp('Parametric results')
disp( spmi )
% plot:
% close all
figure('position', [0 0 1000 300])
subplot(121);  spmi.plot();  spmi.plot_threshold_label();  spmi.plot_p_values();
subplot(122);  snpmi.plot(); snpmi.plot_threshold_label(); snpmi.plot_p_values();

%% SCAP PRO/RETRACTION
yY10 = STD_RS_DCP_ScPro';
yX10 = STD_RS_TD.ScapProRetraction';

%(1) Conduct normality test:
alpha     = 0.05;
spm       = spm1d.stats.normality.ttest2(yY10, yX10);
spmi      = spm.inference(0.05);
disp(spmi)

%(2) Plot:
% close all
figure('position', [0 0  1200 300])
subplot(131);  plot(yY10', 'k');  hold on;  plot(yX10', 'r');  title('Data')
subplot(132);  plot(spm.residuals', 'k');  title('Residuals')
subplot(133);  spmi.plot();  title('Normality test')

% Plot mean and STD
% figure('position', [0 0 1000 300])
% subplot(121)
figure();
spm1d.plot.plot_meanSD(yY10, 'color','k');
hold on
spm1d.plot.plot_meanSD(yX10, 'color','r');
% title('Mean and SD')
ylim([0 20]);

%(1) Conduct non-parametric test:
rng(0)
alpha      = 0.05/3;
two_tailed = false;
iterations = 1000;
snpm       = spm1d.stats.nonparam.ttest2(yY10, yX10);
snpmi      = snpm.inference(alpha, 'two_tailed', two_tailed, 'iterations', iterations);
disp('Non-Parametric results')
disp( snpmi )

%(2) Compare to parametric inference:
spm        = spm1d.stats.ttest2(yY10, yX10);
spmi       = spm.inference(alpha, 'two_tailed',two_tailed);
disp('Parametric results')
disp( spmi )
% plot:
% close all
figure('position', [0 0 1000 300])
subplot(121);  spmi.plot();  spmi.plot_threshold_label();  spmi.plot_p_values();
subplot(122);  snpmi.plot(); snpmi.plot_threshold_label(); snpmi.plot_p_values();

%% TRUNK FL/EXT
yY11 = STD_RS_DCP_TrFlExt';
yX11 = STD_RS_TD.TrunkFlExt';

%(1) Conduct normality test:
alpha     = 0.05;
spm       = spm1d.stats.normality.ttest2(yY11, yX11);
spmi      = spm.inference(0.05);
disp(spmi)

%(2) Plot:
% close all
figure('position', [0 0  1200 300])
subplot(131);  plot(yY11', 'k');  hold on;  plot(yX11', 'r');  title('Data')
subplot(132);  plot(spm.residuals', 'k');  title('Residuals')
subplot(133);  spmi.plot();  title('Normality test')

% Plot mean and STD
% figure('position', [0 0 1000 300])
% subplot(121)
figure();
spm1d.plot.plot_meanSD(yY11, 'color','k');
hold on
spm1d.plot.plot_meanSD(yX11, 'color','r');
% title('Mean and SD')
ylim([0 20]);

%(1) Conduct non-parametric test:
rng(0)
alpha      = 0.05/3;
two_tailed = false;
iterations = 1000;
snpm       = spm1d.stats.nonparam.ttest2(yY11, yX11);
snpmi      = snpm.inference(alpha, 'two_tailed', two_tailed, 'iterations', iterations);
disp('Non-Parametric results')
disp( snpmi )

%(2) Compare to parametric inference:
spm        = spm1d.stats.ttest2(yY11, yX11);
spmi       = spm.inference(alpha, 'two_tailed',two_tailed);
disp('Parametric results')
disp( spmi )
% plot:
% close all
figure('position', [0 0 1000 300])
subplot(121);  spmi.plot();  spmi.plot_threshold_label();  spmi.plot_p_values();
subplot(122);  snpmi.plot(); snpmi.plot_threshold_label(); snpmi.plot_p_values();

%% TRUNK AXIAL ROTATION
yY12 = STD_RS_DCP_TrRot';
yX12 = STD_RS_TD.TrunkAxialRotation';

%(1) Conduct normality test:
alpha     = 0.05;
spm       = spm1d.stats.normality.ttest2(yY12, yX12);
spmi      = spm.inference(0.05);
disp(spmi)

%(2) Plot:
% close all
figure('position', [0 0  1200 300])
subplot(131);  plot(yY12', 'k');  hold on;  plot(yX12', 'r');  title('Data')
subplot(132);  plot(spm.residuals', 'k');  title('Residuals')
subplot(133);  spmi.plot();  title('Normality test')

% Plot mean and STD
% figure('position', [0 0 1000 300])
% subplot(121)
figure();
spm1d.plot.plot_meanSD(yY12, 'color','k');
hold on
spm1d.plot.plot_meanSD(yX12, 'color','r');
% title('Mean and SD')
ylim([0 20]);

%(1) Conduct non-parametric test:
rng(0)
alpha      = 0.05/3;
two_tailed = false;
iterations = 1000;
snpm       = spm1d.stats.nonparam.ttest2(yY12, yX12);
snpmi      = snpm.inference(alpha, 'two_tailed', two_tailed, 'iterations', iterations);
disp('Non-Parametric results')
disp( snpmi )

%(2) Compare to parametric inference:
spm        = spm1d.stats.ttest2(yY12, yX12);
spmi       = spm.inference(alpha, 'two_tailed',two_tailed);
disp('Parametric results')
% title('Mean and SD')
ylim([0 20]);
% plot:
% close all
figure('position', [0 0 1000 300])
subplot(121);  spmi.plot();  spmi.plot_threshold_label();  spmi.plot_p_values();
subplot(122);  snpmi.plot(); snpmi.plot_threshold_label(); snpmi.plot_p_values();

%% TRUNK LATERAL FLEXION
yY13 = STD_RS_DCP_TrLatFl';
yX13 = STD_RS_TD.TrunkLateralFl';

%(1) Conduct normality test:
alpha     = 0.05;
spm       = spm1d.stats.normality.ttest2(yY13, yX13);
spmi      = spm.inference(0.05);
disp(spmi)

%(2) Plot:
% close all
figure('position', [0 0  1200 300])
subplot(131);  plot(yY13', 'k');  hold on;  plot(yX13', 'r');  title('Data')
subplot(132);  plot(spm.residuals', 'k');  title('Residuals')
subplot(133);  spmi.plot();  title('Normality test')

% Plot mean and STD
% figure('position', [0 0 1000 300])
% subplot(121)
figure();
spm1d.plot.plot_meanSD(yY13, 'color','k');
hold on
spm1d.plot.plot_meanSD(yX13, 'color','r');
% title('Mean and SD')
ylim([0 20]);

%(1) Conduct non-parametric test:
rng(0)
alpha      = 0.05/3;
two_tailed = false;
iterations = 1000;
snpm       = spm1d.stats.nonparam.ttest2(yY13, yX13);
snpmi      = snpm.inference(alpha, 'two_tailed', two_tailed, 'iterations', iterations);
disp('Non-Parametric results')
disp( snpmi )

%(2) Compare to parametric inference:
spm        = spm1d.stats.ttest2(yY13, yX13);
spmi       = spm.inference(alpha, 'two_tailed',two_tailed);
disp('Parametric results')
disp( spmi )
% plot:
% close all
figure('position', [0 0 1000 300])
subplot(121);  spmi.plot();  spmi.plot_threshold_label();  spmi.plot_p_values();
subplot(122);  snpmi.plot(); snpmi.plot_threshold_label(); snpmi.plot_p_values();