function ans = regGeneralStar(n, k)

% plot the circle centered at (0, 0) and whose radius equals to 1
theta = linspace(0, 2 * pi);
plot(exp(j * theta), 'color', 'r'); hold on;

% plot the polygon
phi = 0: (2 * pi / n * k): (k * 2 * pi);
plot(exp(j * phi), 'color', 'b', 'marker', 'o'); hold off;