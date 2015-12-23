function coef = lineFitViaTls(data)

% X = data(1, :);
% y = data(2, :);

[A2, eigVec, eigVal] = pca(data);
[eigVal_sorted, eigVal_index] = sort(eigVal);
coef = eigVec(:, eigVal_index(end - 1));
data_mean = mean(data')';
coef = [coef; -data_mean' * coef];