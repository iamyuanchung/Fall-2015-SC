function p = minDist2points(A)

p_init = mean(A')';
[p, total_dist] = fminsearch(@func, p_init, [], A);
