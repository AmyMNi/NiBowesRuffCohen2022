%% Manuscript figures for Ni, Bowes, Ruff, & Cohen (2022)
%
% Description:
%   This tutorial walks through the generation of manuscript figures 2-4.
%   Superfluous figure details (marker size, tick direction, etc.) have not
%   been specified. Developed using MATLAB_R2020a (R2016b required for
%   'errorbar' function).
%
%   History:
%   03/19/2022    amn    Began it
%   03/22/2022    amn    Completed it

%% Download data
%
% Prior to beginning this tutorial, download ManuscriptData.mat from:

%% Load data
load ManuscriptData.mat

%% Plot Figure 2: normalized time worked

% Separate control day and drug day data.
% Monkey 1:
ctrlData_M1 = timeWorked_Monkey1(dose_Monkey1==0);
drugData_M1 = timeWorked_Monkey1(dose_Monkey1 >0);
% Monkey 2: 
ctrlData_M2 = timeWorked_Monkey2(dose_Monkey2==0);
drugData_M2 = timeWorked_Monkey2(dose_Monkey2 >0);

% Calculate mean for control days and for drug days.
% Monkey 1: 
ctrlMean_M1 = mean(ctrlData_M1);
drugMean_M1 = mean(drugData_M1);
% Monkey 2: 
ctrlMean_M2 = mean(ctrlData_M2);
drugMean_M2 = mean(drugData_M2);

% Calculate SEM for control days and for drug days.
% Monkey 1: 
ctrlSEM_M1 = std(ctrlData_M1) / sqrt(sum(~isnan(ctrlData_M1)));
drugSEM_M1 = std(drugData_M1) / sqrt(sum(~isnan(drugData_M1)));
% Monkey 2:
ctrlSEM_M2 = std(ctrlData_M2) / sqrt(sum(~isnan(ctrlData_M2)));
drugSEM_M2 = std(drugData_M2) / sqrt(sum(~isnan(drugData_M2)));

% Plot Figure 2.
figure; hold on; axis square; xlabel('control'); ylabel('drug');
% Monkey 1 data:
c1 = [0.9961 0.7608 0.0745];
plot(ctrlData_M1,drugData_M1,'o','MarkerFaceColor',c1,'MarkerEdgeColor',c1)
% Monkey 1 mean:
plot(ctrlMean_M1,drugMean_M1,'o','MarkerFaceColor','w','MarkerEdgeColor','k')
% Monkey 1 SEM error bars:
errorbar(ctrlMean_M1,drugMean_M1,ctrlSEM_M1,'horizontal','-k','CapSize',0)
errorbar(ctrlMean_M1,drugMean_M1,drugSEM_M1,'-k','CapSize',0)
% Monkey 2 data:
c2 = [0.8275 0.1098 0.3569];
plot(ctrlData_M2,drugData_M2,'s','MarkerFaceColor',c2,'MarkerEdgeColor',c2)
% Monkey 2 mean:
plot(ctrlMean_M2,drugMean_M2,'s','MarkerFaceColor','w','MarkerEdgeColor','k')
% Monkey 2 SEM error bars:
errorbar(ctrlMean_M2,drugMean_M2,ctrlSEM_M2,'horizontal','-k','CapSize',0)
errorbar(ctrlMean_M2,drugMean_M2,drugSEM_M2,'-k','CapSize',0)
% Finish plot.
axis([0 2.3 0 2.3]) 
plot([0 2.3],[0 2.3],'-k')
ax = gca;
ax.XTick = [0 1 2 3]; ax.XTickLabel = [0 1 2 3];
ax.YTick = [0 1 2 3]; ax.YTickLabel = [0 1 2 3];
hold off

%% Plot Figure 3A: attended hit rate

% Separate control day and drug day data.
% Monkey 1:
ctrlData_M1 = hitRateAtt_Monkey1(dose_Monkey1==0,:);
drugData_M1 = hitRateAtt_Monkey1(dose_Monkey1 >0,:);
% Monkey 2: 
ctrlData_M2 = hitRateAtt_Monkey2(dose_Monkey2==0,:);
drugData_M2 = hitRateAtt_Monkey2(dose_Monkey2 >0,:);
% Monkey 2 Neuronal: 
ctrlData_M2N = hitRateAtt_Monkey2N(dose_Monkey2N==0,:);
drugData_M2N = hitRateAtt_Monkey2N(dose_Monkey2N >0,:);
% Monkey 3 Neuronal: 
ctrlData_M3N = hitRateAtt_Monkey3N(dose_Monkey3N==0,:);
drugData_M3N = hitRateAtt_Monkey3N(dose_Monkey3N >0,:);

