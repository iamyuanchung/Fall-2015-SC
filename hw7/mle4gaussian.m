function [mu, sigma] = mle4gaussian(X)

mu = mean(X')';

[m, n] = size(X);
% m: dimension of x_{i}
% n: number of samples

sigma = zeros(m);
for i = 1:n
    tmp = X(:, i) - mu
    sigma = sigma + tmp * tmp';
end
sigma = sigma / n;