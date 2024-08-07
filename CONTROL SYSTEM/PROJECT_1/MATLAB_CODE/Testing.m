num = [0 0 0 36.6];
den = [0 1 9.2 15.4 36.6];

% k=1,z=1
n1 = conv([1 1],num);
tf1 = tf(n1,den);

figure;
step(tf1)
stepinfo(tf1)
figure;
rlocus(tf1)



% function [num,den] = negfeedback(n1,n2,d1,d2)
% num = conv(n1,d2);
% den = conv(d1,d2)+conv(n1,n2);
% end