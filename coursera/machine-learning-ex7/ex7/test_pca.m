% ========== pca() ============   
[U, S] = pca(sin([0 1; 2 3; 4 5]))

% % result
% U =
%   -0.65435  -0.75619
%   -0.75619   0.65435

% S =
% Diagonal Matrix
%    0.79551  0
%    0        0.22019

% ========== projectData() ============ 
clear all; clc;
X = sin(reshape([0:11],4,3));
projectData(X, magic(3), 2)

% % result
% ans =
%    1.68703   5.12021
%    5.50347  -0.24408
%    4.26005  -5.38397
%   -0.90004  -5.57386
   

% ========== recoverData() ============  
clear all; clc;
Q = reshape([1:15],5,3);
recoverData(Q, magic(5), 3)

Z = Q
U = magic(5)
K = 3
Z * U(:, 1:K)

% % result
% ans =
%    172   130   183   291   394
%    214   165   206   332   448
%    256   200   229   373   502
%    298   235   252   414   556
%    340   270   275   455   610   