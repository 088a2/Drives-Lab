% Lab_1.m
% Lab-1 | Date: 30-07-2025

% MATLAB code to test various matrix, trigonometric functions and roots of algebraic equations

%#ok<*NOPTS>
%#ok<*IJCL> 

%% Matrix operations

C = [1 2; 4 5; 5 6; 12 2] * [1 2 4 5; 3 4 5 6] % creates a row matrix
D = [1; 2; 6; 4] % creates a column matrix

rank(C) % gives the rank of the specific matrix - a rank of a matrix is basically determinant of that matrix
zeros(4, 5) % gives an output matrix with all zeroes
ones(4, 3) % gives an output matrix with all ones

% twos(2, 1) not correct
T = ones(2, 2) * 2

% Identity Matrix
eye(5, 5) % creates a 5x5 identity matrix

% Matrices can be in Complex Equation form
% i = imaginary unit (complex unit)

ai = [1 + i 2 + 3 + i]
bi = [1 + 2 * i; 3 + 4 * i; 5 + 6 * i]

S = ["John" "Doe"; "Ram " "Singh"]



% Quotation of matrices

D > 5 % (creates a matrix with all '1' after onwards the 5th element in a 3x3 matrix)
%0 0 0
%0 0 1
%1 1 1

D == 5 % (creates a matrix with '1' as the 5th element in a 3x3 matrix) 
%0 0 0
%0 1 0
%0 0 0

%% Trigonometric functions

% x = 0: 1: 359 * pi / 180 % rougher sin curve (in degrees but with less accurate points)
x = 0: 0.01: 359 * pi / 180 % smooth sin curve (in degrees but with more accurate points)

y = sin(x)
plot(x, y)

%% Roots of Algebraic equations

% Q.1 Solution

% Method One - Manual Calculation without in-built 'roots' command
answerOne1 = (-(-5) + sqrt((-5)^2 - 4 * 1 * 4)) / (2 * 1)
answerOne2 = (-(-5) - sqrt((-5)^2 - 4 * 1 * 4)) / (2 * 1)

% Method Two - Making a Matrix using the values of Coefficients/Constants of the given Equation and also using the in-built 'roots' command
answerOne = [1 -5 4]
roots(answerOne)


% Q.2 Solution

a = [2 1; 1 4]
b = [8; 15]
answerTwo = a \ b
disp('The solution of x and y is:');
disp(answerTwo);


% Q.3 Solution

a = [1 2 1; 3 1 2; 1 -3 4]
b = [10; 20; 15]
answerThree = a \ b
disp('The solution of x,y and z is:');
disp(answerThree);
