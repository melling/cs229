
function doit()

X = [ones(20,1) (exp(1) * sin(1:1:20))' (exp(0.5) * cos(1:1:20))'];
y = sin(X(:,1) + X(:,2)) > 0;

out = sprintf('%0.5f ', sigmoid(X));
out

out = sprintf('%0.5f ', costFunction([0.25 0.5 -0.5]', X, y));
#out

fprintf("The End\n")
end
