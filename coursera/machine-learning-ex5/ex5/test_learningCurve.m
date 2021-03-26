% Test Case
% https://www.coursera.org/learn/machine-learning/discussions/weeks/6/threads/DLXINNI4EeaJrBIAwnTPnA

clear all;clc;

X = [ones(5,1) reshape(-5:4,5,2)];
y = [-2:2]';
Xval=[X;X]/10;
yval=[y;y]/10;
[et ev] = learningCurve(X,y,Xval,yval,1)

% et =

%    0.000000
%    0.031250
%    0.013333
%    0.005165
%    0.002268

% ev =

%   3.0000e-002
%   5.3125e-003
%   6.0000e-004
%   9.2975e-005
%   2.2676e-005

% % m = 1
% theta =
%   -2.00000
%    0.00000
%    0.00000

% % m = 2
% theta =
%   -0.50000
%    0.25000
%    0.25000

% % m = 3
% theta =
%    0.20000
%    0.40000
%    0.40000

% % m = 4
% theta =
%    0.40909
%    0.45455
%    0.45455

% % m = 5
% theta =
%    0.47619
%    0.47619
%    0.47619