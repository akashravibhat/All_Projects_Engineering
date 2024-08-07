s=tf('s');
num1=[1 1];
num2=[-1 7];
den1=[2 -1 2];
den2=[-3 4 -1];
G1=tf(num1,den1);
G2=tf(num2,den2);
G5=feedback(G1,G2,-1)
