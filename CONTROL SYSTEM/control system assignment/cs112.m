s=tf('s');
num1=[1 1];
num2=[-1 7];
den1=[2 -1 2];
den2=[-3 4 -1];

G1=tf(num1,den1);
G2=tf(num2,den2);

G3=G1*G2;
G3=tf(conv(num1,num2),conv(den1,den2))
