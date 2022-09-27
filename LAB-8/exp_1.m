clc;
close all;
clear all;

% a)
% a is a 3D matrix | pixel rows, pixel cols & color planes |  greyscale images are 2D  
a = imread('lena_gray.bmp','bmp'); %imread() converts image into a matrix
subplot(221),imshow(a), title('a) Image');

% b)
b = double(a);
b = 256-b;   % negatives
b =uint8(b); % typecasted into 8 bit integer
subplot(222), imshow(b), title('b) Negative of the image');

% c)
c = a';      % transpose of matrix                                                               
subplot(223), imshow(c), title('c) Image rotated anti-clockwise');
