% Input arguments
A = [1 2 3; 0 8 6; 5 3 1];
B = [0 1; 1 0; 3 5];

% conv2() -> convulation for 2D matrices
C = conv2(A, B); % Output

disp(C)