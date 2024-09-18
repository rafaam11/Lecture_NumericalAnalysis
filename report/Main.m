clc
clear

A = [];
b = [];
Aeq = [];
beq = [];
x0 = [0.1,2];
xMin = [0,1.5];
xMax = [2,5];

options = optimoptions('fmincon','Display','iter');
fmincon(@myfunc,x0(1),A,b,Aeq,beq,xMin(1),xMax(1),[],options)
fmincon(@myfunc,x0(2),A,b,Aeq,beq,xMin(2),xMax(2),[],options)