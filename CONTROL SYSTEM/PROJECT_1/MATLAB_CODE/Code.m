%%3_1a
s = tf('s')
num = [0 0 0 36.6];
den = [1 9.2 15.4 36.6];
TF = tf(num,den)
pzmap(TF)
subplot(3,1,1)
step(TF)
subplot(3,1,2)
impulse(TF)
subplot(3,1,3)
step(TF/s)


%% 3_2
k = [1:1:5];

num = [0 0 0 36.6];
den = [1 9.2 15.4 36.6];

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

% pzplot(tf1)
% pzplot(tf2)
% pzplot(tf3)
% pzplot(tf4)
% pzplot(tf5)
% 
% step(tf1)
% stepinfo(tf1)
% 
% step(tf2)
% stepinfo(tf2)
% 
% step(tf3)
% stepinfo(tf3)

% rlocus(tf1)
% rlocus(tf2)
% figure;
% rlocus(tf3)
% figure;
% rlocus(tf4)



% function [num,den] = negfeedback(n1,n2,d1,d2)
%  num = conv(n1,d2);
%  den = conv(d1,d2)+conv(n1,n2);
%end

%% 3_4 PD Controller
% num = [0 0 0 36.6];
% den = [0 1 9.2 15.4 36.6];
% 
% % k=1,z=1
% n1 = conv([1 1],num);
% [num1,den1] = negfeedback(n1,1,den,1);
% tf1 = tf(num1,den1);
% 
% % figure;
% % step(tf1)
% % stepinfo(tf1)
% % figure;
% % rlocus(tf1)
% 
% % k=2,z=1
% % n2 = conv([2 2],num);
% % [num2,den2] = negfeedback(n2,1,den,1);
% % tf2 = tf(num2,den2);
% % 
% % figure;
% % step(tf2)
% % stepinfo(tf2)
% % figure;
% % rlocus(tf2)
% 
% % k=1,z=2
% % n3 = conv([1 2],num);
% % [num3,den3] = negfeedback(n3,1,den,1);
% % tf3 = tf(num3,den3);
% % 
% % figure;
% % step(tf3)
% % stepinfo(tf3)
% % figure;
% % rlocus(tf3)
% 
% % k=3,z=2
% % n4 = conv([3 6],num);
% % [num4,den4] = negfeedback(n4,1,den,1);
% % tf4 = tf(num4,den4);
% % 
% % figure;
% % step(tf4)
% % stepinfo(tf4)
% % figure;
% % rlocus(tf4)
% 
% % k=5,z=7
% % n5 = conv([5 35],num);
% % [num5,den5] = negfeedback(n5,1,den,1);
% % tf5 = tf(num5,den5);
% % 
% % figure;
% % step(tf5)
% % stepinfo(tf5)
% % figure;
% % rlocus(tf5)
% 
% % k=9,z=13
% % n6 = conv([9 117],num);
% % [num6,den6] = negfeedback(n6,1,den,1);
% % tf6 = tf(num6,den6);
% % 
% % figure;
% % step(tf6)
% % stepinfo(tf6)
% % figure;
% % rlocus(tf6)
% 
% % k=2,z=13
% n7 = conv([2 26],num);
% [num7,den7] = negfeedback(n7,1,den,1);
% tf7 = tf(num7,den7);
% 
% figure;
% step(tf7)
% stepinfo(tf7)
% figure;
% rlocus(tf7)
% 
% function [num,den] = negfeedback(n1,n2,d1,d2)
% num = conv(n1,d2);
% den = conv(d1,d2)+conv(n1,n2);
% end

%% 3_5 PI Controller
% num = [0 0 0 36.6];
% den = [1 9.2 15.4 36.6 0];
% 
% %k=1,z=1
% % n1 = conv([1 1],num);
% % [num1,den1] = negfeedback(n1,1,den,1);
% % tf1 = tf(num1,den1);
% %  
% % figure;
% % step(tf1)
% % stepinfo(tf1)
% % figure;
% % rlocus(tf1)
%  
% % k=2,z=1
% % n2 = conv([2 2],num);
% % [num2,den2] = negfeedback(n2,1,den,1);
% % tf2 = tf(num2,den2);
% % 
% % figure;
% % step(tf2)
% % stepinfo(tf2)
% % figure;
% % rlocus(tf2)
% % 
% % %k=1,z=2
% % n3 = conv([1 2],num);
% % [num3,den3] = negfeedback(n3,1,den,1);
% % tf3 = tf(num3,den3);
% % 
% % figure;
% % step(tf3)
% % stepinfo(tf3)
% % figure;
% % rlocus(tf3)
% 
% % %k=3,z=2
% % n4 = conv([3 6],num);
% % [num4,den4] = negfeedback(n4,1,den,1);
% % tf4 = tf(num4,den4);
% % 
% % figure;
% % step(tf4)
% % stepinfo(tf4)
% % figure;
% % rlocus(tf4)
% % 
% % %k=5,z=7
% % n5 = conv([5 35],num);
% % [num5,den5] = negfeedback(n5,1,den,1);
% % tf5 = tf(num5,den5);
% % 
% % figure;
% % step(tf5)
% % stepinfo(tf5)
% % figure;
% % rlocus(tf5)
% % 
% % %k=9,z=13
% % n6 = conv([9 117],num);
% % [num6,den6] = negfeedback(n6,1,den,1);
% % tf6 = tf(num6,den6);
% % 
% % figure;
% % step(tf6)
% % stepinfo(tf6)
% % figure;
% % rlocus(tf6)
% % 
% % % k=2,z=13
% % n7 = conv([2 26],num);
% % [num7,den7] = negfeedback(n7,1,den,1);
% % tf7 = tf(num7,den7);
% % 
% % figure;
% % step(tf7)
% % stepinfo(tf7)
% % figure;
% % rlocus(tf7)
% 
% 
% function [num,den] = negfeedback(n1,n2,d1,d2)
% num = conv(n1,d2);
% den = conv(d1,d2)+conv(n1,n2);
% end

%% 3_6 
