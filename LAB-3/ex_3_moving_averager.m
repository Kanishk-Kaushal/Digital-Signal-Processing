n = 0:100;
N = 512;

u = [(n)>=0];
rand_noise = rand(1, length(n));

x = (0.9.^n).*u + rand_noise;
 
a = [1 0 0];
b = [1/3 1/3 1/3];

[h, w] = freqz(b, a, N, 'whole');

subplot(121), plot(w,abs(h));
title('Magnitude Response'), xlabel('w(radians)'), ylabel('Amplitude'); 
subplot(122), plot(w,angle(h));
title('Phase Response '), xlabel('w(radians)'), ylabel('Angle');
