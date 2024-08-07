clc;
clear;
close all;
t1=0:0.01:4;
t2=4.01:0.01:8;
t=[t1 t2];
p=[1,2,5];
u=[2*ones(1,length(t1)),3*ones(1,length(t2))];
for i=p:length(p)
    sys=tf(1,[1 p(1) 0]);
    subplot(3,1,i)
    lsimplot(sys,u,t)
end