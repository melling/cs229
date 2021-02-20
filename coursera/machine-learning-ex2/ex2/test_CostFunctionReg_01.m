% Source: https://www.coursera.org/learn/machine-learning/discussions/weeks/3/threads/tA3ESpq0EeW70BJZtLVfGQ

% Here is another test case that is a robust because the X matrix is not square 
% and theta has no zero values.

clc;
output_precision(6);

X = [ones(3,1) magic(3)]; % column 1 all 1's + magic square
y = [1 0 1]'; % Transposing
theta = [-2 -1 1 2]'; % Transposing

% regularized
[j g] = costFunctionReg(theta, X, y, 4) % lambda = 4
% note: also works for ex3 lrCostFunction(theta, X, y, 4)

% results
% j =  8.6832
% g =

%    0.31722
%   -0.46102
%    2.98146
%    4.90454