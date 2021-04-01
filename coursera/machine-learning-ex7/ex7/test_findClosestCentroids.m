% Test
% https://www.coursera.org/learn/machine-learning/discussions/all/threads/dvK0u5U5EeWy0Q7ABZMsnQ

clear all; clc;
output_precision(6);

% ========== findClosestCentroids() ============
X = reshape(sin(1:50), 10, 5)
distance = zeros(size(X))

cent = X(7:10,:)
idx = findClosestCentroids(X, cent)

% % result
% idx =
%    1
%    2
%    3
%    4
%    4
%    1
%    1
%    2
%    3
%    4

% additional information
% these are the "distances" for each example, computed as the sum
% of the squares of the differences for each feature.
% debug> dist
% dist =

%     0.18685    1.26617    6.26061   10.23971
%     3.68554    0.21768    1.31858    5.63745
%     9.03781    3.83809    0.19602    1.12150
%    10.66224    8.13823    3.26444    0.18322
%     6.96941    9.06864    7.60682    3.58933
%     2.09490    6.51432    9.97120    8.94869
%     0.00000    2.30339    7.66348   10.81361
%     2.30339    0.00000    2.49799    7.16213
%     7.66348    2.49799    0.00000    2.12753
%    10.81361    7.16213    2.12753    0.00000
