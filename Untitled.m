clc
clear
format short

syms t

a = 42.5;
b = 30;
c = 80;
x = -20;
y = -33;

A = 2*a*b + 2*b*x;
B = 2*b*y;
C = x^2 + y^2 + a^2 + b^2 - c^2 + 2*a*x;

T = solve((C-B)*t^2 + 2*A*t + C+B ,t)

theta_T1 = 2*atand(5400/7699 - (152066761^(1/2)*1i)/7699)
theta_T2 = 2*atand( (152066761^(1/2)*1i)/7699 + 5400/7699)

D = 2*a*b - 2*b*x;
E = 2*b*y;
F = x^2 + y^2 + a^2 + b^2 - c^2 - 2*a*x;

TT = solve((F-E)*t^2 + 2*D*t + F+E ,t)

theta_TT1 = 2*atand( - 31516671^(1/2)/1967 - 5000/1967)
theta4_TT2 = 2*atand(   31516671^(1/2)/1967 - 5000/1967)

