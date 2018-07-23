function [ CMC_bi_DAKR,CMC_inv_DAKR,CMC_bi_DAKR_additive,CMC_bi_DAKR_multiple]= find_optima_of_two_DAKR_methods( gal,prob, M, W, numk, labelsGa, labelsPr, numRanks)
% k-reciprocal re-ranking

%% initial ranking list
dist_XX = MahDist(M, gal * W);
scores = MahDist(M, gal * W, prob * W);
CMC_bi_DAKR = zeros(numRanks,numk);
CMC_inv_DAKR = zeros(numRanks,numk);
CMC_bi_DAKR_additive = zeros(numRanks,numk);
CMC_bi_DAKR_multiple = zeros(numRanks,numk);
[B1,~] = sort(dist_XX);
[B2,~] = sort(scores);


for K = 1:numk
   local_density_gallery = B1(K+1,:).^0.5;
   local_density_probe = B2(K,:).^0.5;

    sigma_bi_DAKR = local_density_gallery'*local_density_probe;
    dist_bi_DAKR = scores./sigma_bi_DAKR;
    sigma_inv_DAKR = (local_density_gallery.^2)'*ones(1,size(prob,1));
    dist_inv_DAKR = scores./sigma_inv_DAKR ;

    dist = scores.^0.5;
    direct = exp(-dist./(local_density_gallery'* ones(1,size(prob,1))));
    inverse = exp(-dist./(ones(size(gal,1),1) * local_density_probe ));
    dist_bi_DAKR_additive = direct + inverse;
    dist_bi_DAKR_multiple = direct .* inverse;
    

    CMC  = EvalCMC(-dist_bi_DAKR, labelsGa, labelsPr, numRanks )*100;
    CMC_bi_DAKR(:,K) = CMC(1:numRanks)';
    CMC  = EvalCMC( -dist_inv_DAKR, labelsGa, labelsPr, numRanks )*100;
    CMC_inv_DAKR(:,K) = CMC(1:numRanks);
    CMC  = EvalCMC( dist_bi_DAKR_additive, labelsGa, labelsPr, numRanks )*100;
    CMC_bi_DAKR_additive(:,K) = CMC(1:numRanks);
    CMC  = EvalCMC( dist_bi_DAKR_multiple, labelsGa, labelsPr, numRanks )*100;
    CMC_bi_DAKR_multiple(:,K) = CMC(1:numRanks);
    
end  
end