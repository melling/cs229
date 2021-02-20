function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

% TUTORIAL
%
% https://www.coursera.org/learn/machine-learning/discussions/all/threads/-m2ng_KQEeSUBCIAC9QURQ

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %

% Reminder that 'm' is the number of training examples (the rows of X), 
% 'n' is the number of features (the columns of X). 
% 'n' is also the size of the theta vector (n x 1).


%   1 - The hypothesis is a vector, formed by multiplying the X matrix
%   and the theta vector. X has size (m x n), and theta is (n x 1), 
%   so the product is (m x 1). That's good, because 
%   it's the same size as 'y'. Call this hypothesis vector 'h'.

    h_theta = X * theta; % hypothesis vector h_theta is cost fn


% 2 - The "errors vector" is the difference between the 'h' vector 
% and the 'y' vector.

    errors = h_theta - y;

%  3 - The change in theta (the "gradient") is the sum of the product of X 
%  and the "errors vector", 
%  Scaled by alpha and 1/m.
%  Since X is (m x n), and the error vector is (m x 1), and the result 
%  you want is the 
%  same size as theta (which is (n x 1), you need to transpose X 
%  before you can multiply it by the error vector.

    XT = X';
    theta_change = alpha * (XT * errors) / m;

% The vector multiplication automatically includes calculating the sum of 
% the products. So you do not need to use the "sum()" function separately.


% When you're scaling by alpha and 1/m, be sure you use enough sets of 
% parenthesis to get the factors correct.


% 4 - Subtract this "change in theta" from the original value of theta. 
% A line of code like this will do it:

% theta = theta - theta_change;

    theta = theta -  theta_change;


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
