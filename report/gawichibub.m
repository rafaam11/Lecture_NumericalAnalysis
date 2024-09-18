clc;
clear;

cd = 0.25;
g = 9.81;
v = 36;
t = 4;

xl = 50;
xu = 200;
es = 0.5;
fprintf('i         xl        xu         xr        ea \n');

for i = 0:100
   

    
    x = xl;
    f_xl = sqrt(g*x/cd).*tanh(sqrt(g*cd./x)*t) - v;
    x = xu;
    f_xu = sqrt(g*x/cd).*tanh(sqrt(g*cd./x)*t) - v;
    
    xr = xu - ((f_xu*(xl-xu))/(f_xl-f_xu));
    xr_old = xr;
    
    x = xr;
    f_xr = sqrt(g*x/cd).*tanh(sqrt(g*cd./x)*t) - v;
    
    fprintf('%d    %f %f %f \n' , i, xl, xu, xr);
    fprintf('\n함수값 %f  %f  %f \n\n' , f_xl, f_xu, f_xr);
    
    if f_xr*f_xl <= 0
        xu = xr;
        f_xu = f_xr;
    else
        xl = xr;
        f_xl = f_xr; 
    end
    

    xr_new = xu - ((f_xu*(xl-xu))/(f_xl-f_xu));
    
    ea = abs((xr_new-xr_old)/xr_new)*100;
    fprintf('     %d회차와 %d회차 사이의 상대근사오차 =   %f \n\n' , i, i+1, ea);
    
    if ea <= es
        break;
    end
    
end
