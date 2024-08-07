%% Example Tire Weibull Distribution
clc; clear;
alpha = 5000; gamma = 3.5;
TotalTires= 20000;
y= wblcdf (6000, alpha, gamma)
FailTires= y*TotalTires 
time =1:10:10000;
subplot (211); fx = wblpdf (time, alpha, gamma);
plot (time, fx, 'linewidth', 2.5); xlabel('Time'); ylabel('Weibull PDF Tire');
subplot (212); ft = wblcdf (time, alpha, gamma);
plot (time, ft, 'linewidth', 2.5); xlabel('Time'); ylabel('Weibull CDF Tire');