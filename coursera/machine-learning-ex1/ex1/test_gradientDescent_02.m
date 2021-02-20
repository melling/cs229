% test_02_gradientDescent.m

% https://www.coursera.org/learn/machine-learning/discussions/all/threads/5wftpZnyEeWKNwpBrKr_Fw

[theta J_hist] = gradientDescent([1 5; 1 2],[1 6]',[.5 .5]',0.1,10);

%theta
fprintf('Theta found by gradient descent: ');
fprintf('%f %f \n', theta(1), theta(2));
fprintf('Expected %f %f \n', 1.70986, 0.19229);
