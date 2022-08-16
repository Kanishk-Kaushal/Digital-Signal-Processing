clc; 
clear all; 
close all;

w = [0:1:500]*pi/500; % Defining 501 values of radian frequency pi/500 in the range 0 to 500

% Given Signal => h[n] = 0.5^n*u[n]
% Its DTFT is x
x = exp(1i*w)./(exp(1i*w)-0.5); 

subplot(121)
plot(w, abs(x)), title('Magnitude response'), xlabel('w'), ylabel('Amplitude');

subplot(122), plot(w,angle(x));
title('Phase Response'), xlabel('w(radians)'), ylabel('Angle');
