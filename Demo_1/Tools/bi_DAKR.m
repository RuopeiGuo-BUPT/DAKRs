function [ dist_bi_DAKR ]= bi_DAKR( gal,prob, M, W, optK)
% k-reciprocal re-ranking

%% initial ranking list
   
   
    dist_XX = MahDist(M, gal * W);
    scores = MahDist(M, gal * W, prob * W);
    [B1,~] = sort(dist_XX);
    [B2,~] = sort(scores);
    
    local_density_gallery = B1(optK+1,:).^0.5;
    local_density_probe = B2(optK,:).^0.5;
    sigma_bi_DAKR = local_density_gallery'*local_density_probe;
    dist_bi_DAKR = scores./sigma_bi_DAKR;
         
end