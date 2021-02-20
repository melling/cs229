
% https://www.coursera.org/learn/machine-learning/discussions/all/threads/5wftpZnyEeWKNwpBrKr_Fw

%% Test
clc;

fprintf("=== computeCost ===\n")
X = [1 2; 1 3; 1 4; 1 5]
y = [7;6;5;4]
theta = [0.1;0.2]

J = computeCost( X, y, theta ) % 11.9450
J
%J = computeCost(X, y, [-1 ; 2]);
fprintf('\nWith theta = [0.1 ; 0.2]\nCost computed = %f\n', J)
fprintf('Expected cost value (approx) 11.9450\n')
%fprintf('Program paused. Press enter to continue.\n');

%% Test
fprintf("=== computeCost ===\n")
%X = [1 2 3; 1 3 4; 1 4 5; 1 5 6]
%y = [7;6;5;4]
%theta = [0.1;0.2;0.3]
%J = computeCost( X, y, theta)
%J % 7.0175

%pause;
