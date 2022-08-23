clc; 
clear all; 
close all;

b = [1 0.5];        % Coefficients of numerator polynomials 
a = [1 -1.8 0.81];  % Coefficients of denominator polynomials

% To obtain system function in the partial fraction form

[r p k]=residuez(b,a); % finds the residues, poles and direct terms of the partial-%fraction expansion of the system function. 

disp(['r = ' num2str(r')]);
disp(['p = ' num2str(p')]);
disp(['k = ' num2str(k')]);

% To obtain The pole – zero plot

[z p k] = tf2zp(b,a); % To obtain zeros , ploes and gain constant of the system.

disp('Zeros are at'); 
disp(z); 

disp('poles are at'); 
disp(p); 

disp('Gain Constant is'); 
disp(k);

zplane(b,a); % Gives the pole – zero plot

% To obtain frequency response of the system

N = 512; % Frequency resolution assumed.

[h w] = freqz(b,a,N);   % returns the N-point complex frequency response

%vector h and the N-point frequency vector w in radians
 
figure;
subplot(211), plot(w,abs(h)), title('Magnitude Response');
xlabel('Frequency in radians'), ylabel('Amplitude'); 
subplot(212), plot(w, angle(h)), title('Phase Response');
xlabel('Frequency in radians'), ylabel('Phase in radians');

% To Obtain the unit impulse response of the system


L = 30; % First 15 values of the impulse response 
[y n] = impz(b,a,L);

figure;
stem(y), title('Impulse Response, h[n]'); 
grid on;
xlabel('Sample Number'), ylabel('Amplitude');

% To find the output of the system for the given input 

n = 0:100;
u = [n>=0];
x = 3*cos(n*pi/3).*u;   % input signal 
y = filter(b, a, x);    % o/p signal

figure;
subplot(211), plot(n,x);
subplot(212), plot(n,y);
