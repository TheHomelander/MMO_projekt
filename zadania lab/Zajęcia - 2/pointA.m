clear
clc


fun = @(x) x(1)^4 - x(1)^2 + x(2)^2 - 2*x(1) + x(2);


ub = [1; 10];  % x <= 1, y <= 10


Aeq = [1 1]; 
beq = 0;     


A = [-1 0; 0 -1];  
b = [0; 0];       


options = optimoptions('fmincon', 'Display', 'iter');


x0 = [0; 0]; 
[x, fval] = fmincon(fun, x0, A, b, Aeq, beq, [], ub, [], options);


fprintf('Minimum value: %f\n', fval);
fprintf('Optimal x: %f\n', x(1));
fprintf('Optimal y: %f\n', x(2));
