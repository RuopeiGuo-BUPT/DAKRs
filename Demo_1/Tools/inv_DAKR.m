function [ dist_inv_DAKR]= inv_DAKR( gal,prob, M, W, optK)
% k-reciprocal re-ranking

%% initial ranking list
   
   
    dist_XX = MahDist(M, gal * W);
    scores = MahDist(M, gal * W, prob * W);
    [B1,~] = sort(dist_XX);
      
    local_density_gallery = B1(optK+1,:);
    sigma_inv_DAKR = (local_density_gallery)'*ones(1,size(prob,1));
    dist_inv_DAKR = scores./sigma_inv_DAKR ;
      
end