% Plot performance at each of the two stimulus locations (left, right) 
% separately.
% Monkey 1:
ctrlData_M1 = reshape(ctrlData_M1,[],1);
drugData_M1 = reshape(drugData_M1,[],1);
% Monkey 2: 
ctrlData_M2 = reshape(ctrlData_M2,[],1);
drugData_M2 = reshape(drugData_M2,[],1);
% Monkey 2 Neuronal: 
ctrlData_M2N = reshape(ctrlData_M2N,[],1);
drugData_M2N = reshape(drugData_M2N,[],1);
% Monkey 3 Neuronal: 
ctrlData_M3N = reshape(ctrlData_M3N,[],1);
drugData_M3N = reshape(drugData_M3N,[],1);

% Calculate mean for control days and for drug days.
% Monkey 1: 
ctrlMean_M1 = mean(ctrlData_M1);
drugMean_M1 = mean(drugData_M1);
% Monkey 2: 
ctrlMean_M2 = mean(ctrlData_M2);
drugMean_M2 = mean(drugData_M2);
% Monkey 2 Neuronal: 
ctrlMean_M2N = mean(ctrlData_M2N);
drugMean_M2N = mean(drugData_M2N);
% Monkey 3 Neuronal: 
ctrlMean_M3N = mean(ctrlData_M3N);
drugMean_M3N = mean(drugData_M3N);

% Calculate SEM for control days and for drug days.
% Monkey 1: 
ctrlSEM_M1 = std(ctrlData_M1) / sqrt(sum(~isnan(ctrlData_M1)));
drugSEM_M1 = std(drugData_M1) / sqrt(sum(~isnan(drugData_M1)));
% Monkey 2:
ctrlSEM_M2 = std(ctrlData_M2) / sqrt(sum(~isnan(ctrlData_M2)));
drugSEM_M2 = std(drugData_M2) / sqrt(sum(~isnan(drugData_M2)));
% Monkey 2 Neuronal:
ctrlSEM_M2N = std(ctrlData_M2N) / sqrt(sum(~isnan(ctrlData_M2N)));
drugSEM_M2N = std(drugData_M2N) / sqrt(sum(~isnan(drugData_M2N)));
% Monkey 3 Neuronal:
ctrlSEM_M3N = std(ctrlData_M3N) / sqrt(sum(~isnan(ctrlData_M3N)));
drugSEM_M3N = std(drugData_M3N) / sqrt(sum(~isnan(drugData_M3N)));

% Plot Figure 3A.
figure; hold on; axis square; xlabel('control'); ylabel('drug');
% Monkey 1 data:
c1 = [0.9961 0.7608 0.0745];
plot(ctrlData_M1,drugData_M1,'o','MarkerFaceColor',c1,'MarkerEdgeColor',c1)
% Monkey 1 mean:
plot(ctrlMean_M1,drugMean_M1,'o','MarkerFaceColor','w','MarkerEdgeColor','k')
% Monkey 1 SEM error bars:
errorbar(ctrlMean_M1,drugMean_M1,ctrlSEM_M1,'horizontal','-k','CapSize',0)
errorbar(ctrlMean_M1,drugMean_M1,drugSEM_M1,'-k','CapSize',0)
% Monkey 2 data:
c2 = [0.8275 0.1098 0.3569];
plot(ctrlData_M2,drugData_M2,'s','MarkerFaceColor',c2,'MarkerEdgeColor',c2)
% Monkey 2 mean:
plot(ctrlMean_M2,drugMean_M2,'s','MarkerFaceColor','w','MarkerEdgeColor','k')
% Monkey 2 SEM error bars:
errorbar(ctrlMean_M2,drugMean_M2,ctrlSEM_M2,'horizontal','-k','CapSize',0)
errorbar(ctrlMean_M2,drugMean_M2,drugSEM_M2,'-k','CapSize',0)
% Monkey 2 Neuronal data:
plot(ctrlData_M2N,drugData_M2N,'^','MarkerFaceColor',c2,'MarkerEdgeColor',c2)
% Monkey 2 Neuronal mean:
plot(ctrlMean_M2N,drugMean_M2N,'^','MarkerFaceColor','w','MarkerEdgeColor','k')
% Monkey 2 Neuronal SEM error bars:
errorbar(ctrlMean_M2N,drugMean_M2N,ctrlSEM_M2N,'horizontal','-k','CapSize',0)
errorbar(ctrlMean_M2N,drugMean_M2N,drugSEM_M2N,'-k','CapSize',0)
% Monkey 3 Neuronal data:
c3 = [0.2784 0.4863 0.7490];
plot(ctrlData_M3N,drugData_M3N,'d','MarkerFaceColor',c3,'MarkerEdgeColor',c3)
% Monkey 3 Neuronal mean:
plot(ctrlMean_M3N,drugMean_M3N,'d','MarkerFaceColor','w','MarkerEdgeColor','k')
% Monkey 3 Neuronal SEM error bars:
errorbar(ctrlMean_M3N,drugMean_M3N,ctrlSEM_M3N,'horizontal','-k','CapSize',0)
errorbar(ctrlMean_M3N,drugMean_M3N,drugSEM_M3N,'-k','CapSize',0)
% Finish plot.
axis([0 1 0 1]) 
plot([0 1], [0 1], '-k')
ax = gca;
ax.XTick = [0 .5 1]; ax.XTickLabel = [0 .5 1];
ax.YTick = [0 .5 1]; ax.YTickLabel = [0 .5 1];
hold off

