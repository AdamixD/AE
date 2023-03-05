function [value, grad] = f_with_grad(x)
    a = -1.5;
    b = -1;
    value = (1 - x(1) + a).^2 + 100*(x(2) - b - (x(1) - a).^2).^2; 
    grad = [2*(-1 - a + x(1) - 200*(a - x(1))*(a^2 + b - 2*a*x(1) + x(1).^2 - x(2))); 200*(-b - (a - x(1)).^2 + x(2))];
end

