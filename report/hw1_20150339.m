z = -5:0.1:5;
freq = (1/sqrt(2*pi))*exp(-(z.^2)/2);
plot(z,freq);
legend('표준정규확률 밀도함수');
title('표준정규확률 밀도함수');
xlabel('z');
ylabel('주파수(frequency)');
grid on;
