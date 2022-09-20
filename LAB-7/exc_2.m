clc;
clear all;
close all;
Fs = 2000;
rp = 0.5;
rs = 40;
wp = 0.5*pi;
ws = 0.6*pi;

N = ceil(6.6*pi/(ws - wp));
disp(N);
b = fir1(N,[0.4,0.6]);
[H,W] = freqz(b,1,512);
figure(1);
plot(W/pi,20*log10(abs(H))),grid on;
title('FIR filter using Hamming window');
xlabel('Normalized frequency'),ylabel('Gain in dB');

k = (rs - 7.95)/14.36;
N1 = ceil((k*2*pi)/(ws-wp));
disp(N1);
b1 = fir1(N1,[0.4,0.6],kaiser(N1+1,4.55));
[H1,W1] = freqz(b1,1,512);
figure(2);
plot(W1/pi,20*log10(abs(H1))),grid on;
title('FIR filter using Kaiser window');
xlabel('Normalized frequency'),ylabel('Gain in dB');