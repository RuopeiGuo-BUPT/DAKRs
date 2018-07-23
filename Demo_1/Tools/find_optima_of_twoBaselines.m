function [ CMC_rev_kNN,CMC_reciprocal_kNN]= find_optima_of_twoBaselines( gal,prob, M, W, down,up, labelsGa, labelsPr, numRanks)
 
range = up - down+1;
CMC_rev_kNN = zeros(numRanks,range);
CMC_reciprocal_kNN = zeros(numRanks,range);
N_gal = size(gal,1);
N_prob = size(prob,1);
score = zeros(N_gal,N_prob);
Jaccard = ones(N_gal,N_prob);
Dist = MahDist(M, [gal;prob] * W);
Dist_G = Dist(1:N_gal,1:N_gal);
temp_Dist_G = diag(ones(1,N_gal)*Inf);
Dist_G = Dist_G+temp_Dist_G;

for i = 1:N_prob
    temp_Dist =[Dist_G,Dist(1:N_gal,N_gal+i)];
    [~,Ind] = sort(temp_Dist,2);
    [row,col] = find(Ind==(N_gal+1));
    score(row,i) = col;
end


Dist_PG = Dist(N_gal+1:end,1:N_gal);
[~, initial_rank] = sort(Dist_PG, 2, 'ascend');
Dist_G = Dist(1:N_gal,1:N_gal);
[~, rank] = sort(Dist_G, 2, 'ascend');

t = 1;
for k = down:up;
    temp_score_k = (score<=k).*score;
    temp_score_exclude = (score>k)*1000;
    final_score = temp_score_k + temp_score_exclude;
    CMC  = EvalCMC(-final_score, labelsGa, labelsPr, numRanks )*100;
    CMC_rev_kNN(:,t) = CMC(1:numRanks)';
    
    
    score_k = (score<=k);
    for i = 1:N_prob
        Ni = zeros(1,N_gal);
        Ni(initial_rank(i,1:k)) = ones(1,k);
        Ii = score_k(:,i);
        Ri = Ni.*Ii';
        [~,Ind,~] = find(Ri>0);
        if isempty(Ind)==0
           for j = 1:sum(Ri)
               R_gi = zeros(1,N_gal);
               R_gi(rank(Ind(j),1:k)) = ones(1,k);
               temp_min = R_gi * Ni'+2;
               temp = R_gi + Ni;
               temp = (temp>0);
               temp_max = sum(temp)+2;
               Jaccard(Ind(j),i) = 1 - temp_min/temp_max;
           end
        end
    end
    CMC  = EvalCMC(-Jaccard, labelsGa, labelsPr, numRanks )*100;
    CMC_reciprocal_kNN(:,t) = CMC(1:numRanks)';
    t = t+1;
end