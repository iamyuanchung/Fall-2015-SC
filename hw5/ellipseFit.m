function [sse, theta] = ellipseFit(data, showPlot)

x = data(:, 1);
y = data(:, 2);
center_init = [mean(x), mean(y)];
[sse, radius] = sseOfEllipseFit(center_init, data);

[center, sse] = fminsearch(@(center) errorMeasure(center, data, radius), center_init);

theta = [center(1), center(2), radius(1), radius(2)];

if (showPlot)
    phi = linspace(0, 2*pi);
    x_value = theta(1) + radius(1) * cos(phi);
    y_value = theta(2) + radius(2) * sin(phi);
    plot(x, y, '.', x_value, y_value, 'r');
    axis image
end