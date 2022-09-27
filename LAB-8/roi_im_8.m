clc;
close all;
clear all;

% I is a 3D matrix | pixel rows, pixel cols & color planes |  greyscale images are 2D  
I = imread('lena_gray.bmp','bmp'); %imread() converts image into a matrix
subplot(221),imshow(I), title('Original Image');

BW = roipoly(I);
subplot(222),imshow(BW), title('ROI Highlighted');

