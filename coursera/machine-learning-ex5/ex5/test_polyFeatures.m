% Test Case
% https://www.coursera.org/learn/machine-learning/discussions/all/threads/6VACvWbKEeWjjQ6zloxUzw

polyFeatures([1:3]',4)
% ans =
%     1    1    1    1
%     2    4    8   16
%     3    9   27   81

polyFeatures([1:7]',4)
% ans =

%       1      1      1      1
%       2      4      8     16
%       3      9     27     81
%       4     16     64    256
%       5     25    125    625
%       6     36    216   1296
%       7     49    343   2401    
clear all;
clc;

p=4
X_poly = zeros(numel([1:3]), p)
X_poly(1, :)
for i = 1:p
    X  = bsxfun(@power, [1:3]', i)
    size(X)
    X_poly(:, i) = X;
end    
% X_poly'
%     1    1    1    1
%     2    4    8   16
%     3    9   27   81
