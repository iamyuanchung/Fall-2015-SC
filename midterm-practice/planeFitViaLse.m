function theta = planeFitViaLse(X)

[d, n] = size(X);
d = d - 1;

y = X(3, :)';
X = [ones(n, 1) X(1:2, :)'];

size(y);

theta = X \ y;