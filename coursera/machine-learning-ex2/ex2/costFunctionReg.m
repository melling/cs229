function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

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


[J1, grad] = costFunction(theta, X, y);
% lambda = 4
theta_t = theta;
theta_t(1) = 0;

reg = lambda * sum(theta_t .^ 2) / (2 * m);

% Gradient. 
%% Only theta_0 is the same.  
%% Add regularization term to others

grad_0 = grad(1); % Save first gradient

theta_regs = lambda * theta / m;

grad = grad + theta_regs;
grad(1) = grad_0;
J = J1 + reg;


% =============================================================

end
