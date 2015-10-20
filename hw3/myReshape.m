function B = myReshape(A)

R = A(:, :, 1);
G = A(:, :, 2);
B = A(:, :, 3);

[m, n] = size(R);

r = reshape(R, 1, m * n);
g = reshape(G, 1, m * n);
b = reshape(B, 1, m * n);

B = [r; g; b];