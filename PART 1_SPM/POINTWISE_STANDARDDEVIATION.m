%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% %%%%%%%%%%%%%%% DCP %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load('Angles_DCP.mat');

%% Caculate STDs
% REACH FORWARD - All subjects
subjects_RF = fieldnames(Angles_DCP);
for q = 1:length(subjects_RF)
    angle_name = fieldnames(Angles_DCP.(subjects_RF{q}).RF);
    for r = 1:length(angle_name)
        STD_RF_DCP.(subjects_RF{q}).(angle_name{r}) = nanstd(Angles_DCP.(subjects_RF{q}).RF.(angle_name{r}),0,2);
    end
end
% REACH AND GRASP VERTICAL - DCP15/DCP21/DCP30/DCP31 do not have RGV
subjects_RGV = {'DCP01','DCP02','DCP03','DCP04','DCP05','DCP06','DCP07','DCP08','DCP09','DCP10','DCP11','DCP12','DCP13','DCP14',...
                 'DCP16','DCP17','DCP18','DCP19','DCP20','DCP22','DCP23','DCP24','DCP25','DCP26','DCP27',...
                 'DCP28','DCP29','DCP32','DCP33','DCP34','DCP35'};
             
for q = 1:length(subjects_RGV)
    angle_name = fieldnames(Angles_DCP.(subjects_RGV{q}).RGV);
    for r = 1:length(angle_name)
        STD_RGV_DCP.(subjects_RGV{q}).(angle_name{r}) = nanstd(Angles_DCP.(subjects_RGV{q}).RGV.(angle_name{r}),0,2);
    end
end
% REACH SIDEWAYS - DCP28 do not have RS
subjects_RS = {'DCP01','DCP02','DCP03','DCP04','DCP05','DCP06','DCP07','DCP08','DCP09','DCP10','DCP11','DCP12','DCP13','DCP14',...
                 'DCP15','DCP16','DCP17','DCP18','DCP19','DCP20','DCP21','DCP22','DCP23','DCP24','DCP25','DCP26','DCP27',...
                 'DCP29','DCP30','DCP31','DCP32','DCP33','DCP34','DCP35'};
for q = 1:length(subjects_RS)
    angle_name = fieldnames(Angles_DCP.(subjects_RS{q}).RS);
    for r = 1:length(angle_name)
        STD_RS_DCP.(subjects_RS{q}).(angle_name{r}) = nanstd(Angles_DCP.(subjects_RS{q}).RS.(angle_name{r}),0,2);
    end
end

%% PLOT STDs - REACH FORWARD
% WRIST FLEXION/DEVIATION
% DCP21 does not have wrist angles 
subjects_RF = {'DCP01','DCP02','DCP03','DCP04','DCP05','DCP06','DCP07','DCP08','DCP09','DCP10','DCP11','DCP12','DCP13','DCP14',...
                 'DCP15','DCP16','DCP17','DCP18','DCP19','DCP20','DCP22','DCP23','DCP24','DCP25','DCP26','DCP27',...
                 'DCP28','DCP29','DCP30','DCP31','DCP32','DCP33','DCP34','DCP35'};
for q = 1:length(subjects_RF)
    for r = 1:length(angle_name)
        STD_RF_DCP2(q).WrFlExt = STD_RF_DCP.(subjects_RF{q}).WristFlExt; 
        STD_RF_DCP2(q).WrDev = STD_RF_DCP.(subjects_RF{q}).WristDeviation;
    end
end
STD_RF_DCP_WrFlExt = horzcat(STD_RF_DCP2.WrFlExt);
STD_RF_DCP_WrDev = horzcat(STD_RF_DCP2.WrDev);

% ELBOW FLEXION
% DCP21/DCP31 have incorrect elbow angles and are excluded
subjects_RF = {'DCP01','DCP02','DCP03','DCP04','DCP05','DCP06','DCP07','DCP08','DCP09','DCP10','DCP11','DCP12','DCP13','DCP14',...
                 'DCP15','DCP16','DCP17','DCP18','DCP19','DCP20','DCP22','DCP23','DCP24','DCP25','DCP26','DCP27',...
                 'DCP28','DCP29','DCP30','DCP32','DCP33','DCP34','DCP35'};
for q = 1:length(subjects_RF)
    for r = 1:length(angle_name)
        STD_RF_DCP2(q).ElbowFlExt = STD_RF_DCP.(subjects_RF{q}).ElbowFlExt;
        STD_RF_DCP2(q).ElbowProSup = STD_RF_DCP.(subjects_RF{q}).ElbowProSupination;
    end
