% Define the function to be minimized
f = @(x)- 6*x.^2 + 11*x - 6;

% Find the minimum value and corresponding x value in the interval [0, 4]
[x, fval, exitflag, output] = fminbnd(f, 0, 4);

% Display the results
fprintf('Minimum value of the function: %f\n', fval);
fprintf('Value of x at the minimum: %f\n', x);

% Plot the function and the minimum point
t = linspace(0, 4, 100);
plot(t, f(t), 'b', x, f(x), 'ro');
xlabel('x');
ylabel('y');
title('Minimum Value of a Function');
legend('Function', 'Minimum Point', 'Location', 'NorthWest');