%% Plot Figure 3B: unattended hit rate

% Separate control day and drug day data.
% Monkey 1:
ctrlData_M1 = hitRateUnatt_Monkey1(dose_Monkey1==0,:);
drugData_M1 = hitRateUnatt_Monkey1(dose_Monkey1 >0,:);
% Monkey 2: 
ctrlData_M2 = hitRateUnatt_Monkey2(dose_Monkey2==0,:);
drugData_M2 = hitRateUnatt_Monkey2(dose_Monkey2 >0,:);
% Monkey 2 Neuronal: 
ctrlData_M2N = hitRateUnatt_Monkey2N(dose_Monkey2N==0,:);
drugData_M2N = hitRateUnatt_Monkey2N(dose_Monkey2N >0,:);
% Monkey 3 Neuronal: 
ctrlData_M3N = hitRateUnatt_Monkey3N(dose_Monkey3N==0,:);
drugData_M3N = hitRateUnatt_Monkey3N(dose_Monkey3N >0,:);

% Plot performance at each of the two stimulus locations (left, right) 
% separately.
% Monkey 1:
ctrlData_M1 = reshape(ctrlData_M1,[],1);
drugData_M1 = reshape(drugData_M1,[],1);
% Monkey 2: 
ctrlData_M2 = reshape(ctrlData_M2,[],1);
drugData_M2 = reshape(drugData_M2,[],1);
% Monkey 2 Neuronal: 
ctrlData_M2N = reshape(ctrlData_M2N,[],1);
drugData_M2N = reshape(drugData_M2N,[],1);
% Monkey 3 Neuronal: 
ctrlData_M3N = reshape(ctrlData_M3N,[],1);
drugData_M3N = reshape(drugData_M3N,[],1);

% Calculate mean for control days and for drug days.
% Monkey 1: 
ctrlMean_M1 = mean(ctrlData_M1);
drugMean_M1 = mean(drugData_M1);
% Monkey 2: 
ctrlMean_M2 = mean(ctrlData_M2);
drugMean_M2 = mean(drugData_M2);
% Monkey 2 Neuronal: 
ctrlMean_M2N = mean(ctrlData_M2N);
drugMean_M2N = mean(drugData_M2N);
% Monkey 3 Neuronal: 
ctrlMean_M3N = mean(ctrlData_M3N);
drugMean_M3N = mean(drugData_M3N);

% Calculate SEM for control days and for drug days.
% Monkey 1: 
ctrlSEM_M1 = std(ctrlData_M1) / sqrt(sum(~isnan(ctrlData_M1)));
drugSEM_M1 = std(drugData_M1) / sqrt(sum(~isnan(drugData_M1)));
% Monkey 2:
ctrlSEM_M2 = std(ctrlData_M2) / sqrt(sum(~isnan(ctrlData_M2)));
drugSEM_M2 = std(drugData_M2) / sqrt(sum(~isnan(drugData_M2)));
% Monkey 2 Neuronal:
ctrlSEM_M2N = std(ctrlData_M2N) / sqrt(sum(~isnan(ctrlData_M2N)));
drugSEM_M2N = std(drugData_M2N) / sqrt(sum(~isnan(drugData_M2N)));
% Monkey 3 Neuronal:
ctrlSEM_M3N = std(ctrlData_M3N) / sqrt(sum(~isnan(ctrlData_M3N)));
drugSEM_M3N = std(drugData_M3N) / sqrt(sum(~isnan(drugData_M3N)));

