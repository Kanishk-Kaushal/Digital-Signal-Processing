clear all; 
clc ; 
close all

Fs = 1000; % Sampling rate
t = 0:1/(Fs):0.5;

wc = 2*100/Fs; %Normalized 3 dB cutoff freq. for the filter
x = sin(2*pi*t*50) + sin(2*pi*t*200);
[b,a] = butter(3,wc); %Getting the numerator & denominator polynomial coeffs
[H,W] = freqz(b,a,Fs); %Complex freq. response of analog filter

figure(1);

k=W*Fs/(2*pi); % defining frequency vector for plotting
plot(k,20*log10(abs(H))), grid on; title('Frequency Response');
xlabel(' Frequency in Hz '),ylabel(' Magnitude in dB ');

% Filter testing
yb = filter(b,a,x) ;
% Getting spectrum and plot 
N = 512;
w = [0:N/2 - 1]* (Fs/N) ; %defining frequency vector for plotting
X = fft(x,N);
Yb = fft(yb,N);
figure(2);
subplot(211), plot(w,abs(X(1:N/2))); 
title('Spect rum of input signal ' ) ; 
subplot(212), plot(w,abs(Yb(1:N/2))); 
title('Spectrum of filtered signal ' ) ;