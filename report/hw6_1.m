clc;
clear;

xl = 0;
xu = 2;
es = 0.005;
fprintf('  i         xl        xu         xr        ea \n');

for i = 0:100
   
    xr = (xl+xu)/2;
    xr_old = xr;
    
    x = xl;
    f_xl = x^7 + x^5 + x^3 + x - 1;
    x = xu;
    f_xu = x^7 + x^5 + x^3 + x - 1;
    x = xr;
    f_xr = x^7 + x^5 + x^3 + x - 1;
    
    fprintf('\n %d회차  %f   %f    %f \n' , i, xl, xu, xr);
    fprintf('\n 함수값 %f  %f   %f \n\n' , f_xl, f_xu, f_xr);
    
    if f_xr*f_xl <= 0
        
        xu = xr;
        f_xu = f_xr;
    else
        
        xl = xr;
        f_xl = f_xr; 
    end
    

    xr_new = (xl+xu)/2;
    
    ea = abs((xr_new-xr_old)/xr_new)*100;
    fprintf('- - - - - - - - - - - - - - - - - - - - - - - - - \n');
    fprintf('\n     %d회차와 %d회차 사이의 상대근사오차 =   %f \n' , i, i+1, ea);
    
    
    if ea <= es
        break;
    end
    
end
