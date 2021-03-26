
% https://www.coursera.org/learn/machine-learning/discussions/all/threads/w7-BWWbLEeWjjQ6zloxUzw

clear all;clc;
X = [1 2 ; 1 3 ; 1 4 ; 1 5];
y = [8 ; 7 ; 3 ; 2];
Xval = [1 7 ; 1 -2];
yval = [2 12]';
[lambda_vec, error_train, error_val] = validationCurve(X,y,Xval,yval )

% % results:
% lambda_vec =
%     0.00000
%     0.00100
%     0.00300
%     0.01000
%     0.03000
%     0.10000
%     0.30000
%     1.00000
%     3.00000
%    10.00000

% error_train =

%    0.22500
%    0.22500
%    0.22500
%    0.22501
%    0.22511
%    0.22616
%    0.23469
%    0.30903
%    0.65039
%    1.56944


% error_val =

%    12.02500
%    12.01521
%    11.99567
%    11.92750
%    11.73488
%    11.08497
%     9.41901
%     5.29514
%     0.90039
%     2.24722

