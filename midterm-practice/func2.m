function F = func2(p, P)

p = [p; 1];
tmp = (sum(P(1:3, :) .^ 2) .^ 0.5)';
F = sum((P' * p ./ tmp) .^ 2);
