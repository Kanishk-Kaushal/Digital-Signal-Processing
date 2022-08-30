clc; 
clear all; 
close all;

N = 5;                  % given order of the filter 
omegac = 0.2*pi;        % Given cutoff frequency
[z, p, k ] = buttap(N); % Getting the prototype 
p1 = p* omegac;
k1 = k* omegac ^N; 
B = real(poly(z)); 
b0 = k1;
b = k1*B;
a = real(poly(p1));
