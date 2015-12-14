function F = func(p, A)

[d, n] = size(A);
F = 0;
for i = 1:n
    F = F + sum((p - A(:, i)) .^ 2) ^ 0.5;
end
