%% Example Flat display
clc; clear;
alpha= 5000; gamma= 0.5;
p20k_below= wblcdf(20000, alpha, gamma)
p20k_beyond = 1- p20k_below
p10k_20k = wblcdf (20000, alpha, gamma) - wblcdf (10000, alpha, gamma)
[M, V]= wblstat (alpha, gamma) 
time= 1:100:25000;
subplot (211); fx= wblpdf (time, alpha, gamma);
plot (time, fx, 'linewidth', 2.5); xlabel('Time'); ylabel('Weibull PDF Display');
subplot (212); ft= wblcdf (time, alpha, gamma);
plot (time, ft, 'linewidth', 2.5); xlabel('Time'); ylabel('Weibull CDF Display');