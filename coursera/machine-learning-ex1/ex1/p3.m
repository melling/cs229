function [J] = p3()

	data = load('ex1data1.txt');       % read comma separated data
	X = data(:, 1); 
	y = data(:, 2);
	m = length(y); % 97

	X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
	theta = zeros(2, 1); % initialize fitting parameters
	iterations = 1500;
	alpha = 0.01;
% X (97x2) y is 97x1 theta 2x1
  	h_theta = X*theta
    h_minus_y_squared   = (h_theta - y).^2
    sum_sq = sum(h_minus_y_squared)
    denom = 2*m
   J = sum(h_minus_y_squared) / denom


end
