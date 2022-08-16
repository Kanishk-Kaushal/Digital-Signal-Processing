g = [1 -3 4 2 0 -2];
h = [3 0 1 -1 2 1];

n = 0:5;
x = cos(n*pi/2);
y = 3.^n;

lin_c = conv(g, h);
circ_c = cconv(g, h, 11);

clin = conv(x, y);
ccirc = cconv(x, y, 1);

g1 = [g zeros(1, 11-length(g))];
h1 = [h zeros(1, 11-length(h))];

x1 = [x zeros(1, 11-length(x))];
y1 = [y zeros(1, 11-length(y))];

lin_c_upd = ifft(fft(g1).*fft(h1));
clin_upd = ifft(fft(x1).*fft(y1));

subplot(321), stem(lin_c);
title("A Linear Convulation");

subplot(322), stem(circ_c);
title("A Circular Convulation");

subplot(323), stem(lin_c_upd);
title("A Linear Convulation using Circular Convulation");

subplot(324), stem(clin);
title("B Linear Convulation");

subplot(325), stem(ccirc);
title("B Circular Convulation");

subplot(326), stem(clin_upd);
title("B Linear Convulation using Circular Convulation");