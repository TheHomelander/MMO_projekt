
% Pierwsze zajęcia wprowadzające 

% czyszczenie command window
% cnc

% czyszczenie co siedzi w pamieci albo zmiennych 
clear

a = 2 
b = 3;
c = 2 * a + 3 * b
2 * c

A = [ 1 2 3 ; 3, 3 ,3 ; 0, 4 ,5 ]

% wyznacznik macierzy
d = det(A)

% macierze transponowana
B = A'

% Odwrotność macierzy
C = inv(A)

% Mnożenie macierzy
D = A*C

% Działanie tablicowe to mnozenie wszystkich wartości
D = A.*C

% Generowanie danych vector
X = [-10:0.01:10];

clear

% macierz z równaniamia
eqMatrix = [3, -2, 4; 1, 0 , 3; 0, 1, 5]

% macierz z 
matrixRes = [2;12;-5]

matrixRes = inv(eqMatrix) * matrixRes;

% Metoda kramera

cramerMatrix = [3, -2, 4; 1, 0 , 3; 0, 1, 5]

% czy jest osobliwa macierz
d1 = det(cramerMatrix)

x1 = [2 -2 4; 12 0 3; -5 1 -5]
dx = det(x1)

res1 = dx/d1


