function root = bisection(func,xl,xu,es,maxit)

if feval(func,xl)*feval(func,xu) >0
    error('no bracket')
    return
end

if nargin<5, maxit = 50; end
if nargin<4, es = 0.001; end

iter = 0;
xr = xl;
while (1)
    xrold = xr;
    xr = (xl + xu)/2;
    iter = iter + 1;
    disp(iter); disp(xr)
    if xr ~= 0
        ea = abs((xr-xrold)/xr*100);
    end
    
    test = feval(func,xl)*feval(func,xr);
    if test < 0
        xu = xr;
    elseif test > 0
        xl = xr;
    else
        ea = 0;
    end
    if ea <= es | iter >= maxit, break, end
end
root = xr;