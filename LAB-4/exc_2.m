clc; 
clear all; 
close all;

z = input("Enter Desired Zeros");
p = input("Enter Desired Poles");
k = input("Enter Desired Factor Gain");

[NUM, DEN] = zp2tf(z, p, k); % Zero-Pole to Transfer Function

zplane(NUM, DEN);            % Pole-Zero Plot
