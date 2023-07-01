% Definicja osi x
x = 0:0.1:20; 

% Wyliczenie wartosci osi Y dla funkcji
y1 = log(x.^2); % ln(x^2)
y2 = sin(cos(x)); % sin(cosx)
y3 = x.^2 + 2*x - 3; % x^2+2x-3

% wywołanie funkcji subplot
subplot(1,3,1);
plot(x, y1, 'r');
title('ln(x^2)');

subplot(1,3,2);
plot(x, y2, 'g');
title('sin(cosx)');

subplot(1,3,3);
plot(x, y3, 'b');
title('x^2+2x-3');
