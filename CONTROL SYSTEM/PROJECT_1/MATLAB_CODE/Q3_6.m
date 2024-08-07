num = [0 0 0 36.6];
den = [1 9.2 15.4 0];
tfm = tf(num,den);
figure
bode(tfm)
figure
nyquist(tfm)

%% Lag compensator

num = [0 0 0 36.6];
den = [1 9.2 15.4 0];

% K=1
% alpha=2, tau=1
% n1 = conv([1 1],num);
% d1 = conv([4 2],den);
% g1 = tf(n1,d1);
% figure
% bode(g1)
% figure
% nyquist(g1)
% figure
% rlocus(g1)
% [n11,d11] = negfeedback(n1,1,d1,1);
% tf1 = tf(n11,d11);
% figure
% step(tf1)
% stepinfo(tf1)

% alpha=3, tau=2
% n2 = conv([2 1],num);
% d2 = conv([18 3],den);
% g2 = tf(n2,d2);
% figure
% bode(g2)
% figure
% nyquist(g2)
% figure
% rlocus(g2)
% [n22,d22] = negfeedback(n2,1,d2,1);
% tf2 = tf(n22,d22);
% figure
% step(tf2)
% stepinfo(tf2)
% 
% % alpha=4, tau=7
% n3 = conv([7 1],num);
% d3 = conv([112 4],den);
% g3 = tf(n3,d3);
% figure
% bode(g3)
% figure
% nyquist(g3)
% figure
% rlocus(g3)
% [n33,d33] = negfeedback(n3,1,d3,1);
% tf3 = tf(n33,d33);
% figure
% step(tf3)
% stepinfo(tf3)
% 
% % alpha=1, tau=7
% n4 = conv([7 1],num);
% d4 = conv([7 1],den);
% g4 = tf(n4,d4);
% figure
% bode(g4)
% figure
% nyquist(g4)
% figure
% rlocus(g4)
% [n44,d44] = negfeedback(n4,1,d4,1);
% tf4 = tf(n44,d44);
% figure
% step(tf4)
% stepinfo(tf4) 
%
% % alpha=9, tau=5
% n5 = conv([5 1],num);
% d5 = conv([315 9],den);
% g5 = tf(n5,d5);
% figure
% bode(g5)
% figure
% nyquist(g5)
% figure
% rlocus(g5)
% [n55,d55] = negfeedback(n5,1,d5,1);
% tf5 = tf(n55,d55);
% figure
% step(tf5)
% stepinfo(tf5) 
%
%% Lead compensator

num = [0 0 0 36.6];
den = [1 9.2 15.4 0];

% % K=1
% % alpha=2, tau=1
% n1 = conv([2 1],num);
% d1 = conv([2 2],den);
% g1 = tf(n1,d1);
% figure
% bode(g1)
% figure
% nyquist(g1)
% figure
% rlocus(g1)
% [n11,d11] = negfeedback(n1,1,d1,1);
% tf1 = tf(n11,d11);
% figure
% step(tf1)
% stepinfo(tf1)
% 
% % alpha=3, tau=2
% n2 = conv([6 1],num);
% d2 = conv([6 3],den);
% g2 = tf(n2,d2);
% figure
% bode(g2)
% figure
% nyquist(g2)
% figure
% rlocus(g2)
% [n22,d22] = negfeedback(n2,1,d2,1);
% tf2 = tf(n22,d22);
% figure
% step(tf2)
% stepinfo(tf3)
% 
% % alpha=4, tau=7
% n3 = conv([28 1],num);
% d3 = conv([28 4],den);
% g3 = tf(n3,d3);
% figure
% bode(g3)
% figure
% nyquist(g3)
% figure
% rlocus(g3)
% [n33,d33] = negfeedback(n3,1,d3,1);
% tf3 = tf(n33,d33);
% figure
% step(tf3)
% stepinfo(tf3)
% 
% % alpha=1, tau=7
% n4 = conv([7 1],num);
% d4 = conv([7 1],den);
% g4 = tf(n4,d4);
% figure
% bode(g4)
% figure
% nyquist(g4)
% figure
% rlocus(g4)
% [n44,d44] = negfeedback(n4,1,d4,1);
% tf4 = tf(n44,d44);
% figure
% step(tf4)
% stepinfo(tf4)
% 
% % alpha=9, tau=5
n5 = conv([35 1],num);
d5 = conv([35 9],den);
g5 = tf(n5,d5);
figure
bode(g5)
figure
nyquist(g5)
figure
rlocus(g5)
[n55,d55] = negfeedback(n5,1,d5,1);
tf5 = tf(n55,d55);
figure
step(tf5)
stepinfo(tf5)

function [num,den] = negfeedback(n1,n2,d1,d2)
num = conv(n1,d2);
den = conv(d1,d2)+conv(n1,n2);
end
