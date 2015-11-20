function sse = errorMeasure(center, data, radius)

[n, d] = size(data);

x = data(:, 1);
y = data(:, 2);

sse = sum((((x - center(1)) / radius(1)) .^ 2 + ((y - center(2)) / radius(2)) .^ 2 - ones(n, 1)) .^ 2);