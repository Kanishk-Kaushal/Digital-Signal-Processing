clc; 
clear all; 
close all; 

Fs = 1000;
t = 0:1/Fs:1;           % Window length is 0 to 1 

x = sin(2*pi*30*t) + sin(2*pi*80*t) + sin(2*pi*120*t);    % Signqal

X = fft(x);             % fft(x, M) can be used to control the DFT length 
l = length(X)/2;
f = (0:(l-1))*Fs/(2*l);

subplot(311), plot(t, x);
title('Multi Tone Signal'); 
xlabel('Time in sec');ylabel('Amplitude'); 

subplot(312), plot(f,abs(X(1:l)));
zoom on; 
title('Magnitude Response'); 
ylabel('Amplitude'); 
ang=(angle(X(1:l)) * (180/pi));

subplot(313), plot(f, ang);
title('Phase Response');
xlabel('Frequency in Hz'); 
ylabel('Angle in Degrees');