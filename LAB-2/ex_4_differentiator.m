clc;        % clears the command window
clear all;  % clear all variables
close all;  % all the existing figure windows will be closed

n = 0:0.1:10;   % time index for the discrete signal from 0 to 15 with unity sampling

u = [(n)>=0];       % Unit Step
u1 = [(n-1)>=0];    % Delayed step
u11 = [(n-11)>=0];  % Delayed step
u10 = [(n-10)>=0];  % Delayed step 
u21 = [(n-21)>=0];  % Delayed step
u20 = [(n-20)>=0];  % Delayed step
u101 = [(n-101)>=0];  % Delayed step
u100 = [(n-100)>=0];  % Delayed step

x1 = 5.*(u - u20);
x11 = 5.*(u1 - u21);
x2 = (u - u10) + (20 - n).*(u10 - u20);
x21 = (u1 - u11) + (21 - n).*(u11 - u21);
x3 = sin(n.*pi./25).*(u - u100);
x31 = sin((n-1).*pi./25).*(u1 - u101);

y1 = x1 - x11;
y2 = x2 - x21;
y3 = x3 - x31;

subplot(3,1,1); 
stem(y1);
title('Y1'); 
ylabel('Amplitude')

subplot(3,1,2); 
stem(y2);
title('Y2'); 
ylabel('Amplitude')

subplot(3,1,3); 
stem(y3);
title('Y3'); 
ylabel('Amplitude')