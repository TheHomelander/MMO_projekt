% Definicja funkcji
%f = @(x) (x-1)^2 - 1;

f = @(x) (x/(1 + (sin(x))^2))^2;

% Wywołanie algorytmu bisekcji
a = -1;
b = 1;
epsilon = 0.001;
x_star = bisection(a, b, f, epsilon);

% Wyświetlenie wyniku
disp("@(x) (x/(1 + (sin(x))^2))^2;")
disp("przedział <-1, 1>")
disp("Wartosx x w minimum:")
disp(x_star);
disp("Wartosx f(x) w minimum:")
disp(f(x_star))

f2 = @(x) -log(abs(cos(x) - sin(x)));
x_star = bisection(-3, 0, f2, epsilon);
% Wyświetlenie wyniku
disp("@(x) -log(abs(cos(x) - sin(x)))")
disp("przedział <-3, 0>")
disp("Wartosx x w minimum:")
disp(x_star);
disp("Wartosx f(x) w minimum:")
disp(f(x_star))


f2 = @(x) x^3 + x^2 - 16*x - 19;
x_star = bisection(-4, 4, f2, epsilon);
% Wyświetlenie wyniku
disp("@(x)  x^3 + x^2 - 16*x - 19")
disp("przedział <-4, 4>")
disp("Wartosx x w minimum:")
disp(x_star);
disp("Wartosx f(x) w minimum:")
disp(f(x_star))


