clc; 
clear all; 
close all;


% Symmetry Property proved for => h[n] = a^n*u[n]

b = [1 0 0];
a = [1 -0.5 0];     % Assuming a = 0.5

N = 512;

[h w] = freqz(b,a,N,'whole');

w = w-pi;           % In order to visualise SYmmetry Property

subplot(121), plot(w,abs(h));
title('Magnitude Response'), xlabel('w(radians)'), ylabel('Amplitude');

subplot(122), plot(w,angle(h));
title('Phase Response'), xlabel('w(radians)'), ylabel('Angle');