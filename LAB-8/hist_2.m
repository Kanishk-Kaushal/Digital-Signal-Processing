clc;
close all;
clear all;

% a is a 3D matrix | pixel rows, pixel cols & color planes |  greyscale images are 2D  
a = imread('lena_gray.bmp','bmp'); %imread() converts image into a matrix
subplot(221),imshow(a), title('a) Image');

% histeq() -> histogram equivalent | Enhances contrast of an image
J = histeq(a);
subplot(222), imshow(J), title('b) Histrogram Equivalent of the image');

% imhist() -> Image Histogram
subplot(223), imhist(a), title('c) Histogram of Original Image');
subplot(224), imhist(J), title('c) Histogram of Enhanced Image');