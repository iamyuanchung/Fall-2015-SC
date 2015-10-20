function x = sortInv(x2, index)

n = length(x2);
x = zeros(1, n);
for i = 1:n
    x(index(i)) = x2(i);
end