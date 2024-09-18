function A = my_sine_for(x,n)

x = 0.9;      % 원하는 값으로 변경하거나, 지우고 변수로 사용
n = 8;        % 원하는 값으로 변경하거나, 지우고 변수로 사용

gnsa = 0;
cham = sin(x);
for i = 1:n
    gnsa = gnsa + ((-1)^(i+1))*(x^(2*i-1))/(my_factorial(2*i-1));
    err = (cham - gnsa)/cham*100;
    fprintf('%3d %14.6f %14.6f %5.2f \n', i,cham,gnsa,err);
end