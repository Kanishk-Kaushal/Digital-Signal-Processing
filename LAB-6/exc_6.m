clc; 
clear all; 
close all;

rp = 1; %Pass-band attenuation
rs = 30; %Stop-band attenuation
wp = 30; %Frequency should be in rad/sec 
ws = 40;

T = 0.1;

[n_b,wp_b] = buttord(wp,ws,rp,rs,'s');  % Gives mimimum order of filter
[b_b,a_b] = butter(n_b,wp,'low','s');

% Transformation from analog to digital using Bilinear Transformation
[bbz, abz] = bilinear(b_b,a_b,1/T);
[Hbbd, wbbd] = freqz(bbz,abz); % Digital freq. response 

% Transformation from analog to digital using Impulse Invariance
[bbzi, abzi] = impinvar(b_b,a_b,1/T);
[Hbbdi, wbbdi] = freqz(bbz,abz); % Digital freq. response 




subplot(4,1,1)
plot(wbbd/(pi), 20*log10(abs(Hbbd))), grid on; 
title('Frequency Response Butterworth Filter BLT');
xlabel(' Frequency in Hz '),ylabel(' Magnitude in dB ');

subplot(4,1,2)
plot(wbbdi/(pi), 20*log10(abs(Hbbdi))), grid on; 
title('Frequency Response Butterworth Filter Impulse Invariance');
xlabel(' Frequency in Hz '),ylabel(' Magnitude in dB ');