% Plot Figure 3B.
figure; hold on; axis square; xlabel('control'); ylabel('drug');
% Monkey 1 data:
c1 = [0.9961 0.7608 0.0745];
plot(ctrlData_M1,drugData_M1,'o','MarkerFaceColor',c1,'MarkerEdgeColor',c1)
% Monkey 1 mean:
plot(ctrlMean_M1,drugMean_M1,'o','MarkerFaceColor','w','MarkerEdgeColor','k')
% Monkey 1 SEM error bars:
errorbar(ctrlMean_M1,drugMean_M1,ctrlSEM_M1,'horizontal','-k','CapSize',0)
errorbar(ctrlMean_M1,drugMean_M1,drugSEM_M1,'-k','CapSize',0)
% Monkey 2 data:
c2 = [0.8275 0.1098 0.3569];
plot(ctrlData_M2,drugData_M2,'s','MarkerFaceColor',c2,'MarkerEdgeColor',c2)
% Monkey 2 mean:
plot(ctrlMean_M2,drugMean_M2,'s','MarkerFaceColor','w','MarkerEdgeColor','k')
% Monkey 2 SEM error bars:
errorbar(ctrlMean_M2,drugMean_M2,ctrlSEM_M2,'horizontal','-k','CapSize',0)
errorbar(ctrlMean_M2,drugMean_M2,drugSEM_M2,'-k','CapSize',0)
% Monkey 2 Neuronal data:
plot(ctrlData_M2N,drugData_M2N,'^','MarkerFaceColor',c2,'MarkerEdgeColor',c2)
% Monkey 2 Neuronal mean:
plot(ctrlMean_M2N,drugMean_M2N,'^','MarkerFaceColor','w','MarkerEdgeColor','k')
% Monkey 2 Neuronal SEM error bars:
errorbar(ctrlMean_M2N,drugMean_M2N,ctrlSEM_M2N,'horizontal','-k','CapSize',0)
errorbar(ctrlMean_M2N,drugMean_M2N,drugSEM_M2N,'-k','CapSize',0)
% Monkey 3 Neuronal data:
c3 = [0.2784 0.4863 0.7490];
plot(ctrlData_M3N,drugData_M3N,'d','MarkerFaceColor',c3,'MarkerEdgeColor',c3)
% Monkey 3 Neuronal mean:
plot(ctrlMean_M3N,drugMean_M3N,'d','MarkerFaceColor','w','MarkerEdgeColor','k')
% Monkey 3 Neuronal SEM error bars:
errorbar(ctrlMean_M3N,drugMean_M3N,ctrlSEM_M3N,'horizontal','-k','CapSize',0)
errorbar(ctrlMean_M3N,drugMean_M3N,drugSEM_M3N,'-k','CapSize',0)
% Finish plot.
axis([0 1 0 1]) 
plot([0 1], [0 1], '-k')
ax = gca;
ax.XTick = [0 .5 1]; ax.XTickLabel = [0 .5 1];
ax.YTick = [0 .5 1]; ax.YTickLabel = [0 .5 1];
hold off

%% Plot Figure 3C: attended - unattended hit rate

% Calculate difference between attended and unattended performance.
% Monkey 1:
hitRateAttEffect_Monkey1  = hitRateAtt_Monkey1 - hitRateUnatt_Monkey1;
% Monkey 2:
hitRateAttEffect_Monkey2  = hitRateAtt_Monkey2 - hitRateUnatt_Monkey2;
% Monkey 2 Neuronal:
hitRateAttEffect_Monkey2N = hitRateAtt_Monkey2N - hitRateUnatt_Monkey2N;
% Monkey 3 Neuronal:
hitRateAttEffect_Monkey3N = hitRateAtt_Monkey3N - hitRateUnatt_Monkey3N;

% Separate control day and drug day data.
% Monkey 1:
ctrlData_M1 = hitRateAttEffect_Monkey1(dose_Monkey1==0,:);
drugData_M1 = hitRateAttEffect_Monkey1(dose_Monkey1 >0,:);
% Monkey 2: 
ctrlData_M2 = hitRateAttEffect_Monkey2(dose_Monkey2==0,:);
drugData_M2 = hitRateAttEffect_Monkey2(dose_Monkey2 >0,:);
% Monkey 2 Neuronal: 
ctrlData_M2N = hitRateAttEffect_Monkey2N(dose_Monkey2N==0,:);
drugData_M2N = hitRateAttEffect_Monkey2N(dose_Monkey2N >0,:);
% Monkey 3 Neuronal: 
ctrlData_M3N = hitRateAttEffect_Monkey3N(dose_Monkey3N==0,:);
drugData_M3N = hitRateAttEffect_Monkey3N(dose_Monkey3N >0,:);

% Plot attention effect for each of the two stimulus locations (left, right) 
% separately.
% Monkey 1:
ctrlData_M1 = reshape(ctrlData_M1,[],1);
drugData_M1 = reshape(drugData_M1,[],1);
% Monkey 2: 
ctrlData_M2 = reshape(ctrlData_M2,[],1);
drugData_M2 = reshape(drugData_M2,[],1);
% Monkey 2 Neuronal: 
ctrlData_M2N = reshape(ctrlData_M2N,[],1);
drugData_M2N = reshape(drugData_M2N,[],1);
% Monkey 3 Neuronal: 
ctrlData_M3N = reshape(ctrlData_M3N,[],1);
drugData_M3N = reshape(drugData_M3N,[],1);

% Calculate mean for control days and for drug days.
% Monkey 1: 
ctrlMean_M1 = mean(ctrlData_M1);
drugMean_M1 = mean(drugData_M1);
% Monkey 2: 
ctrlMean_M2 = mean(ctrlData_M2);
drugMean_M2 = mean(drugData_M2);
% Monkey 2 Neuronal: 
ctrlMean_M2N = mean(ctrlData_M2N);
drugMean_M2N = mean(drugData_M2N);
% Monkey 3 Neuronal: 
ctrlMean_M3N = mean(ctrlData_M3N);
drugMean_M3N = mean(drugData_M3N);

