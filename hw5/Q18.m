load ellipseData02.txt
x = ellipseData02(:, 1);
y = ellipseData02(:, 2);

[theta, sse] = ellipseFit(ellipseData02, 1)