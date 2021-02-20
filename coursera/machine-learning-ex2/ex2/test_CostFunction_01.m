% Source: https://www.coursera.org/learn/machine-learning/discussions/weeks/3/threads/tA3ESpq0EeW70BJZtLVfGQ

% Here is another test case that is a robust because the X matrix is not square 
% and theta has no zero values.

clc;
output_precision(6);


X = [ones(3,1) magic(3)]; % column 1 all 1's + magic square
y = [1 0 1]'; % Transposing
theta = [-2 -1 1 2]'; % Transposing

% un-regularized
[j g] = costFunction(theta, X, y)

% results
% j = 4.6832

% g =
%   0.31722
%   0.87232
%   1.64812
%   2.23787