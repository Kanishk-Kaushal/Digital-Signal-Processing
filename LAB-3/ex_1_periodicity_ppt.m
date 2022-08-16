w = [0:1:500]*pi/500;
x = exp(1i*(w-(pi/3))./exp(1i*(w-(pi/3)))-0.9);

subplot(1, 2, 1);
plot(w, abs(x));
title("Magnitude Response");

subplot(1, 2, 2);
plot(w, angle(x));
title("Phase Response");
