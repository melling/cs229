function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

%mzz = zeros(1, size(X, 2)); % number columns

%	m
%	2*m
	
	h_theta = X * theta; % hypothesis vector
	errors = h_theta - y;
	errors_squared = (errors).^2;
	% sum_sq = sum(errors_squared);
	% denom = 2*m;
	J = sum(errors_squared) / (2*m);



% =========================================================================

end
