clc; 
clear all; 
close all;

a = [1 -0.95 0.9025];   % Denominator coefficient as in step 2 
b = [1 1 1]/3;          % Numerator coefficient as in step 2
y = [-2 -3];            % Initial conditions array
x = [1 1];              % Initial conditions array

xic = filtic(b,a,y,x);  % converts past input x and output y into
                        % initial conditions which is required for the computation of %Y(z). Refer Step 2
                        
% X(z) transform coeffs
ax = [1 -1 1]; 
bx = [1 -0.5]; 

ay = conv(a, ax);                   % Gives denominator polynomial coefficients of Y(z)
by = conv(b, bx) + conv(xic,ax);    % Gives numerator polynomial coefficients of Y(z)

[R, p, C] = residuez(by, ay);

disp('Residues '), disp( R), disp('Poles '), disp( p), disp('Direct Term '), disp(C);
