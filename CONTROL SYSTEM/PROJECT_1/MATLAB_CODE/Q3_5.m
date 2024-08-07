num = [0 0 0 36.6];
den = [1 9.2 15.4 0 0];

%k=1,z=1
% n1 = conv([1 1],num);
% [num1,den1] = negfeedback(n1,1,den,1);
% tf1 = tf(num1,den1);
% tf11 = tf(n1,den);
% 
% figure;
% step(tf1)
% stepinfo(tf1)
% figure;
% rlocus(tf11)
 
%k=2,z=1
% n2 = conv([2 2],num);
% [num2,den2] = negfeedback(n2,1,den,1);
% tf2 = tf(num2,den2);
% tf22 = tf(n2,den);
% 
% figure;
% step(tf2)
% stepinfo(tf2)
% figure;
% rlocus(tf22)
% 
% % k=1,z=2
% n3 = conv([1 2],num);
% [num3,den3] = negfeedback(n3,1,den,1);
% tf3 = tf(num3,den3);
% tf33 = tf(n3,den);
% 
% figure;
% step(tf3)
% stepinfo(tf3)
% figure;
% rlocus(tf33)
% 
% % k=3,z=2
n4 = conv([3 6],num);
[num4,den4] = negfeedback(n4,1,den,1);
tf4 = tf(num4,den4);
tf44 = tf(n4,den);

figure;
step(tf4)
stepinfo(tf4)
figure;
rlocus(tf44)
% 
% % k=5,z=7
% n5 = conv([5 35],num);
% [num5,den5] = negfeedback(n5,1,den,1);
% tf5 = tf(num5,den5);
% tf55 = tf(n5,den);
% 
% figure;
% step(tf5)
% stepinfo(tf5)
% figure;
% rlocus(tf55)
% 
% % k=9,z=13
% n6 = conv([9 117],num);
% [num6,den6] = negfeedback(n6,1,den,1);
% tf6 = tf(num6,den6);
% tf66 = tf(n6,den);
% 
% figure;
% step(tf6)
% stepinfo(tf6)
% figure;
% rlocus(tf66)
% 
% % k=2,z=13
% n7 = conv([2 26],num);
% [num7,den7] = negfeedback(n7,1,den,1);
% tf7 = tf(num7,den7);
% tf77 = tf(n7,den);
% 
% figure;
% step(tf7)
% stepinfo(tf7)
% figure;
% rlocus(tf77)


function [num,den] = negfeedback(n1,n2,d1,d2)
num = conv(n1,d2);
den = conv(d1,d2)+conv(n1,n2);
end