clc; clear all; close all;
t1 = 0:0.01:4;
t2 = 4.01:0.01:8;
t = [t1 t2];
p = [1, 2, 5];
k = [20, 100];
u = [2*ones(1,length(t1)),3*ones(1,length(t2))];
for i=1:length(p)
    for j=1:length(k)
    n1 = [0 0 1];
    d1 = [1 p(i) 0];
    n2=[0 11 k(j)];
    d2 = [0 0 1];
    [n, d]=blockdiag(n1,n2,d1, d2,'series');
    [n, d]=blockdiag(n,1,d,1,'nfeedb');
    sys = tf(n, d);
% Plot impulse and step response
    figure;
    subplot(3, 2,[1, 3]);
    impulse(sys);
    title(sprintf('Impulse response,k=%d, p=%d',k(j),p(i)));
    subplot(3, 2, [2, 4]);
    step(sys);
    title(sprintf('Step response, k=%d, p=%d',k(j),p(i)));
% Plot system response to input signal
    subplot(3,1,3);
    isimplot(sys,u,t);
    title(sprintf('System response to input signal, k=%d, p-%d', k(j), p(i)));
   end
end