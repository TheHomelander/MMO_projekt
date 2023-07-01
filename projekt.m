% Funkcja celu
f = @(x) 9 - x.^(3/2);
y = 4.5; % Wartość y dla punktu (3, 4.5)

% Funkcja do minimalizacji
J = @(x) (f(x) - y)^2;

% Rozwiązanie numeryczne
x0 = 0; % Punkt początkowy
x = fminsearch(J, x0);

% Interpretacja geometryczna
y_min = f(x);
punkt_min = [x, y_min];
odleglosc = norm(punkt_min - [3, 4.5]); % Obliczenie odległości między punktem_min a (3, 4.5)

% Wyświetlenie wyników
disp(['Wartość x minimalizująca odległość: ', num2str(x)]);
disp(['Minimalna odległość: ', num2str(odleglosc)]);

% Wykres
x_vals = linspace(0, 10, 100);
plot(x_vals, f(x_vals), 'b', 'LineWidth', 2);
hold on;
plot(x, y_min, 'ro', 'MarkerSize', 8);
plot(3, 4.5, 'go', 'MarkerSize', 8);
legend('f(x)', 'Minimalny punkt', 'Punkt (3, 4.5)');
xlabel('x');
ylabel('f(x)');
grid on;
