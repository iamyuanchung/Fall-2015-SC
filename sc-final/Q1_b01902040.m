function theta = Q1_b01902040(data)

denom = sqrt(sum(data(1:end-1, :) .^2));
P2 = data * diag(1 ./ denom);
A = P2(1:end-1, :)';
b = -P2(end, :)';
theta = A \ b;