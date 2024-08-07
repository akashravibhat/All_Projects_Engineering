%%3_1a
s = tf('s')
num = [ 0 0 36.6];
den = [1 9.2 15.4 0];
TF = tf(num,den)
figure
pzmap(TF)
figure
step(TF)
figure
impulse(TF)
figure
title('Ramp response')
step(TF/s) %ramp response