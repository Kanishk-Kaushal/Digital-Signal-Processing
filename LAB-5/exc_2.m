clc; 
clear all; 
close all;

rp = 1; %Pass-band attenuation
rs = 50; %Stop-band attenuation
wp = 2*pi*1000; %Frequency should be in rad/sec 
ws = 2*pi*200;

[n_b, wc_b] = buttord(wp,ws,rp,rs,'s'); %Getting the order N and the 3dB cut-off freq
[b_b, a_b] = butter(n_b,wc_b,'high','s'); %Getting the numerator & denominator polynomial coeffs
[H_b, w_b] = freqs(b_b,a_b); %Complex freq.response of analog filter

[n_c1,wp_c1] = cheb1ord(wp,ws,rp,rs,'s');  % Gives mimimum order of filter
[b_c1,a_c1] = cheby1(n_c1,rp,wp,'high','s');
[H_c1, w_c1] = freqs(b_c1,a_c1); %Complex freq.response of analog filter


subplot(2,1,1)
plot(w_b/(2*pi),20*log10(abs(H_b))), grid on; 
title('Frequency Response Butterworth Filter');
xlabel(' Frequency in Hz '),ylabel(' Magnitude in dB ');
disp(' the order and cut off frequency in Hz are '),disp( n_b),disp( wc_b/(2*pi));

subplot(2,1,2)
plot(w_c1/(2*pi),20*log10(abs(H_c1))), grid on; 
title('Frequency Response Chebyshev Type-1 Filter');
xlabel(' Frequency in Hz '),ylabel(' Magnitude in dB ');
disp(' the order and cut off frequency in Hz are '),disp( n_c1),disp( wp_c1/(2*pi));

