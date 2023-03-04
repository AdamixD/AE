function value = f(x)
    a = -1.5;
    b = -1;
    value = (1 - x(1) + a).^2 + 100*(x(2) - b - (x(1) - a).^2).^2; 
end

