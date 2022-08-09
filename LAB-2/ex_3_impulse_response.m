clc;        % clears the command window
clear all;  % clear all variables
close all;  % all the existing figure windows will be closed

n = 0:10;   % time index for the discrete signal from 0 to 15 with unity sampling

u = [(n)>=0];       % Unit Step
u10 = [(n-10)>=0];  % Delayed step 
u5 = [(n-5)>=0];    % Delayed step
u3 = [(n-3)>=0];    % Delayed step
u1 = [(n-1)>=0];    % Delayed step

h = (0.5.^n).*(u - u10); % Impulse Response

x1 = (0.8.^n).*(u - u5);

x2 = ((n-0)==0) + 3*((n-1)==0) + 4*((n-3)==0);

y1 = conv(h, x1);
y2 = conv(h, x2);

subplot(5,1,1); 
plot(h);
title('Impulse Response'); 
ylabel('Amplitude')

subplot(5,1,2); 
plot(x1);
title('Input 1'); 
ylabel('Amplitude')

subplot(5,1,3); 
plot(y1);
title('Output 1'); 
ylabel('Amplitude')

subplot(5,1,4); 
plot(x2);
title('Input 2'); 
ylabel('Amplitude')

subplot(5,1,5); 
plot(y2);
title('Output 2'); 
ylabel('Amplitude')