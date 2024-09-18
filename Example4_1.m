clc;
clear;
n=3;
Es = (0.5 * 10^(2-n));

x = 0.5;
Exp_x = 0;
disp ('함수    결과      오차     근사오차');

for i= 1:10
    Exp_x = Exp_x + x^(i-1)/factorial(i-1);
    Er_t = (exp(x) - Exp_x)/exp(x) * 100;
    
    if i > 1
        Er_s = (Exp_x-Exp_x_old) / Exp_x *100;
    end
    Exp_x_old = Exp_x;
    
    if i == 1
        fprintf(' %d   %f  %f   \n',i,Exp_x,Er_t)
    else
        fprintf(' %d   %f  %f   %f\n',i,Exp_x,Er_t,Er_s)
    end
end