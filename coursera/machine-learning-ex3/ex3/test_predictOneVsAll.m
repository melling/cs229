% test_predictOneVsAll

% https://www.coursera.org/learn/machine-learning/discussions/all/threads/5g8LaZTCEeW0dw6k4EUmPw 

clear;clc;
% input:
all_theta = [1 -6 3; -2 4 -3]
X = [1 7; 4 5; 7 8; 1 4]
predictOneVsAll(all_theta, X)

% m = size(X, 1);
% X = [ones(m, 1) X]

% z = X * all_theta'

% [w iw] = max(z')
% p = iw'

%output:
% ans =
%    1
%    2
%    2
%    1
