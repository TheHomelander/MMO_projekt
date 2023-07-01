
fun = @(x) x(1)^4 - x(1)^2 + x(2)^2 - 2*x(1) + x(2);

ub = [1; 10];

options = optimoptions('fmincon', 'Display', 'iter');

[x, fval] = fmincon(fun, [0; 0], [], [], [], [], [], [], @nonlcon, options);

disp("Minimum point:");
disp(x);
disp("Minimum value:");
disp(fval);

function [c, ceq] = nonlcon(x)
    c = [];
    ceq = x(1)^2 + x(2)^2 - 1;
end