end
STD_RF_DCP_ElbowFlExt = horzcat(STD_RF_DCP2.ElbowFlExt);
STD_RF_DCP_ElbowProSup = horzcat(STD_RF_DCP2.ElbowProSup);

% SHOULDER ELEVATION
% DCP33 does not have shoulder angles, DCP21 has incorrect angles
subjects_RF = {'DCP01','DCP02','DCP03','DCP04','DCP05','DCP06','DCP07','DCP08','DCP09','DCP10','DCP11','DCP12','DCP13','DCP14',...
                 'DCP15','DCP16','DCP17','DCP18','DCP19','DCP20','DCP22','DCP23','DCP24','DCP25','DCP26','DCP27',...
                 'DCP28','DCP29','DCP30','DCP31','DCP32','DCP34','DCP35'};
for q = 1:length(subjects_RF)
    for r = 1:length(angle_name)
        STD_RF_DCP2(q).ShEl = STD_RF_DCP.(subjects_RF{q}).ShoulderElevationH2;  
    end
end
STD_RF_DCP_ShEl = horzcat(STD_RF_DCP2.ShEl);

% SHOULDER ROTATION/ABDUCTION
% DCP01/DCP04/DCP06/DCP08/DCP09/DCP25/DCP31 shoulder rotation is not correct, DCP33 does not have shoulder angles
subjects_RF = {'DCP02','DCP03','DCP05','DCP07','DCP10','DCP11','DCP12','DCP13','DCP14',...
                 'DCP15','DCP16','DCP17','DCP18','DCP19','DCP20','DCP21','DCP22','DCP23','DCP24','DCP26','DCP27',...
                 'DCP28','DCP29','DCP30','DCP32','DCP34','DCP35'};
for q = 1:length(subjects_RF)
    STD_RF_DCP2(q).ShRot = STD_RF_DCP.(subjects_RF{q}).ShoulderRotationH1;
    STD_RF_DCP2(q).ShAbd = STD_RF_DCP.(subjects_RF{q}).ElevationplaneH1;
end
STD_RF_DCP_ShRot = horzcat(STD_RF_DCP2.ShRot);
STD_RF_DCP_ShAbd = horzcat(STD_RF_DCP2.ShAbd);

% TRUNK & SCAPULA ANGLES
% DCP21/DCP33 do not have scapula and trunk angles
subjects_RF = {'DCP01','DCP02','DCP03','DCP04','DCP05','DCP06','DCP07','DCP08','DCP09','DCP10','DCP11','DCP12','DCP13','DCP14',...
                 'DCP15','DCP16','DCP17','DCP18','DCP19','DCP20','DCP22','DCP23','DCP24','DCP25','DCP26','DCP27',...
                 'DCP28','DCP29','DCP30','DCP31','DCP32','DCP34','DCP35'};
for q = 1:length(subjects_RF)
    STD_RF_DCP2(q).ScTil = STD_RF_DCP.(subjects_RF{q}).ScapTilting; 
    STD_RF_DCP2(q).ScRot = STD_RF_DCP.(subjects_RF{q}).ScapRotation;
    STD_RF_DCP2(q).ScPro = STD_RF_DCP.(subjects_RF{q}).ScapProRetraction;
    STD_RF_DCP2(q).TrFlExt = STD_RF_DCP.(subjects_RF{q}).TrunkFlExt;
    STD_RF_DCP2(q).TrLatFl = STD_RF_DCP.(subjects_RF{q}).TrunkLateralFl; 
    STD_RF_DCP2(q).TrRot = STD_RF_DCP.(subjects_RF{q}).TrunkAxialRotation;  
end
STD_RF_DCP_ScTil = horzcat(STD_RF_DCP2.ScTil);
STD_RF_DCP_ScRot = horzcat(STD_RF_DCP2.ScRot);
STD_RF_DCP_ScPro = horzcat(STD_RF_DCP2.ScPro);
STD_RF_DCP_TrFlExt = horzcat(STD_RF_DCP2.TrFlExt);
STD_RF_DCP_TrLatFl = horzcat(STD_RF_DCP2.TrLatFl);
STD_RF_DCP_TrRot = horzcat(STD_RF_DCP2.TrRot);

%% PLOT STDs - REACH AND GRASP VERTICAL
% WRIST FLEXION/DEVIATION
% DCP15/DCP21/DCP30/DCP31 do not have RGV
subjects_RGV = {'DCP01','DCP02','DCP03','DCP04','DCP05','DCP06','DCP07','DCP08','DCP09','DCP10','DCP11','DCP12','DCP13','DCP14',...
                 'DCP16','DCP17','DCP18','DCP19','DCP20','DCP22','DCP23','DCP24','DCP25','DCP26','DCP27',...
                 'DCP28','DCP29','DCP32','DCP33','DCP34','DCP35'};
