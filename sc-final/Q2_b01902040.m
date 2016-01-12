function output = Q2_b01902040(data)

x_init = mean(data')';
[x, tSD] = fminsearch(@Objective, x_init, [], data);
output = x;

function totalSquaredDistance = Objective(x, data)
    [d, n] = size(data);
    totalSquaredDistance = 0;
    for i = 1:n
        totalSquaredDistance = totalSquaredDistance + sum((x - data(:, i)) .^ 2);
    end