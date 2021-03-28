% Test Case

% https://www.coursera.org/learn/machine-learning/discussions/weeks/7/threads/Q75iGsATEeW4VAonMO7H9Q

gaussianKernel([1 2 3], [2 4 6], 3)

% result
% ans =  0.45943

% Verify that the same point returns 1
gaussianKernel([1 1], [1 1], 1)

% ans =

%      1

% Verify that disimilar points return 0 (or close to it)
gaussianKernel([1 1], [100 100], 1)

% ans =

%      0