for q = 1:length(subjects_RGV)
    STD_RGV_DCP2(q).WrFlExt = STD_RGV_DCP.(subjects_RGV{q}).WristFlExt;
    STD_RGV_DCP2(q).WrDev = STD_RGV_DCP.(subjects_RGV{q}).WristDeviation;  
end
STD_RGV_DCP_WrFlExt = horzcat(STD_RGV_DCP2.WrFlExt);
STD_RGV_DCP_WrDev = horzcat(STD_RGV_DCP2.WrDev);

% ELBOW FLEXION/SUPINATION
% DCP15/DCP21/DCP30/DCP31 do not have RGV
subjects_RGV = {'DCP01','DCP02','DCP03','DCP04','DCP05','DCP06','DCP07','DCP08','DCP09','DCP10','DCP11','DCP12','DCP13','DCP14',...
                 'DCP16','DCP17','DCP18','DCP19','DCP20','DCP22','DCP23','DCP24','DCP25','DCP26','DCP27',...
                 'DCP28','DCP29','DCP32','DCP33','DCP34','DCP35'};
for q = 1:length(subjects_RGV)
    STD_RGV_DCP2(q).ElbowFlExt = STD_RGV_DCP.(subjects_RGV{q}).ElbowFlExt; 
    STD_RGV_DCP2(q).ElbowProSup = STD_RGV_DCP.(subjects_RGV{q}).ElbowProSupination;  
end
STD_RGV_DCP_ElbowFlExt = horzcat(STD_RGV_DCP2.ElbowFlExt);
STD_RGV_DCP_ElbowProSup = horzcat(STD_RGV_DCP2.ElbowProSup);

% SHOULDER ELEVATION
% DCP15/DCP21/DCP30/DCP31 do not have RGV + DCP33 does not have shoulder angles
subjects_RGV = {'DCP01','DCP02','DCP03','DCP04','DCP05','DCP06','DCP07','DCP08','DCP09','DCP10','DCP11','DCP12','DCP13','DCP14',...
                 'DCP16','DCP17','DCP18','DCP19','DCP20','DCP22','DCP23','DCP24','DCP25','DCP26','DCP27',...
                 'DCP28','DCP29','DCP32','DCP34','DCP35'};
for q = 1:length(subjects_RGV)
    STD_RGV_DCP2(q).ShEl = STD_RGV_DCP.(subjects_RGV{q}).ShoulderElevationH2;  
end
STD_RGV_DCP_ShEl = horzcat(STD_RGV_DCP2.ShEl);


% SHOULDER ROTATION/ABDUCTION
% DCP15/DCP21/DCP30/DCP31 do not have RGV + DCP33 does not have shoulder angles + DCP01/DCP05/DCP06/DCP08/DCP09/DCP10/DCP25 are not correct
subjects_RGV = {'DCP02','DCP03','DCP04','DCP07','DCP11','DCP12','DCP13','DCP14',...
                 'DCP16','DCP17','DCP18','DCP19','DCP20','DCP22','DCP23','DCP24','DCP26','DCP27',...
                 'DCP28','DCP29','DCP32','DCP34','DCP35'};
for q = 1:length(subjects_RGV)
    STD_RGV_DCP2(q).ShRot = STD_RGV_DCP.(subjects_RGV{q}).ShoulderRotationH1;  
    STD_RGV_DCP2(q).ShAbd = STD_RGV_DCP.(subjects_RGV{q}).ElevationplaneH1;  
end
STD_RGV_DCP_ShRot = horzcat(STD_RGV_DCP2.ShRot);
STD_RGV_DCP_ShAbd = horzcat(STD_RGV_DCP2.ShAbd);

% SCAPULA/TRUNK ANGLES 
% DCP15/DCP21/DCP30/DCP31 do not have RGV + DCP33 does not have scapula angles
subjects_RGV = {'DCP01','DCP02','DCP03','DCP04','DCP05','DCP06','DCP07','DCP08','DCP09','DCP10','DCP11','DCP12','DCP13','DCP14',...
                 'DCP16','DCP17','DCP18','DCP19','DCP20','DCP22','DCP23','DCP24','DCP25','DCP26','DCP27',...
                 'DCP28','DCP29','DCP32','DCP34','DCP35'};
