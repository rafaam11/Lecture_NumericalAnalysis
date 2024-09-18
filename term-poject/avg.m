clear
clc

x1 = 3.22
x2 = 3.27
x3 = 3.18
n = 3;

x_avg = (x1+x2+x3)/n
x_gg = ((x1 - x_avg)*(x1 - x_avg) + (x2 - x_avg)*(x2 - x_avg) + (x3 - x_avg)*(x3 - x_avg)) / n;
x_ga = x_gg^(0.5)

