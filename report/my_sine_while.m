function A = my_sine_while(x,n)

x = 0.9;      % 원하는 값으로 변경하거나, 지우고 변수로 사용
n = 8;        % 원하는 값으로 변경하거나, 지우고 변수로 사용

i = 1;
cham = sin(x);
gnsa = 0;
while (1)
    if i>n, break, end
    gnsa = gnsa + ((-1)^(i+1))*(x^(2*i-1))/(my_factorial(2*i-1));
    err = (cham - gnsa)/cham*100;
    fprintf('%3d %10.4f %10.4f %5.2f  \n', i, cham, gnsa, err);
    i = i + 1;
end