% Calculate SEM for control days and for drug days.
% Monkey 1: 
ctrlSEM_M1 = std(ctrlData_M1) / sqrt(sum(~isnan(ctrlData_M1)));
drugSEM_M1 = std(drugData_M1) / sqrt(sum(~isnan(drugData_M1)));
% Monkey 2:
ctrlSEM_M2 = std(ctrlData_M2) / sqrt(sum(~isnan(ctrlData_M2)));
drugSEM_M2 = std(drugData_M2) / sqrt(sum(~isnan(drugData_M2)));
% Monkey 2 Neuronal:
ctrlSEM_M2N = std(ctrlData_M2N) / sqrt(sum(~isnan(ctrlData_M2N)));
drugSEM_M2N = std(drugData_M2N) / sqrt(sum(~isnan(drugData_M2N)));
% Monkey 3 Neuronal:
ctrlSEM_M3N = std(ctrlData_M3N) / sqrt(sum(~isnan(ctrlData_M3N)));
drugSEM_M3N = std(drugData_M3N) / sqrt(sum(~isnan(drugData_M3N)));

% Plot Figure 3C.
figure; hold on; axis square; xlabel('control'); ylabel('drug');
% Monkey 1 data:
c1 = [0.9961 0.7608 0.0745];
plot(ctrlData_M1,drugData_M1,'o','MarkerFaceColor',c1,'MarkerEdgeColor',c1)
% Monkey 1 mean:
plot(ctrlMean_M1,drugMean_M1,'o','MarkerFaceColor','w','MarkerEdgeColor','k')
% Monkey 1 SEM error bars:
errorbar(ctrlMean_M1,drugMean_M1,ctrlSEM_M1,'horizontal','-k','CapSize',0)
errorbar(ctrlMean_M1,drugMean_M1,drugSEM_M1,'-k','CapSize',0)
% Monkey 2 data:
c2 = [0.8275 0.1098 0.3569];
plot(ctrlData_M2,drugData_M2,'s','MarkerFaceColor',c2,'MarkerEdgeColor',c2)
% Monkey 2 mean:
plot(ctrlMean_M2,drugMean_M2,'s','MarkerFaceColor','w','MarkerEdgeColor','k')
% Monkey 2 SEM error bars:
errorbar(ctrlMean_M2,drugMean_M2,ctrlSEM_M2,'horizontal','-k','CapSize',0)
errorbar(ctrlMean_M2,drugMean_M2,drugSEM_M2,'-k','CapSize',0)
% Monkey 2 Neuronal data:
plot(ctrlData_M2N,drugData_M2N,'^','MarkerFaceColor',c2,'MarkerEdgeColor',c2)
% Monkey 2 Neuronal mean:
plot(ctrlMean_M2N,drugMean_M2N,'^','MarkerFaceColor','w','MarkerEdgeColor','k')
% Monkey 2 Neuronal SEM error bars:
errorbar(ctrlMean_M2N,drugMean_M2N,ctrlSEM_M2N,'horizontal','-k','CapSize',0)
errorbar(ctrlMean_M2N,drugMean_M2N,drugSEM_M2N,'-k','CapSize',0)
% Monkey 3 Neuronal data:
c3 = [0.2784 0.4863 0.7490];
plot(ctrlData_M3N,drugData_M3N,'d','MarkerFaceColor',c3,'MarkerEdgeColor',c3)
% Monkey 3 Neuronal mean:
plot(ctrlMean_M3N,drugMean_M3N,'d','MarkerFaceColor','w','MarkerEdgeColor','k')
% Monkey 3 Neuronal SEM error bars:
errorbar(ctrlMean_M3N,drugMean_M3N,ctrlSEM_M3N,'horizontal','-k','CapSize',0)
errorbar(ctrlMean_M3N,drugMean_M3N,drugSEM_M3N,'-k','CapSize',0)
% Finish plot.
axis([0 1 0 1]) 
plot([0 1], [0 1], '-k')
ax = gca;
ax.XTick = [0 .5 1]; ax.XTickLabel = [0 .5 1];
ax.YTick = [0 .5 1]; ax.YTickLabel = [0 .5 1];
hold off

%% Plot Figure 4A: attended correlated variability

% Separate control day and drug day data.
% Monkey 2 Neuronal: 
ctrlData_M2N = rscAtt_Monkey2N(dose_Monkey2N==0,:);
drugData_M2N = rscAtt_Monkey2N(dose_Monkey2N >0,:);
% Monkey 3 Neuronal: 
ctrlData_M3N = rscAtt_Monkey3N(dose_Monkey3N==0,:);
drugData_M3N = rscAtt_Monkey3N(dose_Monkey3N >0,:);