for q = 1:length(subjects_RGV)
    STD_RGV_DCP2(q).ScTil = STD_RGV_DCP.(subjects_RGV{q}).ScapTilting;
    STD_RGV_DCP2(q).ScRot = STD_RGV_DCP.(subjects_RGV{q}).ScapRotation; 
    STD_RGV_DCP2(q).ScPro = STD_RGV_DCP.(subjects_RGV{q}).ScapProRetraction;
    STD_RGV_DCP2(q).TrFlExt = STD_RGV_DCP.(subjects_RGV{q}).TrunkFlExt;
    STD_RGV_DCP2(q).TrLatFl = STD_RGV_DCP.(subjects_RGV{q}).TrunkLateralFl;
    STD_RGV_DCP2(q).TrRot = STD_RGV_DCP.(subjects_RGV{q}).TrunkAxialRotation;  
end
STD_RGV_DCP_ScTil = horzcat(STD_RGV_DCP2.ScTil);
STD_RGV_DCP_ScRot = horzcat(STD_RGV_DCP2.ScRot);
STD_RGV_DCP_ScPro= horzcat(STD_RGV_DCP2.ScPro);
STD_RGV_DCP_TrFlExt = horzcat(STD_RGV_DCP2.TrFlExt);
STD_RGV_DCP_TrLatFl = horzcat(STD_RGV_DCP2.TrLatFl);
STD_RGV_DCP_TrRot = horzcat(STD_RGV_DCP2.TrRot);

%% PLOT STDs - REACH SIDEWAYS
% WRIST FLEXION/DEVIATION
% DCP28 do not have RS
subjects_RS = {'DCP01','DCP02','DCP03','DCP04','DCP05','DCP06','DCP07','DCP08','DCP09','DCP10','DCP11','DCP12','DCP13','DCP14',...
                 'DCP15','DCP16','DCP17','DCP18','DCP19','DCP20','DCP21','DCP22','DCP23','DCP24','DCP25','DCP26','DCP27',...
                 'DCP29','DCP30','DCP31','DCP32','DCP33','DCP34','DCP35'};
for q = 1:length(subjects_RS)
    STD_RS_DCP2(q).WrFlExt = STD_RS_DCP.(subjects_RS{q}).WristFlExt;  
    STD_RS_DCP2(q).WrDev = STD_RS_DCP.(subjects_RS{q}).WristDeviation;
end
STD_RS_DCP_WrFlExt = horzcat(STD_RS_DCP2.WrFlExt);
STD_RS_DCP_WrDev = horzcat(STD_RS_DCP2.WrDev);

% ELBOW FLEXION/SUPINATION
% DCP28 does not have RS + DCP31 has incorrect elbow angles 
subjects_RS = {'DCP01','DCP02','DCP03','DCP04','DCP05','DCP06','DCP07','DCP08','DCP09','DCP10','DCP11','DCP12','DCP13','DCP14',...
                 'DCP15','DCP16','DCP17','DCP18','DCP19','DCP20','DCP21','DCP22','DCP23','DCP24','DCP25','DCP26','DCP27',...
                 'DCP29','DCP30','DCP32','DCP33','DCP34','DCP35'};
for q = 1:length(subjects_RS)
    STD_RS_DCP2(q).ElbowFlExt = STD_RS_DCP.(subjects_RS{q}).ElbowFlExt;  
    STD_RS_DCP2(q).ElbowProSup = STD_RS_DCP.(subjects_RS{q}).ElbowProSupination;  
end
STD_RS_DCP_ElbowFlExt = horzcat(STD_RS_DCP2.ElbowFlExt);
STD_RS_DCP_ElbowProSup = horzcat(STD_RS_DCP2.ElbowProSup);

% SHOULDER ELEVATION
%  DCP28 does not have RS + DCP33 does not have shoulder angles + DCP21/DCP34 shoulder angles are incorrect
subjects_RS = {'DCP01','DCP02','DCP03','DCP04','DCP05','DCP06','DCP07','DCP08','DCP09','DCP10','DCP11','DCP12','DCP13','DCP14',...
                 'DCP15','DCP16','DCP17','DCP18','DCP19','DCP20','DCP22','DCP23','DCP24','DCP25','DCP26','DCP27',...
                 'DCP29','DCP30','DCP31','DCP32','DCP35'};
for q = 1:length(subjects_RS)
    STD_RS_DCP2(q).ShEl = STD_RS_DCP.(subjects_RS{q}).ShoulderElevationH2;  
end
STD_RS_DCP_ShEl = horzcat(STD_RS_DCP2.ShEl);

