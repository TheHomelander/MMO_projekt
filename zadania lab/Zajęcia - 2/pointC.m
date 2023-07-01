
fun = @(x) x(1)^4 - x(1)^2 + x(2)^2 - 2*x(1) + x(2);


A = [1, 1];
b = 0;


nonlcon_ineq = @(x) -(x(1)^2 + x(2)^2 - 1);


nonlcon_eq = [];


ub = [1; 10];

options = optimoptions('fmincon', 'Display', 'iter');


[x, fval] = fmincon(fun, [0; 0], A, b, [], [], [], ub, nonlcon_ineq,nonlcon_eq, options);


disp("Minimum point:");
disp(x);
disp("Minimum value:");
disp(fval);
