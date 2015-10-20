x = round(100 * rand(1, 100));
[x2, index] = sort(x);
x3 = sortInv(x2, index);
z = isequal(x, x3)