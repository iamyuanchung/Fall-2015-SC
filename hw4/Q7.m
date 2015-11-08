X = imread('annie19980405.jpg');
image(X)    % display the original image

[m, n, p] = size(X);

index = reshape(1: m*n*p, m*n, 3)';
data = double(X(index));
size(data)
maxI = 1;
for i = 1:maxI
	centerNum = 2^i;
	fprintf('i = %d/%d: no. of centers=%d\n', i, maxI, centerNum);
	center = kMeansClustering(data, centerNum);
	distMat = distPairwise(center, data);
	[minValue, minIndex] = min(distMat);
	X2 = reshape(minIndex, m, n);
	map = center' / 255;
	figure; image(X2); colormap(map); colorbar; axis image;
end