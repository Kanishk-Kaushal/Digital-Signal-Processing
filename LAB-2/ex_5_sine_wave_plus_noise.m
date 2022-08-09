clc;        % clears the command window
clear all;  % clear all variables
close all;  % all the existing figure windows will be closed

f = 80;
t = 0:10;

s = sin(2*pi*f*t);

res = awgn(s, 10);

subplot(2,1,1); 
plot(res);
title('Sine Wave + WGN'); 
ylabel('Amplitude')

ac = autocorr(res);

subplot(2,1,2);
plot(ac);
title('Autocorrelation'); 
ylabel('Amplitude')
