clc;
close all;
clear all;

% a is a 3D matrix | pixel rows, pixel cols & color planes |  greyscale images are 2D  
a = imread('lena_gray.bmp','bmp'); %imread() converts image into a matrix
subplot(221),imshow(a), title('Original Image');

% Adding Salt & Pepper Noise
X = imnoise(a, 'salt & pepper');
subplot(222), imshow(X), title('Salt & Pepper on OG Image');

% Median Filter 
medfiltim = medfilt2(X);
subplot(223), imshow(medfiltim), title('Filtered Image');