% Calculate mean for control days and for drug days.
% Monkey 2 Neuronal: 
ctrlMean_M2N = mean(ctrlData_M2N);
drugMean_M2N = mean(drugData_M2N);
% Monkey 3 Neuronal: 
ctrlMean_M3N = mean(ctrlData_M3N);
drugMean_M3N = mean(drugData_M3N);

% Calculate SEM for control days and for drug days.
% Monkey 2 Neuronal:
ctrlSEM_M2N = std(ctrlData_M2N) / sqrt(sum(~isnan(ctrlData_M2N)));
drugSEM_M2N = std(drugData_M2N) / sqrt(sum(~isnan(drugData_M2N)));
% Monkey 3 Neuronal:
ctrlSEM_M3N = std(ctrlData_M3N) / sqrt(sum(~isnan(ctrlData_M3N)));
drugSEM_M3N = std(drugData_M3N) / sqrt(sum(~isnan(drugData_M3N)));

% Plot Figure 4A.
figure; hold on; axis square; xlabel('control'); ylabel('drug');
% Monkey 2 Neuronal data:
c2 = [0.8275 0.1098 0.3569];
plot(ctrlData_M2N,drugData_M2N,'^','MarkerFaceColor',c2,'MarkerEdgeColor',c2)
% Monkey 2 Neuronal mean:
plot(ctrlMean_M2N,drugMean_M2N,'^','MarkerFaceColor','w','MarkerEdgeColor','k')
% Monkey 2 Neuronal SEM error bars:
errorbar(ctrlMean_M2N,drugMean_M2N,ctrlSEM_M2N,'horizontal','-k','CapSize',0)
errorbar(ctrlMean_M2N,drugMean_M2N,drugSEM_M2N,'-k','CapSize',0)
% Monkey 3 Neuronal data:
c3 = [0.2784 0.4863 0.7490];
plot(ctrlData_M3N,drugData_M3N,'d','MarkerFaceColor',c3,'MarkerEdgeColor',c3)
% Monkey 3 Neuronal mean:
plot(ctrlMean_M3N,drugMean_M3N,'d','MarkerFaceColor','w','MarkerEdgeColor','k')
% Monkey 3 Neuronal SEM error bars:
errorbar(ctrlMean_M3N,drugMean_M3N,ctrlSEM_M3N,'horizontal','-k','CapSize',0)
errorbar(ctrlMean_M3N,drugMean_M3N,drugSEM_M3N,'-k','CapSize',0)
% Finish plot.
axis([.05 .4 .05 .4])
plot([.05 .4], [.05 .4], '-k')
ax = gca;
ax.XTick = [.1 .2 .3 .4]; ax.XTickLabel = [.1 .2 .3 .4];
ax.YTick = [.1 .2 .3 .4]; ax.YTickLabel = [.1 .2 .3 .4];
hold off

%% Plot Figure 4B: unattended correlated variability

% Separate control day and drug day data.
% Monkey 2 Neuronal: 
ctrlData_M2N = rscUnatt_Monkey2N(dose_Monkey2N==0,:);
drugData_M2N = rscUnatt_Monkey2N(dose_Monkey2N >0,:);
% Monkey 3 Neuronal: 
ctrlData_M3N = rscUnatt_Monkey3N(dose_Monkey3N==0,:);
drugData_M3N = rscUnatt_Monkey3N(dose_Monkey3N >0,:);

% Calculate mean for control days and for drug days.
% Monkey 2 Neuronal: 
ctrlMean_M2N = mean(ctrlData_M2N);
drugMean_M2N = mean(drugData_M2N);
% Monkey 3 Neuronal: 
ctrlMean_M3N = mean(ctrlData_M3N);
drugMean_M3N = mean(drugData_M3N);

% Calculate SEM for control days and for drug days.
% Monkey 2 Neuronal:
ctrlSEM_M2N = std(ctrlData_M2N) / sqrt(sum(~isnan(ctrlData_M2N)));
drugSEM_M2N = std(drugData_M2N) / sqrt(sum(~isnan(drugData_M2N)));
% Monkey 3 Neuronal:
ctrlSEM_M3N = std(ctrlData_M3N) / sqrt(sum(~isnan(ctrlData_M3N)));
drugSEM_M3N = std(drugData_M3N) / sqrt(sum(~isnan(drugData_M3N)));

