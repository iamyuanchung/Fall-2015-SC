function pageRank = myPageRank(G, p)
% G: the connectivity matrix
% p: the probability of following a link in a page

% n_page: number of pages
n_pages = length(G);
% A = p * G + (1 - p) * ones(n_pages) / n_pages;
A = zeros(n_pages);
for i = 1:n_pages
    for j = 1:n_pages
        if sum(G(:, j) ~= 0)
            A(i, j) = p * G(i, j) / sum(G(:, j)) + (1 - p) / n_pages;
        else
            A(i, j) = 1 / n_pages;
        end
    end
end

% Initial pageRank is a vector of uniform distribution.
pageRank = ones(n_pages, 1) / n_pages;

iter = 0;
while iter < 10
    pageRank = A * pageRank;
    iter = iter + 1;
end