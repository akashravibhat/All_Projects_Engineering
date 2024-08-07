k = [1:1:5];

num = [0 0 0 36.6];
den = [1 9.2 15.4 0];

n1 = conv(num,k(1));
n2 = conv(num,k(2));
n3 = conv(num,k(3));
n4 = conv(num,k(4));
n5 = conv(num,k(5));
d1 = conv(den,1);

[num1,den1] = negfeedback(n1,1,d1,1);
[num2,den2] = negfeedback(n2,1,d1,1);
[num3,den3] = negfeedback(n3,1,d1,1);
[num4,den4] = negfeedback(n4,1,d1,1);
[num5,den5] = negfeedback(n5,1,d1,1);

tf1 = tf(num1,den1);
tf2 = tf(num2,den2);
tf3 = tf(num3,den3);
tf4 = tf(num4,den4);
tf5 = tf(num5,den5);
% 
% figure
% step(tf1)
% stepinfo(tf1)
% 
% figure
% step(tf2)
% stepinfo(tf2)
% 
% figure
% step(tf3)
% stepinfo(tf3)

figure
step(tf4)
stepinfo(tf4)

tf11 = tf(n1,d1);
tf22 = tf(n2,d1);
tf33 = tf(n3,d1);
tf44 = tf(n4,d1);

figure
% rlocus(tf11)
% rlocus(tf22)
% rlocus(tf33)
% rlocus(tf44)


function [num,den] = negfeedback(n1,n2,d1,d2)
num = conv(n1,d2);
den = conv(d1,d2)+conv(n1,n2);
end