% Plot Figure 4B.
figure; hold on; axis square; xlabel('control'); ylabel('drug');
% Monkey 2 Neuronal data:
c2 = [0.8275 0.1098 0.3569];
plot(ctrlData_M2N,drugData_M2N,'^','MarkerFaceColor',c2,'MarkerEdgeColor',c2)
% Monkey 2 Neuronal mean:
plot(ctrlMean_M2N,drugMean_M2N,'^','MarkerFaceColor','w','MarkerEdgeColor','k')
% Monkey 2 Neuronal SEM error bars:
errorbar(ctrlMean_M2N,drugMean_M2N,ctrlSEM_M2N,'horizontal','-k','CapSize',0)
errorbar(ctrlMean_M2N,drugMean_M2N,drugSEM_M2N,'-k','CapSize',0)
% Monkey 3 Neuronal data:
c3 = [0.2784 0.4863 0.7490];
plot(ctrlData_M3N,drugData_M3N,'d','MarkerFaceColor',c3,'MarkerEdgeColor',c3)
% Monkey 3 Neuronal mean:
plot(ctrlMean_M3N,drugMean_M3N,'d','MarkerFaceColor','w','MarkerEdgeColor','k')
% Monkey 3 Neuronal SEM error bars:
errorbar(ctrlMean_M3N,drugMean_M3N,ctrlSEM_M3N,'horizontal','-k','CapSize',0)
errorbar(ctrlMean_M3N,drugMean_M3N,drugSEM_M3N,'-k','CapSize',0)
% Finish plot.
axis([.05 .4 .05 .4])
plot([.05 .4], [.05 .4], '-k')
ax = gca;
ax.XTick = [.1 .2 .3 .4]; ax.XTickLabel = [.1 .2 .3 .4];
ax.YTick = [.1 .2 .3 .4]; ax.YTickLabel = [.1 .2 .3 .4];
hold off

%% Plot Figure 4C: attended - unattended correlated variability

% Calculate difference between attended and unattended correlated 
% variability.
% Monkey 2 Neuronal:
rscAttEffect_Monkey2N = rscAtt_Monkey2N - rscUnatt_Monkey2N;
% Monkey 3 Neuronal:
rscAttEffect_Monkey3N = rscAtt_Monkey3N - rscUnatt_Monkey3N;

% Separate control day and drug day data.
% Monkey 2 Neuronal: 
ctrlData_M2N = rscAttEffect_Monkey2N(dose_Monkey2N==0,:);
drugData_M2N = rscAttEffect_Monkey2N(dose_Monkey2N >0,:);
% Monkey 3 Neuronal: 
ctrlData_M3N = rscAttEffect_Monkey3N(dose_Monkey3N==0,:);
drugData_M3N = rscAttEffect_Monkey3N(dose_Monkey3N >0,:);

% Calculate mean for control days and for drug days.
% Monkey 2 Neuronal: 
ctrlMean_M2N = mean(ctrlData_M2N);
drugMean_M2N = mean(drugData_M2N);
% Monkey 3 Neuronal: 
ctrlMean_M3N = mean(ctrlData_M3N);
drugMean_M3N = mean(drugData_M3N);

% Calculate SEM for control days and for drug days.
% Monkey 2 Neuronal:
ctrlSEM_M2N = std(ctrlData_M2N) / sqrt(sum(~isnan(ctrlData_M2N)));
drugSEM_M2N = std(drugData_M2N) / sqrt(sum(~isnan(drugData_M2N)));
% Monkey 3 Neuronal:
ctrlSEM_M3N = std(ctrlData_M3N) / sqrt(sum(~isnan(ctrlData_M3N)));
drugSEM_M3N = std(drugData_M3N) / sqrt(sum(~isnan(drugData_M3N)));

% Plot Figure 4C.
figure; hold on; axis square; xlabel('control'); ylabel('drug');
% Monkey 2 Neuronal data:
c2 = [0.8275 0.1098 0.3569];
plot(ctrlData_M2N,drugData_M2N,'^','MarkerFaceColor',c2,'MarkerEdgeColor',c2)
% Monkey 2 Neuronal mean:
plot(ctrlMean_M2N,drugMean_M2N,'^','MarkerFaceColor','w','MarkerEdgeColor','k')
% Monkey 2 Neuronal SEM error bars:
errorbar(ctrlMean_M2N,drugMean_M2N,ctrlSEM_M2N,'horizontal','-k','CapSize',0)
errorbar(ctrlMean_M2N,drugMean_M2N,drugSEM_M2N,'-k','CapSize',0)
% Monkey 3 Neuronal data:
c3 = [0.2784 0.4863 0.7490];
plot(ctrlData_M3N,drugData_M3N,'d','MarkerFaceColor',c3,'MarkerEdgeColor',c3)
% Monkey 3 Neuronal mean:
plot(ctrlMean_M3N,drugMean_M3N,'d','MarkerFaceColor','w','MarkerEdgeColor','k')
% Monkey 3 Neuronal SEM error bars:
errorbar(ctrlMean_M3N,drugMean_M3N,ctrlSEM_M3N,'horizontal','-k','CapSize',0)
errorbar(ctrlMean_M3N,drugMean_M3N,drugSEM_M3N,'-k','CapSize',0)
% Finish plot.
axis([-.2 .2 -.2 .2])
plot([-.2 .2], [-.2 .2], '-k')
ax = gca;
ax.XTick = [-.2 -.1 0 .1 .2]; ax.XTickLabel = [-.2 -.1 0 .1 .2];
ax.XTick = [-.2 -.1 0 .1 .2]; ax.XTickLabel = [-.2 -.1 0 .1 .2];
hold off

