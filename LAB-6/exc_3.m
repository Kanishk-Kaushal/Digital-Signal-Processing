clc 
clear all
close all;

% H(s) specifications 
bs = [1 1]; %Numerator 
as = [1 5 6]; %Denominator

% Analog design
T = 1; % Given

% Transformation from analog to digital 
[bz, az] = bilinear(bs,as,1/T);
[Hbd, wbd] = freqz(bz,az); % Digital freq. response 

figure(1); 
plot(wbd/pi,20*log10(abs(Hbd))),grid on; 
title('Result')
ylabel('Magnitude in dB' );
xlabel('Frequency in pi units' );
