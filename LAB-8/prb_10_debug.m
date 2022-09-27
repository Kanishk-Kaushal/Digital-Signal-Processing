clc;
close all;
clear all;

% a is a 3D matrix | pixel rows, pixel cols & color planes |  greyscale images are 2D  
a = imread('lena_gray.bmp','bmp'); %imread() converts image into a matrix
subplot(221),imshow(a), title(' Original Image');

% original image fourier
dft_a = fft2(a);
subplot(222), imshow(dft_a), title('DFT of Original Image');

% rotate image
rot_a = imrotate(a, 45);
subplot(223), imshow(dft_a), title('Original Image rotated by 45 deg');

% fourier of rotated image
dft_rot_a = fft2(rot_a);
subplot(224), imshow(dft_rot_a), title('DFT of rotated image');


