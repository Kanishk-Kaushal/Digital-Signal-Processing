% STARTUP
clc                     % CLEARS CMD WINDOW
clear all               % CLEARS ALL VARIABLES
close all               % ALL EXISTING FIGURE WINDOWS CLOSE DOWN

% SIGNAL CHARACTERISTICS
Fs = 1000;              % SAMPLING FREQUENCY
f = 200;                % SIGNAL FREQUENCY
t = 0:(1/Fs):(2/f);     % TIME SEQUENCE | 0 -> (2/f) with (1/Fs) increment | X-AXIS 
y = 5*sin(2*pi*f*t);    % SIGNAL GENERATION | SINE WAVE | Y-AXIS

% PLOT SIGNAL
plot(t, y);              
title('Sine Wave Generation');
xlabel('Time')
ylabel('Sine Wave')
