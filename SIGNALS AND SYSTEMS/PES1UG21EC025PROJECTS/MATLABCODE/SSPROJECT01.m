%1]  Plot the Discrete time and continuous time signals using MATLABSolution   
% For continuous time 
t=[0:0.00001:1];
y=(sin(6*(pi).*t)).^2;
plot(t,y)%PLOTTING CONTINUOUS SIGNALS
xlabel('time');
ylabel('x[t]');
title ('x v/s t');
%For discrete time  
n=[0:1:20];
x=(cos(2*(pi/20).*n));
stem(n,x) %PLOTTING DISCRETE SIGNALS
xlabel('time');
ylabel('x[t]');
title ('x v/s t');


%2]	Calculation of Energy and power of signals
%Solution:
%MATLAB Code-
%Find Energy and power of [continuous time]
syms t;
L=length(y);
P = (norm(y)^2)/L
E = P/t
%Find Energy and power of [Discrete time signal]
syms n;
L=length(x);
P = (norm(x)^2)/L
E = P/n


%3]basic operation signals 
%in continuous time 
%solution
t=[0:0.00001:1];
y=sin(t);
plot(t,y)
title("original signal")
%scaling 
z=sin(2*t);
plot(t,z)
xlabel('time');
ylabel('x[t]');
title ('scaled t');
%shifting
plot(t+2,z)
xlabel('time');
ylabel('x[t]');
title ('shifted t');
%discreate signal
n=[0:1:20];
y=(cos(2*(pi/20).*n));
%scaling and shifting
z1=(cos(2*(pi/20).*n*2))
stem(n+2,z1)
xlabel('n');
ylabel('x[n]');
title ('shifted and scaled n');

%4]Impulse response & step response of LTI systems
%Ans: 
%a 	For the discrete time signal x[n] given by 

% find the impulse response and step response
%MATLAB code-
syms n;
A = [1.5 -0.5;1  0];
B = [0.5; 0];
C = [0.3 0.8];
D = 0; 
sys = ss(A,B,C,D,0.5);
impulse(sys)
step(sys)
% for continuous time
syms t;
sys=tf(1,[1,2,1]);
impulse(sys)
step(sys)


%5]Finding Discrete and continuous convolution
%For x[n] = 2u[n] and h[n] = δ[n], find x[n]*h[n]
%MATLAB Code-
n= -25:25;
x= 2*heaviside(n);
h= dirac(n);
y= conv(h,x);
n1 = -25:length(y)-1-25;
stem(n1,y ,'MarkerFaceColor',[0 1 1])
%For x(t) = 5δ(t-1) + u(t+2) and u(t) = u(t-2), find x(t)*h(t)
%MATLAB Code
t= -50:50;
x= 5*dirac(t-1) + heaviside(t-2);
h=heaviside(t-2);
y= conv(h,x);
t1 = -50:length(y)-1-50;
plot(t1,y ,'MarkerFaceColor',[0 1 1])

%6]Solving Difference equations to find the zero input and zero state response
%Determine the first 50 values of the step response of a system with a known impulse response h[n]=0.5n *u[n] 
%zero input response
n = -2:10;
x = zeros(length(n));
b = [1]; a = [1 -0.5 1.5];
c = [0 1];
%initial conditions
y = c;
for i=3:13
y(i) = y(i-2)*a(2) + y(i-1)*a(3) + x(i);
end
subplot(121); 
stem(n,y);
title('Zero input response yzi(n)');
%zero state response
n=-2:10;
b=[1];
a=[1 -0.5 1.5];
c=[0 1];
x = [n>=0]; %u[n] 
c = [0 0]; %initial condition
% c = [y(-2) y(-1)];
y = [c];
for i=3:13
    y(i) = y(i-2)*a(2) + y(i-1)*a(3) + x(i);
end

subplot(122); stem(n,y);
title('Zero state response yzs(n)')

