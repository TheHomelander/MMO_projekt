% Define the x-axis range
x = 0:0.1:10; 

% Compute the y-axis values for the three functions
y1 = log(x.^2); % ln(x^2)
y2 = sin(cos(x)); % sin(cosx)
y3 = x.^2 + 2*x - 3;

% Plot the three functions in separate subplots
subplot(1,3,1);
plot(x, y1, 'r');
title('ln(x^2)');

subplot(1,3,2);
plot(x, y2, 'g');
title('sin(cosx)');

subplot(1,3,3);
plot(x, y3, 'b');
title('x^2+2x-3');
