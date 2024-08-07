num = [0 0 36.6];
den = [1 9.2 15.4 0 0];

% k1 = 1, K2 = 0.1, K3 = 0.1
n1 = conv([0.1 1 0.1],num);
[num1,den1] = negfeedback(n1,1,den,1);
tf1 = tf(num1,den1);
tf11 = tf(n1,den);

figure;
step(tf1)
stepinfo(tf1)
figure;
rlocus(tf11)


function [num,den] = negfeedback(n1,n2,d1,d2)
num = conv(n1,d2);
den = conv(d1,d2)+conv(n1,n2);
end