% SHOULDER ROTATION/ABDUCTION
% DCP28 does not have RS + DCP33 does not have shoulder angles +  DCP01/DCP08/DCP09/DCP31 shoulder rotation is not correct
subjects_RS = {'DCP02','DCP03','DCP04','DCP05','DCP06','DCP07','DCP10','DCP11','DCP12','DCP13','DCP14',...
                'DCP15','DCP16','DCP17','DCP18','DCP19','DCP20','DCP21','DCP22','DCP23','DCP24','DCP25','DCP26','DCP27',...
                'DCP29','DCP30','DCP32','DCP34','DCP35'};
for q = 1:length(subjects_RS)
    STD_RS_DCP2(q).ShRot = STD_RS_DCP.(subjects_RS{q}).ShoulderRotationH1;  
    STD_RS_DCP2(q).ShAbd = STD_RS_DCP.(subjects_RS{q}).ElevationplaneH1;  
end
STD_RS_DCP_ShRot = horzcat(STD_RS_DCP2.ShRot);
STD_RS_DCP_ShAbd = horzcat(STD_RS_DCP2.ShAbd);

% SCAPULA ANGLES
% DCP28 does not have RS + DCP33 does not have scapula angles
subjects_RS = {'DCP01','DCP02','DCP03','DCP04','DCP05','DCP06','DCP07','DCP08','DCP09','DCP10','DCP11','DCP12','DCP13','DCP14',...
                 'DCP15','DCP16','DCP17','DCP18','DCP19','DCP20','DCP21','DCP22','DCP23','DCP24','DCP25','DCP26','DCP27',...
                 'DCP29','DCP30','DCP31','DCP32','DCP34','DCP35'};
for q = 1:length(subjects_RS)
    STD_RS_DCP2(q).ScTil = STD_RS_DCP.(subjects_RS{q}).ScapTilting; 
    STD_RS_DCP2(q).ScRot = STD_RS_DCP.(subjects_RS{q}).ScapRotation; 
    STD_RS_DCP2(q).ScPro = STD_RS_DCP.(subjects_RS{q}).ScapProRetraction;    
end
STD_RS_DCP_ScTil = horzcat(STD_RS_DCP2.ScTil);
STD_RS_DCP_ScRot = horzcat(STD_RS_DCP2.ScRot);
STD_RS_DCP_ScPro = horzcat(STD_RS_DCP2.ScPro);

% TRUNK ANGLES
% DCP28 does not have RS 
subjects_RS = {'DCP01','DCP02','DCP03','DCP04','DCP05','DCP06','DCP07','DCP08','DCP09','DCP10','DCP11','DCP12','DCP13','DCP14',...
                 'DCP15','DCP16','DCP17','DCP18','DCP19','DCP20','DCP21','DCP22','DCP23','DCP24','DCP25','DCP26','DCP27',...
                 'DCP29','DCP30','DCP31','DCP32','DCP33','DCP34','DCP35'};
for q = 1:length(subjects_RS)
    for r = 1:length(angle_name) 
        STD_RS_DCP2(q).TrFlExt = STD_RS_DCP.(subjects_RS{q}).TrunkFlExt;
        STD_RS_DCP2(q).TrLatFl = STD_RS_DCP.(subjects_RS{q}).TrunkLateralFl; 
        STD_RS_DCP2(q).TrRot = STD_RS_DCP.(subjects_RS{q}).TrunkAxialRotation;  
    end
end
STD_RS_DCP_TrFlExt = horzcat(STD_RS_DCP2.TrFlExt);
STD_RS_DCP_TrLatFl = horzcat(STD_RS_DCP2.TrLatFl);
STD_RS_DCP_TrRot = horzcat(STD_RS_DCP2.TrRot);
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% TD %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('Angles_TD.mat');
subjects = fieldnames(Angles_TD);
for q = 1:length(subjects)
    angle_name = fieldnames(Angles_TD.(subjects{q}).RF);
    for r = 1:length(angle_name)
        STD_RF_TD2(q).(angle_name{r}) = nanstd(Angles_TD.(subjects{q}).RF.(angle_name{r}),0,2);
        STD_RGV_TD2(q).(angle_name{r}) = nanstd(Angles_TD.(subjects{q}).RGV.(angle_name{r}),0,2);
        STD_RS_TD2(q).(angle_name{r}) = nanstd(Angles_TD.(subjects{q}).RS.(angle_name{r}),0,2);
    end
end
for r = 1:length(angle_name)
    STD_RF_TD.(angle_name{r}) = horzcat(STD_RF_TD2.(angle_name{r}));
    STD_RGV_TD.(angle_name{r}) = horzcat(STD_RGV_TD2.(angle_name{r}));
    STD_RS_TD.(angle_name{r}) = horzcat(STD_RS_TD2.(angle_name{r}));
end