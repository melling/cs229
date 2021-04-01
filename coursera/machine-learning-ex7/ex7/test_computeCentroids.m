
clear all;clc;

output_precision(6);

X = reshape([1:24],8,3);
computeCentroids(X, [1 1 3 3 4 4 2 2]',4)

% % result
% ans =
%     1.5000    9.5000   17.5000
%     7.5000   15.5000   23.5000
%     3.5000   11.5000   19.5000
%     5.5000   13.5000   21.5000

