% works in Octave %%%
% sth. must be *before* a (local) function is declared
1; % or "2;" or "1+1;" or whatever

%% NOTE:
%%  Local functions go at the beginning of script in Octave
%%  https://stackoverflow.com/questions/50404236/error-when-running-simple-script-containing-local-function-in-octave

function J = computeCost2(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
	fprintf("=== computeCost2 ===\n")
	h_theta = X * theta;
	fprintf("=== h_theta===\n")
	h_theta(1:10, :) % First 10 rows

	fprintf("=== y ===\n")
	y(1:10, :) % First 10 rows

	fprintf("=== h_theta - y ===\n")
	(h_theta - y)(1:10, :)
	h_minus_y_squared = (h_theta - y).^2;
	fprintf("=== (h_theta - y)^2 ===")
	h_minus_y_squared
	sum_sq = sum(h_minus_y_squared);

	J = sum(h_minus_y_squared) / (2*m);
	fprintf("=== END: computeCost2 ===")
% =========================================================================

end

% Load Data
data = load('ex1data1.txt');
X = data(:, 1); % X is column 1
y = data(:, 2); % target y is column 2

m = length(y); % number of training examples

X(1:10, :) % First 10 rows

X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
X(1:10, :) % First 10 rows

theta = zeros(2, 1); % 2x1 vectors filled with zeros

%h_theta = X * theta;
%h_theta(1:10, :) % First 10 rows

J = computeCost2(X, y, theta)
fprintf('With theta = [0 ; 0]\nCost computed = %f\n', J);
fprintf('Expected cost value (approx) 32.07\n');

% further testing of the cost function

% J = computeCost2(X, y, [-1 ; 2]);
% fprintf('\nWith theta = [-1 ; 2]\nCost computed = %f\n', J);
% fprintf('Expected cost value (approx) 54.24\n');


