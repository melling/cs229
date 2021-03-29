fprintf('Plotting Data ...\n')
data = load('ex1data1.txt');
X = data(:, 1);
y = data(:, 2);
m = length(y); % number of training examples

% Plot Data
% Note: You have to complete the code in plotData.m
%plotData(X, y);
plot(X, y, 'rx', 'MarkerSize', 5); % Plot the 
ylabel('Profit in $10,000s'); % Set the y−axis label 
xlabel('Population of City in 10,000s'); % Set the x−axis label

fprintf('Program paused. Press enter to continue.\n');
pause;
