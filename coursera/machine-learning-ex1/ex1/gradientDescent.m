function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Notes:

% Tutorial: https://www.coursera.org/learn/machine-learning/discussions/all/threads/-m2ng_KQEeSUBCIAC9QURQ
% Test Cases: https://www.coursera.org/learn/machine-learning/discussions/all/threads/5wftpZnyEeWKNwpBrKr_Fw

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    x = X(:,2); % Get column 2
%    cost = theta(1) + (theta(2)*x); % theta0 + theta1 * x
    h_theta = X * theta % hypothesis vector h_theta is cost fn
    errors = h_theta - y;

    theta0 = theta(1) - alpha * (1/m) * sum(errors);
    theta1  = theta(2) - alpha * (1/m) * sum(errors .* x);

    theta = [theta0; theta1];


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end
    fprintf("\nJ_history ===\n")
%    J_history(1:10,:)
%    J_history((end - 10):end,:) % Last 10 rows
end
