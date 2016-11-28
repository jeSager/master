clear, close all
R = 100;
C = 1e-3;
t = linspace(-2,2,1024);
w1 = 5; w2 = 100;
H1 = 1/(R*C*j*w1+1);
H2 = 1/(R*C*j*w2+1);

w = 0:0.01:100;

figure()
subplot(2,1,1)
plot(w, abs(1./(R*C*j*w+1)));
title('Magnitude response');
ylabel('|H(jw)|')
subplot(2,1,2)
plot(w, 180/2/pi*angle(1./(R*C*j*w+1)));
title('Phase response');
xlabel('w (rad)')
ylabel('<H(jw)')

f = cos(5*t) +  cos(100*t);
y = abs(H1)*cos(w1*t+angle(H1)) + abs(H2)*cos(w2*t+angle(H2));

figure()
subplot(2,1,1)
plot(t,f);
xlabel('t(s)')
ylabel('f(t)')
ylim([-2,2])
title('Input signal');

subplot(2,1,2)
plot(t,y);
ylim([-2,2])
xlabel('t(s)')
ylabel('y(t)')
title('Output signal');

figure()
plot(t,cos(5*t),'b'), hold on;
plot(t,y,'r');
plot(t,f)
xlabel('t(s)')
ylabel('Voltage')
title('Signal cos(5t) and y(t)');