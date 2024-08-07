%1)TO PLOT ZEROS AND POLES GRAPHS ON REAL AND IMAGINARY AXIS

clc; clear; close;
syms z;%symulize the variable
Hz=z/[z-0.5]; %to find zeros and poles
a=[1 -0.5];  %defining a
b=[1];%defining b
[z,p,k]=tf2zpk(b,a);
zplane(z,p);%to plot zeros and poles onz plane

%2)To find impulse response

hn=iztrans(Hz);%to find inverse z transform
disp('hn=');
disp(hn);%display h(n)
n=0:9;
h=subs(hn,n);
figure(2);% to plot impule response
stem(n,h);% dicrete time used stem
title("impulse response");


%3)to find frequency response replece z by e^jw

w=-pi:0.01:pi;%defining variable w
Hw=exp(i*w)./(exp(i*w)-0.5);
Hwmag=abs(Hw); %to find absolute value of Hw
Hwang=angle(Hw);%to find angle value of Hw
figure(3);
subplot(211);a=gca();%to plot graph in box
a.YAxisLocation="origin" 
plot(w,Hwmag); % plot magnitude response
title("magnitude response");
xlabel("w");ylabel("|Hw|");%labeling the axes
subplot(212);a=gca();
a.YAxisLocation="origin"
plot(w,Hwang); %plot phase responsea
title("phase response");
xlabel("w");ylabel("angle of Hw");;%labeling the axes


