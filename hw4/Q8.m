X = imread('annie19980405.jpg');
image(X); % display the original image

[m, n, p] = size(X);
b = 8;  % block size

% transform into block view version ...
X_block = zeros(p * b^2, m * n / b^2);
count = 1;  % keep track of #(samples)
for j = 1:n/b
    for i = 1:m/b
        X_block(:, count) = reshape(X(b*(i-1)+1:b*i, b*(j-1)+1:b*j, :), b*b*p, 1);
        count = count + 1;
    end
end

maxI = 10;
for i = 1:maxI
	centerNum = 2^i;
	center = kMeansClustering(X_block, centerNum);
	distMat = distPairwise(center, X_block);
	[minValue, minIndex] = min(distMat);

    X_compress = center(:, minIndex);

    % recover from compressed image ...
    X_recover = zeros(size(X));
    count = 1;
    for c=1:n/b
        for r=1:m/b
            % current block:
            %               row: b*(r-1)+1 ~ b*r
            %               col: b*(c-1)+1 ~ b*c
            X_recover(b*(r-1)+1:b*r, b*(c-1)+1:b*c, :) = reshape(X_compress(:, count), b, b, p);
            count = count + 1;
        end
    end

    imwrite(X_recover / 255, strcat('annie19980405_', num2str(i), '.jpg'));

    % compute the compression ratio
    ratio = m * n * p * 8 / (m / b * n / b * 8 + centerNum * m / b * n / b * p * 3);
    fprintf('Compression ratio = %f\n', ratio);
end
