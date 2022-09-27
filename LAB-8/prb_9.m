clc;
close all;
clear all;

% I is a 3D matrix | pixel rows, pixel cols & color planes |  greyscale images are 2D  
I = imread('lena_gray.bmp','bmp'); %imread() converts image into a matrix
subplot(321),imshow(I), title(' Original Image');

% Resize image twice its size
I_db = imresize(I, 2);
subplot(322), imshow(I_db), title(' Resized Image');

% Adding Salt & Pepper Noise
I_db_noise = imnoise(I_db, 'salt & pepper');
subplot(323), imshow(I_db_noise), title('Salt & Pepper on Resized Image');

% Median Filtering

% 3X3 Filtering
I_db_noise_3_medfilt = medfilt2(I_db_noise, [3 3]);
subplot(324), imshow(I_db_noise), title('3X3 Filtering Window');

% 5X5 Filtering
I_db_noise_5_medfilt = medfilt2(I_db_noise, [5 5]);
subplot(325), imshow(I_db_noise), title('5X5 Filtering Window');

% 7X7 Filtering
I_db_noise_7_medfilt = medfilt2(I_db_noise, [7 7]);
subplot(326), imshow(I_db_noise), title('7X7 Filtering Window');


