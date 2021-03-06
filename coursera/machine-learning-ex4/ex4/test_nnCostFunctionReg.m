
% Test Case: 
% https://www.coursera.org/learn/machine-learning/discussions/weeks/5/threads/uPd5FJqnEeWWpRIGHRsuuw

clc;
output_precision(8);

il = 2;              % input layer
hl = 2;              % hidden layer
nl = 4;              % number of labels
nn = [ 1:18 ] / 10;  % nn_params
X = cos([1 2 ; 3 4 ; 5 6]);
y = [4; 2; 3];
lambda = 4;
[J grad] = nnCostFunction(nn, il, hl, nl, X, y, lambda)


% J = 19.474
% grad =
% 0.76614
% 0.97990
% 0.37246
% 0.49749
% 0.64174
% 0.74614
% 0.88342
% 0.56876
% 0.58467
% 0.59814
% 1.92598
% 1.94462
% 1.98965
% 2.17855
% 2.47834
% 2.50225
% 2.52644
% 2.72233

% Internal values for Regularized case

% d2 =
%    0.79393   1.05281
%    0.73674   0.95128
%    0.76775   0.93560

% d3 =
%    0.888659   0.907427   0.923305  -0.063351
%    0.838178  -0.139718   0.879800   0.896918
%    0.923414   0.938578  -0.049102   0.960851

% Delta1 =
%    2.298415  -0.082619  -0.074786
%    2.939691  -0.107533  -0.161585

% Delta2 =
%    2.65025   1.37794   1.43501
%    1.70629   1.03385   1.10676
%    1.75400   0.76894   0.77931
%    1.79442   0.93566   0.96699

% z2 =
%    0.054017   0.166433
%   -0.523820  -0.588183
%    0.665184   0.889567

% sigmoidGradient(z2)
% ans =
%    0.24982   0.24828
%    0.23361   0.22957
%    0.22426   0.20640

% a2 =
%    1.00000   0.51350   0.54151
%    1.00000   0.37196   0.35705
%    1.00000   0.66042   0.70880

% a3 =
%    0.88866   0.90743   0.92330   0.93665
%    0.83818   0.86028   0.87980   0.89692
%    0.92341   0.93858   0.95090   0.96085  