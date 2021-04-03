---------------------------------------
% Test 3a (Collaborative Filtering Cost):
clear all;clc;
output_precision(6);

% input:
params = [ 1:14 ] / 10;
Y = magic(4);
Y = Y(:,1:3);
R = [1 0 1; 1 1 1; 0 0 1; 1 1 0] > 0.5;     % R is logical
num_users = 3;
num_movies = 4;
num_features = 2;
lambda = 0;
J = cofiCostFunc(params, Y, R, num_users, num_movies, num_features, lambda)
% output:
% J =  311.63