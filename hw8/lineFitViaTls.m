function coef = lineFitViaTls(data)

% X = data(1, :);
% y = data(2, :);

[A2, eigVec, eigVal] = pca(data);
[eigVal_sorted, eigVal_index] = sort(eigVal);
coef = eigVec(:, eigVal_index(end - 1));
coef = [coef; -data(:, 2)' * coef];