n = -10:0.001:10;               % time index for the discrete signal from 0 to 15 with unity sampling

% time
u = [(n)>=0];                   % Unit Step
u3 = [(n-3)>=0];                % Delayed step 

xn_1 = u-u3;                    % Rectangular window x[n]= u[n]- u[n-3] as given in the questoin

xn_2 = sin((n*pi)/3).*u;        % As given in the question

xn_3 = (0.5.^n).*exp(1i*pi*n/2);% Complex Signal as given in the question

xn_3_theta = angle(xn_3);
xn_3_mag = abs(xn_3);

subplot(5,1,1); 
plot(n,xn_1);
title('u[n] - u[n-3]'); 
ylabel('Amplitude')

subplot(5,1,2); 
plot(n,xn_2);
title('sin(n*pi/3)u[n]'); 
ylabel('Amplitude')

subplot(5,1,3); 
plot(n,xn_3);
title('(0.5^n)*exp(j*pi*n/2)'); 
ylabel('Amplitude')

subplot(5,1,4); 
plot(xn_3_theta);
title('xn_3 Phase Angle'); 
ylabel('Amplitude')

subplot(5,1,5); 
plot(xn_3_mag);
title('xn_3 Magnitude'); 
ylabel('Amplitude')