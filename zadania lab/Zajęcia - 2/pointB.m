
fun = @(x) x(1)^4 - x(1)^2 + x(2)^2 - 2*x(1) + x(2);


Aeq = [1, 1];
beq = 0;

lb = [-inf; -inf]; 
ub = [1; 10];


options = optimoptions('fmincon', 'Display', 'iter');

[x, fval] = fmincon(fun, [0; 0], [], [], Aeq, beq, lb, ub, [], options);


disp("Minimum point:");
disp(x);
disp("Minimum value:");
disp(fval);
