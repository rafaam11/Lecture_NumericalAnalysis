v1 = [10 20 30 40 50 60 70 80];
F1 = [25 70 380 550 610 1220 830 1450];
subplot(1,3,1);
plot(v1,F1,'mO');
axis([0 100 0 2000]);
legend('Data');
title('Data');
xlabel('v,[m/s]');
ylabel('F,[N]');
grid on;
hold on;

v2 = 0:10:100;
F2 = 0.274*v2.^(1.9842);
subplot(1,3,2);
plot(v2,F2,'k:');
axis([0 100 0 2000]);
legend('Function');
title('Function');
xlabel('v,[m/s]');
ylabel('F,[N]');
grid on;
hold on;

v1 = [10 20 30 40 50 60 70 80];
F1 = [25 70 380 550 610 1220 830 1450];
v2 = 0:10:100;
F2 = 0.274*v2.^(1.9842);
subplot(1,3,3);
plot(v1,F1,'mO',v2,F2,'k:');
axis([0 100 0 2000]);
legend('Data','Function');
title('Data+Function');
xlabel('v,[m/s]');
ylabel('F,[N]');
grid on;
hold on;

