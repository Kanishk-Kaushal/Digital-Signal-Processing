clc;        % clears the command window
clear all;  % clear all variables
close all;  % all the existing figure windows will be closed

k = 0:15;   % time index for the discrete signal from 0 to 15 with unity sampling

subplot(4,3,1); 
plot((-1/2).^k);
title('A  (-1/2)^k'); 
ylabel('Amplitude')

subplot(4,3,2); 
plot((2).^k);
title('A  (2)^k'); 
ylabel('Amplitude')

subplot(4,3,3); 
plot((-2).^k);
title('A  (-2)^k'); 
ylabel('Amplitude')

t = linspace(0, 2*pi);

subplot(4,3,4); 
plot(square(t, 25));
title('B  25% DC Sq Wave'); 
ylabel('Amplitude')

subplot(4,3,5); 
plot(square(t, 50));
title('B  50% DC Sq Wave'); 
ylabel('Amplitude')

subplot(4,3,6); 
plot(square(t, 75));
title('B  75% DC Sq Wave'); 
ylabel('Amplitude')

subplot(4,3,8); 
plot(sawtooth(t, 0.5));
title('C  Triangular Wave'); 
ylabel('Amplitude')

s1 = sin(2*pi*10*t);
s2 = sin(2*pi*30*t);
s3 = sin(2*pi*60*t);
s = s1 + s2 + s3;
subplot(4,3,11); 
plot(s);
title('D  Multi-Tone Signal'); 
ylabel('Amplitude')

