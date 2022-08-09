clc; 
clear all; 
close all;

n = 0:15;           % time index for the discrete signal from 0 to 15 with unity sampling

u = [(n)>=0];       % Unit Step
u5 = [(n-5)>=0];    % Delayed step 
a5 = 5* u;          % Scaled unit step
x = u-u5;           % rectangular window x[n]= u[n]- u[n-5]

y = [1 2 3 4 5];

subplot(3,1,1); 
plot(n,x);
title('Rectangular Window X'); 
ylabel('Amplitude')

subplot(3,1,2); 
plot(y)
title('Given Signal Y'); 
ylabel('Amplitude')

subplot(3,1,3); 
plot(conv(x, y));
title('Convulation Result'); 
ylabel('Amplitude')
                        