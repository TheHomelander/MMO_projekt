f = @(x) 9 - x.^(3/2);  % Definicja funkcji f(x)
accuracy = 100000000000;  % Liczba punktów generowanych w przedziale
x = linspace(0, 4, accuracy);  % Tworzenie równomiernie rozmieszczonych wartości x w przedziale [0, 4]
y = f(x);  % Obliczanie wartości funkcji dla każdego x

P = [3, 4.5];  % Współrzędne punktu P(3, 4.5)
min_distance = inf;  % Inicjalizacja minimalnej odległości jako nieskończoność

for i = 1:length(x)
    point = [x(i), y(i)];  % Aktualny punkt (x, f(x))
    distance = norm(point - P);  % Obliczanie odległości między punktem a P
    
    if distance < min_distance
        min_distance = distance;  % Aktualizacja minimalnej odległości
        min_point = point;  % Zapisanie punktu o minimalnej odległości
    end
end

fprintf('Minimalna odległość: %.4f\n', min_distance);

% Wykres funkcji
figure;
plot(x, y, 'b', 'LineWidth', 1.5);
hold on;
plot(min_point(1), min_point(2), 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');
plot(P(1), P(2), 'go', 'MarkerSize', 8, 'MarkerFaceColor', 'g');
hold off;
xlabel('x');
ylabel('f(x)');
title('Wykres funkcji f(x)');
legend('f(x)', 'Znaleziony punkt', 'P(3, 4.5)');
grid on;
