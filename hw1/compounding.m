% Calculate monthly payment mp
mp = 400 * (1 + 0.0025) ^ 240 / (((1 + 0.0025) ^ 240 - 1) / 0.0025);

% Calculate the final value of the house fvh
fvh = 500 * (1 + 0.07 / 12) ^ 240;

% Calculate the final value of the payments fvp
fvp = mp * ((1 + 0.0138 / 12) ^ 240 - 1) / (0.0138 / 12);

% Calculate the final value of the down payment fvdp
fvdp = 100 * (1 + 0.0138 / 12) ^ 240;

% Calculate the final earning fe
fe = fvh - fvp - fvdp;

% Calculate the initial earning ie
ie = fe / (1 + 0.0138 / 12) ^ 240;

% ==================== with rent ====================

% Calculate the final earning with rent fer
fer = fvh - (mp - 1) * ((1 + 0.0138 / 12) ^ 240 - 1) / (0.0138 / 12) - fvdp;

% Calculate the initial earning with rent ier
ier = fer / (1 + 0.0138 / 12) ^ 240;

fprintf('Monthly payment = %f\n', mp);
fprintf('Final value of the house = %f\n', fvh);
fprintf('Final value of the payments = %f\n', fvp);
fprintf('Final value of the down payment = %f\n', fvdp);
fprintf('Final earning = %f\n', fe);
fprintf('Initial earning = %f\n', ie);
fprintf('Final earning (with rent) = %f\n', fer);
fprintf('Initial earning (with rent) = %f\n', ier);