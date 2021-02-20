
%% Test
% gradientDescent(X, y, theta, alpha, num_iters)
fprintf("=== gradientDescent(X, y, theta, alpha, num_iters) ===\n")

[theta J_hist] = gradientDescent([1 5; 1 2; 1 4; 1 5], y=[1 6 4 2]',[0 0]',0.01,1000);
theta
fprintf('Theta found by gradient descent: ');
fprintf('%f %f \n', theta(1), theta(2));
fprintf('Expected %f %f \n', 5.2148, -0.5733);
% 5.2148
% -0.5733

J_hist(1) % 5.9794

J_hist(1000) % 0.85426

%% Test
%fprintf("=== gradientDescent(X, y, theta, alpha, num_iters) ===\n")
%[theta J_hist] = gradientDescent([1 5; 1 2],[1 6]',[.5 .5]',0.1,10);
