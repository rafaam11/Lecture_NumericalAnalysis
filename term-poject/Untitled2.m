clc
clear

x1 = [10.5; 10.5; 10.5; 10.5];
x2 = [11.5; 11.5; 11.5; 11.5];
x3 = [12.5; 12.5; 12.5; 12.5];
x4 = [13.5; 13.5; 13.5; 13.5];
y = [3.5; 4.5; 5.5; 6.5];
z1 = [1.9367; 3.1133; 2.96; 2.9933];
z2 = [2.3233; 3.1133; 3.0667; 2.9400];
z3 = [1.8633; 2.2233; 2.6700; 2.9100];
z4 = [2.0600; 2.5800; 2.6133; 3.2567];

plot3(x1,y,z1,'kO:')
hold on;
plot3(x2,y,z2,'mO:')
hold on;
plot3(x3,y,z3,'cO:')
hold on;
plot3(x4,y,z4,'bO:')
hold on;
