clc;
clear;

xr = 1;
es = 0.005;
fprintf('  i       xr        f(x)     df(x)/dt        ea  \n');

for i = 0:100
   
    xr_old = xr;
    
    
    f_xr = xr^7 + xr^5 + xr^3 + xr - 1;
    df_xr = 7*xr^6 + 5*xr^4 + 3*xr^2 + 1;
    
    fprintf('\n %d회차  %f   %f    %f \n' , i, xr, f_xr, df_xr);
    
    xr_new = xr - f_xr./df_xr;
    xr = xr_new;
    
    ea = abs((xr_new-xr_old)/xr_new)*100;
    fprintf('- - - - - - - - - - - - - - - - - - - - - - - - - \n');
    fprintf('\n     %d회차와 %d회차 사이의 상대근사오차 =   %f \n' , i, i+1, ea);
    
    
    if ea <= es
        break;
    end
    
end
