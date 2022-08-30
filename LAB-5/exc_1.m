clc; 
clear all; 
close all;

rp = 1; %Pass-band attenuation
rs = 50; %Stop-band attenuation
wp = 2*pi*200; %Frequency should be in rad/sec 
ws = 2*pi*700;

[n_b, wc_b] = buttord(wp,ws,rp,rs,'s'); %Getting the order N and the 3dB cut-off freq
[b_b, a_b] = butter(n_b,wc_b,'s'); %Getting the numerator & denominator polynomial coeffs
[H_b, w_b] = freqs(b_b,a_b); %Complex freq.response of analog filter

[n_c1,wp_c1] = cheb1ord(wp,ws,rp,rs,'s');  % Gives mimimum order of filter
[b_c1,a_c1] = cheby1(n_c1,wp,ws,'s');
[H_c1, w_c1] = freqs(b_c1,a_c1); %Complex freq.response of analog filter

[n_c2,wp_c2] = cheb2ord(wp,ws,rp,rs,'s');  % Gives mimimum order of filter
[b_c2,a_c2] = cheby2(n_c2,wp,ws,'s');
[H_c2, w_c2] = freqs(b_c2,a_c2); %Complex freq.response of analog filter

[n_e,wp_e] = ellipord(wp,ws,rp,rs,'s');  % Gives mimimum order of filter
[b_e,a_e] = ellip(n_e,rp,rs,wp,'s');
[H_e, w_e] = freqs(b_e,a_e); %Complex freq.response of analog filter


subplot(4,1,1)
plot(w_b/(2*pi),20*log10(abs(H_b))), grid on; 
title('Frequency Response Butterworth Filter');
xlabel(' Frequency in Hz '),ylabel(' Magnitude in dB ');
disp(' the order and cut off frequency in Hz are '),disp( n_b),disp( wc_b/(2*pi));

subplot(4,1,2)
plot(w_c1/(2*pi),20*log10(abs(H_c1))), grid on; 
title('Frequency Response Chebyshev Type-1 Filter');
xlabel(' Frequency in Hz '),ylabel(' Magnitude in dB ');
disp(' the order and cut off frequency in Hz are '),disp( n_c1),disp( wp_c1/(2*pi));

subplot(4,1,3)
plot(w_c2/(2*pi),20*log10(abs(H_c2))), grid on; 
title('Frequency Response Chebyshev Type-2 Filter');
xlabel(' Frequency in Hz '),ylabel(' Magnitude in dB ');
disp(' the order and cut off frequency in Hz are '),disp( n_c2),disp( wp_c2/(2*pi));

subplot(4,1,4)
plot(w_e/(2*pi),20*log10(abs(H_e))), grid on; 
title('Frequency Response Elliptical Filter');
xlabel(' Frequency in Hz '),ylabel(' Magnitude in dB ');
disp(' the order and cut off frequency in Hz are '),disp( n_e),disp( wp_e/(2*pi));
