function [index, distance] = myKnnSearch(x, X, k)
% x: an input column vector of d-dimension
% X: a dataset matrix of d by n, with each column being an observation
% k: no. of nearest neighbors to be retrieved
% index: a vector of k integers, representing the indices of the first k nearest neighbors (starting from the nearest one to the farthest one)
% distance: a vector of k element, representing the distances to these k nearest neighbors

[d, n] = size(X);
dist = zeros(n);
for i = 1:n
    dist(i) = sum(((x - X(:, i)) .^ 2)) ^ 0.5;
end

[dist_sort, ind] = sort(dist);
knn_dist = dist_sort(1:k)
knn_id = ind(1:k)