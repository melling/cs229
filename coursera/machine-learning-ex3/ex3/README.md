
[Programming Exercise Tutorials from Coursera](https://www.coursera.org/learn/machine-learning/discussions/all/threads/m0ZdvjSrEeWddiIAC9pDDA)

[Week 4 Test Cases](https://www.coursera.org/learn/machine-learning/discussions/all/threads/5g8LaZTCEeW0dw6k4EUmPw)

## lrCostFunction.m

Tips on lrCostFunction():

- When completed, this function is identical to your costFunctionReg() from ex2, but using vectorized methods. See the ex2 tutorials for the cost and gradient - they use vectorized methods. 
- ex3.pdf tells you to first implement the unregularized parts, then to implement the regularized parts. Then you test your code, and then submit it for grading. 
- Do not remove the line "grad = grad(:)" from the end of the lrCostFunction.m script template. This line guarantees that the grad value is returned as a column vector.

***

Simply last week's costFunctionReg.m, if it was vectorized

Also need costFunction.m

## oneVsAll.m

[oneVsAll Tutorial](https://www.coursera.org/learn/machine-learning/discussions/weeks/4/threads/sLIsSJU1EeW70BJZtLVfGQ)

Type these commands in your workspace to see how to copy a vector into a matrix:

```octave
Q = zeros(5,3)      % create a test matrix of all-zeros
v = [1 2 3]'        % create a column vector
Q(2,:) = v          % copy v into the 2nd row of Q
```

test_oneVsAll.m

## predict

## predict

[Tutorial](https://www.coursera.org/learn/machine-learning/discussions/weeks/4/threads/miam5q2IEeWhLRIkesxXNw)
