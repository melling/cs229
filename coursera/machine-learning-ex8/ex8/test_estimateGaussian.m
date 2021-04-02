% Test 1a (Estimate Gaussian Parameters):
% input:
clear all;clc;
output_precision(6);
X = sin(magic(4));
X = X(:,1:3)
% mu = mean(X)
% X_norm = bsxfun(@minus, X, mu);

% sigma2 = var(X_norm,1)

% X_norm = bsxfun(@minus, X, mu);

[mu sigma2] = estimateGaussian(X)


% output:
% mu =
%   -0.3978779  0.3892253  -0.0080072
% sigma2 =
%    0.27795    0.65844   0.20414
   