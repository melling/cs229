function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.
output_precision(8);
% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

    m
    h_theta = X * theta;
    hypothesis = sigmoid(h_theta)
    errors = hypothesis - y
    errors_squared = (errors).^2;
    X
    XTerrors = (X' * errors)
    % theta_change = (X' * errors) / m;
    theta_change = (X' * errors) / m
    grad = theta - theta_change
    J = sum(errors_squared) / m;




% =============================================================

end
