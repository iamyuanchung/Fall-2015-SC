function p = minSquaredDist2planes(P)

p_init = zeros(3, 1);
[p, fval] = fminsearch(@func2, p_init, [], P);
