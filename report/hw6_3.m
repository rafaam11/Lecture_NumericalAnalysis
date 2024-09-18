clc;
clear;

xr = 1;
delta = 0.0001;
es = 0.005;
fprintf('  i       xr        f(x)                     ea  \n');

for i = 0:100
   
    xr_old = xr;
    
    xr_del = xr + delta*xr;
    f_xr = xr^7 + xr^5 + xr^3 + xr - 1;
    f_del = xr_del^7 + xr_del^5 + xr_del^3 + xr_del - 1;
    
    fprintf('\n %d회차  %f   %f    %f \n' , i, xr, f_xr );
    
    xr_new = xr - (delta*xr*f_xr)/(f_del-f_xr);

    xr = xr_new;
    
    ea = abs((xr_new-xr_old)/xr_new)*100;
    fprintf('- - - - - - - - - - - - - - - - - - - - - - - - - \n');
    fprintf('\n     %d회차와 %d회차 사이의 상대근사오차 =   %f \n' , i, i+1, ea);
    
    
    if ea <= es
        break;
    end
    
end
