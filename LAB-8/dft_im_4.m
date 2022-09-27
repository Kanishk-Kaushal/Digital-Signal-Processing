clc;
close all;
clear all;


% a is a 3D matrix | pixel rows, pixel cols & color planes |  greyscale images are 2D  
a = imread('barbara_gray.bmp','bmp'); %imread() converts image into a matrix
subplot(221), imshow(a), title('Original Image');

% image fourier
dftI = fft2(a);
subplot(222), imshow(dftI), title('DFT of Original Image');

%shifting image and filter
I = fftshift(dftI);
subplot(223), imshow(I, []), title('Shift the Image and Filter');

% plotting the shift
subplot(224), plot(abs(I)), title(' Magnitude Response of shifting and filtering');

% IDFT
 IF = ifft2(fftshift(I));
 figure();
 imshow(IF);

