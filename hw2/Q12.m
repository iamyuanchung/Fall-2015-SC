% (a) Plot a sine wave as follows:
x = 0:0.1:4 * pi;
y = sin(x) + rand(1, length(x));
% plot(t, y, '.-');

% (b) Put a circle at each local maximum.
for i = 1:length(x)
    if i == 1
        if y(i) >= y(i + 1)
            lmax_ind = [i];
        else
            lmax_ind = [];
        end
    elseif i == length(x)
        if y(i) >= y(i - 1)
            lmax_ind = [lmax_ind i];
        end
    else
        if y(i) >= y(i - 1) && y(i) >= y(i + 1)
            lmax_ind = [lmax_ind i];
        end
    end
end

lmax_x = x(lmax_ind);
lmax_y = y(lmax_ind);

figure
plot(x, y, 'r', lmax_x, lmax_y, 'bo');

% (c) Use the command "text" to annotate each local maximum.
data = {};
for i = 1:length(lmax_x)
    new_data = strcat('(', num2str(lmax_x(i)), ', ', num2str(lmax_y(i)), ')');
    data = [data new_data];
end
text(lmax_x, lmax_y, data);