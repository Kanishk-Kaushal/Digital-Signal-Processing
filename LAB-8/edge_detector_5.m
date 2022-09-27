clc;
close all;
clear all;

% 1. Read Image
% a is a 3D matrix | pixel rows, pixel cols & color planes |  greyscale images are 2D  
a = imread('lena_gray.bmp','bmp'); %imread() converts image into a matrix
subplot(221),imshow(a), title('Original Image');

% 2. Detect Edge Horizontally using "SOBEL" method
BW1 = edge(a, 'sobel', 'horizontal');
subplot(222),imshow(BW1);
title('Binary Gradient Mask')