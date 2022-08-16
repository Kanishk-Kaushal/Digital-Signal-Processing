a1 = [1 0.13 0.52 0.3];
b1 = [0.16 -0.48 0.48 -0.16];

a2 = [1 0 -0.26];
b2 = [0.634 0 -0.634];

a3 = [1 0 0.268];
b3 = [0.634 0 -0.634];

a4 = [1 -5 10];
b4 = [10 -5 1];

N = 512;

[h1, w1] = freqz(b1, a1, N);
[h2, w2] = freqz(b2, a2, N);
[h3, w3] = freqz(b3, a3, N);
[h4, w4] = freqz(b4, a4, N);

subplot(421), plot(w1,abs(h1));
title('Magnitude Response 1'), xlabel('w(radians)'), ylabel('Amplitude'); 
subplot(422), plot(w1,angle(h1));
title('Phase Response 1'), xlabel('w(radians)'), ylabel('Angle');

subplot(423), plot(w2,abs(h2));
title('Magnitude Response 2'), xlabel('w(radians)'), ylabel('Amplitude'); 
subplot(424), plot(w2,angle(h2));
title('Phase Response 2'), xlabel('w(radians)'), ylabel('Angle');

subplot(425), plot(w3,abs(h3));
title('Magnitude Response 3'), xlabel('w(radians)'), ylabel('Amplitude'); 
subplot(426), plot(w3,angle(h3));
title('Phase Response 3'), xlabel('w(radians)'), ylabel('Angle');

subplot(427), plot(w4,abs(h4));
title('Magnitude Response 4'), xlabel('w(radians)'), ylabel('Amplitude'); 
subplot(428), plot(w4,angle(h4));
title('Phase Response 4'), xlabel('w(radians)'), ylabel('Angle');
