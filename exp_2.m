clc; 
clear all; 
close all;

rp = 1; %Pass-band attenuation
rs = 40; %Stop-band attenuation
wp = 2*pi*100; %Frequency should be in rad/sec 
ws = 2*pi*500;
[N, wc] = buttord(wp,ws,rp,rs,'s'); %Getting the order N and the 3dB cut-off freq
[b, a] = butter(N,wc,'s'); %Getting the numerator & denominator polynomial coeffs
[H, W] = freqs(b,a); %Complex freq.response of analog filter

plot(W/(2*pi),20*log10(abs(H))), grid on; 
title('Frequency Response');
xlabel(' Frequency in Hz '),ylabel(' Magnitude in dB ');
disp(' the order and cut off frequency in Hz are '),disp( N),disp( wc/(2*pi));