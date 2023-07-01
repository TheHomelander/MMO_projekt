% Definicja funkcji celu
J = @(x) (9 - x^(3/2) - 4.5)^2;

% Punkt początkowy
x0 = 3;

% Minimalizacja funkcji celu
x_min = fminsearch(J, x0);

% Wyświetlenie wyniku
disp(['Wartość x minimalizująca kwadrat odległości: ' num2str(x_min)]);

% Obliczenie wartości funkcji f(x) dla x_min
f_min = 9 - x_min^(3/2);
disp(['Minimalna wartość funkcji f(x): ' num2str(f_min)]);
