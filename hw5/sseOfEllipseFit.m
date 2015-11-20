function [sse, radius] = sseOfEllipseFit(center, data)

[n, d] = size(data);

center_2 = [];
for i = 1:n
    center_2 = [center_2; center];
end

theta = (data - center_2) .^ 2 \ ones(n, 1);

radius = 1 ./ theta .^ 0.5;
sse = sum(((data - center_2) .^ 2 * theta - ones(n, 1)) .^ 2);