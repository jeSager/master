clear, close
%% Q1
%% Square wave signal
T = 4;
w0 = 2*pi/T; % Fundamental frequency
t=linspace(-5,5,1e4); % Time range
ft=square(pi/2*t);

%% Fourier Series 
k = 1 : 100; %the order of Fourier Series

%Terms of Fourier series
a(k) = j./(k*pi).*(cos(k*pi)-1); %positive coefficients
na(k) = j./(-k*pi).*(cos(k*pi)-1); %negative coefficients
a0 = 0;
% Define the zero matrix
x = zeros(1,1e4);
x3 = x; x10 = x; x100 = x; % initial a matrix to calculate the summation


%% The summation the first three harmonics
for i= 1:3
    x3 = x3 + a0 + a(i).*exp(j*i*w0*t) + na(i).*exp(-j*i*w0*t);
end
subplot(3,1,1)
plot(t,x3),hold on;
plot(t,ft,'--')
xlim([-2,4])
title('The summation the first 3 harmonics')

%% The summation the first 10th harmonics
for i= 1:10
    x10 = x10 + a0 + a(i).*exp(j*i*w0*t) + na(i).*exp(-j*i*w0*t);
end
subplot(3,1,2)
plot(t,x10), hold on;
plot(t,ft,'--')
xlim([-2,4])
title('The summation the first 10 harmonics')

%% The summation the first 100th harmonics
for i= 1:100
    x100 = x100 + a0 + a(i).*exp(j*i*w0*t) + na(i).*exp(-j*i*w0*t);
end
subplot(3,1,3)
plot(t,x100), hold on;
plot(t,ft,'--');
xlabel('t(s)')
xlim([-2,4])
title('The summation the first 100 harmonics')