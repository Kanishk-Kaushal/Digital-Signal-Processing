clc; 
clear all; 
close all;

rp = 1; %Pass-band attenuation
rs = 15; %Stop-band attenuation
wp = 0.2*pi; %Frequency should be in rad/sec 
ws = 0.3*pi;

T = 0.1;

[n_c1,wp_c1] = cheb1ord(wp,ws,rp,rs,'s');  % Gives mimimum order of filter
[b_c1,a_c1] = cheby1(n_c1,rp,wp,'s');
% Transformation from analog to digital 
[bc_1z, ac_1z] = impinvar(b_c1,a_c1,1/T);
[Hbc_1d, wbc_1d] = freqz(bc_1z,ac_1z); % Digital freq. response 


[n_c2,wp_c2] = cheb2ord(wp,ws,rp,rs,'s');  % Gives mimimum order of filter
[b_c2,a_c2] = cheby2(n_c2,rp,wp,'s');
% Transformation from analog to digital 
[bc_2z, ac_2z] = impinvar(b_c2,a_c2,1/T);
[Hbc_2d, wbc_2d] = freqz(bc_1z,ac_1z); % Digital freq. response 


[n_e,wp_e] = ellipord(wp,ws,rp,rs,'s');  % Gives mimimum order of filter
[b_e,a_e] = ellip(n_e,rp,rs,wp,'s');
% Transformation from analog to digital 
[bez, aez] = impinvar(b_e,a_e,1/T);
[Hbed, wbed] = freqz(bez,aez); % Digital freq. response 


subplot(4,1,1)
plot(wbc_1d/(pi), 20*log10(abs(Hbc_1d))), grid on; 
title('Frequency Response Chebyshev-1 Filter');
xlabel(' Frequency in Hz '),ylabel(' Magnitude in dB ');

subplot(4,1,2)
plot(wbc_2d/(pi), 20*log10(abs(Hbc_2d))), grid on; 
title('Frequency Response Chebyshev-2 Filter');
xlabel(' Frequency in Hz '),ylabel(' Magnitude in dB ');

subplot(4,1,3)
plot(wbed/(pi), 20*log10(abs(Hbed))), grid on; 
title('Frequency Response Elliptical Filter');
xlabel(' Frequency in Hz '),ylabel(' Magnitude in dB ');