%% Plot Figure 4D: attended hit rate vs. correlated variability

% For hit rate: separate control day and drug day data.
% Monkey 2 Neuronal: 
hitRate_ctrlData_M2N = hitRateAtt_Monkey2N(dose_Monkey2N==0,:);
hitRate_drugData_M2N = hitRateAtt_Monkey2N(dose_Monkey2N >0,:);
% Monkey 3 Neuronal: 
hitRate_ctrlData_M3N = hitRateAtt_Monkey3N(dose_Monkey3N==0,:);
hitRate_drugData_M3N = hitRateAtt_Monkey3N(dose_Monkey3N >0,:);

% Select hit rate at the stimulus location that overlapped the receptive
% fields.
% Monkey 2 Neuronal:
rfSide = 2;
hitRate_ctrlData_M2N = hitRate_ctrlData_M2N(:,rfSide);
hitRate_drugData_M2N = hitRate_drugData_M2N(:,rfSide);
% Monkey 3 Neuronal: 
rfSide = 1;
hitRate_ctrlData_M3N = hitRate_ctrlData_M3N(:,rfSide);
hitRate_drugData_M3N = hitRate_drugData_M3N(:,rfSide);

% For corrected variability: separate control day and drug day data.
% Monkey 2 Neuronal:
rsc_ctrlData_M2N = rscAtt_Monkey2N(dose_Monkey2N==0,:);
rsc_drugData_M2N = rscAtt_Monkey2N(dose_Monkey2N >0,:);
% Monkey 3 Neuronal: 
rsc_ctrlData_M3N = rscAtt_Monkey3N(dose_Monkey3N==0,:);
rsc_drugData_M3N = rscAtt_Monkey3N(dose_Monkey3N >0,:);

% Plot Figure 4D.
figure; hold on; axis square; xlabel('hit rate'); ylabel('corr var');
% Monkey 2 Neuronal data, control days:
c2 = [0.8275 0.1098 0.3569];
plot(hitRate_ctrlData_M2N,rsc_ctrlData_M2N,'^','MarkerFaceColor','w','MarkerEdgeColor',c2)
% Monkey 2 Neuronal data, fit line:
ft = fittype('a*x+b','coefficients',{'a','b'});
f = fit(hitRate_ctrlData_M2N,rsc_ctrlData_M2N,ft,'Start',[0 0]);
fy = f.a*hitRate_ctrlData_M2N+f.b;
plot(hitRate_ctrlData_M2N,fy,'Color',c2,'LineStyle','--');
% Monkey 2 Neuronal data, drug days:
plot(hitRate_drugData_M2N,rsc_drugData_M2N,'^','MarkerFaceColor',c2,'MarkerEdgeColor',c2)
% Monkey 2 Neuronal data, fit line:
f = fit(hitRate_drugData_M2N,rsc_drugData_M2N,ft,'Start',[0 0]);
fy = f.a*hitRate_drugData_M2N+f.b;
plot(hitRate_drugData_M2N,fy,'Color',c2,'LineStyle','-');
% Monkey 3 Neuronal data, control days:
c3 = [0.2784 0.4863 0.7490];
plot(hitRate_ctrlData_M3N,rsc_ctrlData_M3N,'d','MarkerFaceColor','w','MarkerEdgeColor',c3)
% Monkey 3 Neuronal data, fit line:
f = fit(hitRate_ctrlData_M3N,rsc_ctrlData_M3N,ft,'Start',[0 0]);
fy = f.a*hitRate_ctrlData_M3N+f.b;
plot(hitRate_ctrlData_M3N,fy,'Color',c3,'LineStyle','--');
% Monkey 3 Neuronal data, drug days:
plot(hitRate_drugData_M3N,rsc_drugData_M3N,'d','MarkerFaceColor',c3,'MarkerEdgeColor',c3)
% Monkey 3 Neuronal data, fit line:
f = fit(hitRate_drugData_M3N,rsc_drugData_M3N,ft,'Start',[0 0]);
fy = f.a*hitRate_drugData_M3N+f.b;
plot(hitRate_drugData_M3N,fy,'Color',c3,'LineStyle','-');
% Finish plot.
axis([0 1 .05 .4])
ax = gca;
ax.XTick = [0 .5 1]; ax.XTickLabel = [0 .5 1];
ax.YTick = [.1 .2 .3 .4]; ax.YTickLabel = [.1 .2 .3 .4];
hold off
