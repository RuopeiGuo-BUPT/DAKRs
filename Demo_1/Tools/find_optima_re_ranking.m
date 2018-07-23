function [CMCs_re] = find_optima_re_ranking(galX, probX, M, W, num_k1, num_k2, num_lambda,labelsGa, labelsPr, numRanks)

CMCs_re = zeros( numRanks,num_k1,num_k2,num_lambda );

query_num = size(probX, 1);
for i = 1:num_k1
    for j =1:num_k2
        for l = 1:num_lambda
            lambda = l * 0.05;
            dist_XQDA_re = re_ranking( [probX; galX], M, W, query_num, i, j, lambda);
            CMC  = EvalCMC( -dist_XQDA_re, labelsGa, labelsPr, numRanks )*100;
            CMCs_re(:,i,j,l) = CMC(1:numRanks)';
        end
    end
end
end