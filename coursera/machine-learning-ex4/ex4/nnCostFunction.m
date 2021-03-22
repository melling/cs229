function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
%NNCOSTFUNCTION Implements the neural network cost function for a two layer
%neural network which performs classification
%   [J grad] = NNCOSTFUNCTON(nn_params, hidden_layer_size, num_labels, ...
%   X, y, lambda) computes the cost and gradient of the neural network. The
%   parameters for the neural network are "unrolled" into the vector
%   nn_params and need to be converted back into the weight matrices. 
% 
%   The returned parameter grad should be a "unrolled" vector of the
%   partial derivatives of the neural network.
%

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 2 layer neural network
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

% Setup some useful variables
m = size(X, 1);
         
% You need to return the following variables correctly 
J = 0;
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));

% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the code by working through the
%               following parts.
%
% Part 1: Feedforward the neural network and return the cost in the
%         variable J. After implementing Part 1, you can verify that your
%         cost function computation is correct by verifying the cost
%         computed in ex4.m
%

% Tutorial:
% https://www.coursera.org/learn/machine-learning/programming/AiHgN/neural-network-learning/discussions/threads/QFnrpQckEeWv5yIAC00Eog

% 1 - Expand the 'y' output values into a matrix of 
% single values (see ex4.pdf/mlx Page 5). 
% This is most easily done using an eye() matrix of 
% size num_labels, with vectorized indexing by 'y'. 
% A useful variable name would be "y_matrix", as this...

y_matrix = eye(num_labels)(y,:);
y = y_matrix


% 1. Add a column of 1's to X (the first column), and it becomes 'a1'.
a1 = [ones(m, 1) X];

% 2. Multiply by Theta1 and you have 'z2'. 
% z : is the result of multiplying a data vector with a Θ matrix.
% A typical variable name would be "z2
z2 = a1  * Theta1';

% sigmoid(z2)
% 3. Compute the sigmoid() of 'z2', then add a column of 1's, and it becomes 'a2'
% a2 - activation layer 2 output
a2 = [ones(m, 1) sigmoid(z2)];

% 4. Multiply by Theta2, compute the sigmoid() and it becomes 'a3'.

z3 = a2 * Theta2';

% a2 - activation layer 3 output
a3 = sigmoid(z3);
hypothesis = a3;

% h_theta = X * Theta;
% hypothesis = sigmoid(h_theta);
d3 = a3 - y
sig = sigmoidGradient(z2)

theta2_size = size(Theta2)
d3_size = size(d3)
sig_size = size(sig)

% d2 = (d3 * Theta2)' * sigmoidGradient(z2)
d2 = (d3 * Theta2(:,2:end)) .* sigmoidGradient(z2)
% Transpose: (d3 * Theta2)'
% d2_1 = (Theta2 * d3) * sigmoidGradient(z2)

logh0 = (-y)' * log(hypothesis) - ((1 - y)' * log(1 - hypothesis));
 
grad = (X'*(hypothesis - y))/m;

% δ : lower-case delta is used for the "error" term in each layer. 
% A typical variable name would be "d2"    
J = logh0 / m;

theta_t1 = Theta1
theta_t1(:,1) = 0

theta_t2 = Theta2
theta_t2(:,1) = 0

Delta1 = d2' * a1
Delta2 = d3' * a2

Theta1_grad = Delta1 / m
Theta2_grad = Delta2 / m
% Delta1 = a1 * (d3 * Theta2)' * sigmoidGradient(a2) % d2
% Delta2 = Delta2 + delta3 * a2'

reg1 = lambda * sum(sum(theta_t1 .^ 2)) / (2 * m)
reg2 = lambda * sum(sum(theta_t2 .^ 2)) / (2 * m)
% reg3_0 = sum(sum(theta_t2 .^ 2)) + sum(sum(theta_t1 .^ 2))
% reg3 = lambda * reg3_0 / (2 * m)
% [w iw] = max(J');

tracer = trace(J)
totalCost = tracer + reg1 + reg2
% totalCost0 = tracer + reg3
J = totalCost
% J = sum(J);
% Part 2: Implement the backpropagation algorithm to compute the gradients
%         Theta1_grad and Theta2_grad. You should return the partial derivatives of
%         the cost function with respect to Theta1 and Theta2 in Theta1_grad and
%         Theta2_grad, respectively. After implementing Part 2, you can check
%         that your implementation is correct by running checkNNGradients
%
%         Note: The vector y passed into the function is a vector of labels
%               containing values from 1..K. You need to map this vector into a 
%               binary vector of 1's and 0's to be used with the neural network
%               cost function.
%
%         Hint: We recommend implementing backpropagation using a for-loop
%               over the training examples if you are implementing it for the 
%               first time.
%
% Part 3: Implement regularization with the cost function and gradients.
%
%         Hint: You can implement this around the code for
%               backpropagation. That is, you can compute the gradients for
%               the regularization separately and then add them to Theta1_grad
%               and Theta2_grad from Part 2.
%



% -------------------------------------------------------------

% =========================================================================

% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];


end
