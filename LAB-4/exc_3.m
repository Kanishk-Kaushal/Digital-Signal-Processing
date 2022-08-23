% clc; 
% clear all; 
% close all;

a = [1 0 -0.81];        % Denominator coefficient as in step 2 
b = [1 -1 ];            % Numerator coefficient as in step 2

y = [2 2];              % Initial conditions array
x = [-1 -2];            % Initial conditions array

xic = filtic(b,a,y,x);  % converts past input x and output y into
                        % initial conditions which is required for the computation of %Y(z). Refer Step 2
                        
% X(z) transform coeffs
ax = [1 0 0]; 
bx = [0 0.49 -0.7]; 

ay = conv(a, ax);                   % Gives denominator polynomial coefficients of Y(z)
by = conv(b, bx) + conv(xic,ax);    % Gives numerator polynomial coefficients of Y(z)

[R, p, C] = residuez(by, ay);

disp('Residues '), disp( R), disp('Poles '), disp( p), disp('Direct Term '), disp(C);

% Response for desired input

n = 0:20;
u1 = n>=(-1);
x = (0.7.^n).*u1;
y1 = filter(b, a, x);

L = 30;

[y2, n] = impz(by, ay, L);

stem(y2);
title("Output's Impulse Response");
