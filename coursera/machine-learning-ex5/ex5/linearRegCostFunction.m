function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

% LEARN: Same results
% v = [1 ; 2 ;3]
% sum(v.^2)
% v'*v

% X
% y
% theta
% lambda
% m

h_theta = X * theta;

theta(1) = 0;

% theta_sum_of_sq = sum(theta.^2)
% Theta sum of squares * lambda/2m
reg_term = lambda * (theta' * theta) / (2*m);

errors = (h_theta - y);
errors_sq = errors' * errors;

J = errors_sq / (2*m) + reg_term;

% delta = sum(errors)/m

% The gradient is the change in \theta

% 3 - The change in theta (the "gradient") is the 
% sum of the product of X and the "errors vector", scaled by alpha and 1/m. 
% Since X is (m x n), and the error vector is (m x 1),
% and the result you want is the same size as theta (which is (n x 1),
% you need to transpose X before you can multiply it by the error vector.
errors1 = X' * errors;
errors2 = errors1 ./ m;

theta_change = (X' * errors)/m;
lambda_div_m = lambda / m;
theta_reg_term = lambda_div_m .* theta;

grad = theta_change .+ theta_reg_term;

% =========================================================================

grad = grad(:);

end
