%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% eval_XQDA.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
addpath 'XQDA/'
addpath 'GOG/'
addpath 'Features/'
addpath 'DB/'
addpath 'DataManage/'
addpath 'CMCs/'
addpath 'Tools/'
% if you find this code useful in your research, please kindly cite our paper as,
% Ruopei Guo, Chun-Guang Li, Yonghua Li and Jiaru Lin,
% Density-Adaptive Kernel based Re-Ranking for Person Re-Identification, ICPR, 2018.


%% configuraiton of datasets. 
% 1 -- VIPeR,  2 -- CUHK01(M=1),  3 -- CUHK01(M=2),  4 -- PRID450s, 
% 5 -- GRID,  6 -- CUHK03(labeled),  7 -- CUHK03(detected)
sys.database = 1; 
config;

%% configuraiton of features.
feature_name = 4; % feature_name: 1--ELF6, 2--LOMO, 3--GOG, 4--Fusion, 5--FusionAll

%% configuraiton of metrics.
metric = 2; %metric: 1--Euclidean, 2--XQDA

%% setting of searching optima DAKRs
numRanks =95;
CMCs_kNN = zeros( sys.setnum, numRanks );
start = 1;
num_k = 95;
length = num_k - start+1;
CMCs_bi_DAKR_optima = zeros( numRanks,length,sys.setnum);
CMCs_inv_DAKR_optima = zeros( numRanks,length,sys.setnum);
CMCs_bi_DAKR_additive = zeros( numRanks,length,sys.setnum);
CMCs_bi_DAKR_multiple = zeros( numRanks,length,sys.setnum);
W = cell(1,sys.setnum);
M = cell(1,sys.setnum);

%% setting of searching optima kINN kRNN
CMCs_kINN = zeros( numRanks,length,sys.setnum);
CMCs_kRNN = zeros( numRanks,length,sys.setnum);

%% setting of searching optima re-ranking
num_k1 = 35;
num_k2 = 35;
num_lambda = 19;
CMCs_re_search = zeros( numRanks,num_k1,num_k2,num_lambda,sys.setnum );



%% default setting of DAKRs
default_k = 30;
CMCs_bi_DAKR = zeros( sys.setnum, numRanks );
CMCs_inv_DAKR = zeros( sys.setnum, numRanks );
time_of_bi_DAKR = zeros(1,sys.setnum);
time_of_inv_DAKR = zeros(1,sys.setnum);

%% setting of optima re-ranking (example in VIPeR-Fusion-XQDA)
k1 = 19;
k2 = 29;
lambda = 0.95;
CMCs_re = zeros( sys.setnum,numRanks );
time_of_re_ranking = zeros(1,sys.setnum);


for set = 1:sys.setnum
    
    fprintf('----------------------------------------------------------------------------------------------------\n');
    fprintf('set = %d \n', set);
    fprintf('----------------------------------------------------------------------------------------------------\n');

    
   %% Training data
    tot = 1;
    load_Data
    disp_information
    
    if  metric == 2 && sys.database ~= 6 && sys.database ~= 7
        % train XQDA metric learning
        camIDs = traincamIDs_set{set};
        probX = feature(camIDs == 1, :);
        galX = feature(camIDs == 2, :);
        labels = trainlabels_set{set};
        probLabels = labels(camIDs == 1);
        galLabels = labels(camIDs == 2);
            
        [W{set}, M{set}, inCov, exCov] = XQDA(galX, probX, galLabels, probLabels);
        clear camIDs probX galX probX galLabels probLabels X Y 
    end
    

    %% Test data
    tot = 2;
    load_Data

    % apply XQDA metric learning
    camIDs = testcamIDs_set{set};
    probX = feature(camIDs == 1, :);
    galX = feature(camIDs == 2, :);
    labels = testlabels_set{set};
    labelsPr = labels(camIDs == 1);
    labelsGa = labels(camIDs == 2);
    
    if sys.database ~= 3
        % single shot matching
        if metric == 2
            % getting kNN baseline
            dist_XX = MahDist(M{set}, galX * W{set});
            scores = MahDist(M{set}, galX * W{set}, probX * W{set});
            CMC = EvalCMC( -scores, labelsGa, labelsPr, numRanks )*100;
            CMCs_kNN(set, :) = CMC(1:numRanks);

            % getting kINN and kRNN baseline
            [ CMC_rev_kNN,CMC_reciprocal_kNN]= find_optima_of_twoBaselines( galX, probX, M{set}, W{set}, start,num_k, labelsGa, labelsPr, numRanks);
             CMCs_kINN(:,:,set) = CMC_rev_kNN;
             CMCs_kRNN(:,:,set) = CMC_reciprocal_kNN;             

             % getting optima DAKRs
            [ CMC_adakNN,CMC_unikNN,CMC_additive,CMC_multiple]= find_optima_of_two_DAKR_methods( galX, probX, M{set}, W{set}, num_k, labelsGa, labelsPr, numRanks);    
            CMCs_bi_DAKR_optima(:,:,set) = CMC_adakNN;
            CMCs_inv_DAKR_optima(:,:,set) = CMC_unikNN;
            CMCs_bi_DAKR_additive(:,:,set) = CMC_additive;
            CMCs_bi_DAKR_multiple(:,:,set) = CMC_multiple;

%             % getting optima re_ranking(very time consuming!)
%             [CMCs] = find_optima_re_ranking(galX, probX, M{set}, W{set}, num_k1, num_k2, num_lambda,labelsGa, labelsPr, numRanks);
%             CMCs_re_search(:,:,:,:,set) = CMCs;
            
          %% show example of time consumed in VIPeR-Fusion-XQDA
            tic;
            [ dist_bi_DAKR ]= bi_DAKR( galX, probX, M{set}, W{set}, default_k);
            time_of_bi_DAKR(set) = toc;
            CMC = EvalCMC( -dist_bi_DAKR, labelsGa, labelsPr, numRanks )*100;
            CMCs_bi_DAKR(set, :) = CMC(1:numRanks);
            
            tic;
            [ dist_inv_DAKR]= inv_DAKR( galX, probX, M{set}, W{set}, default_k);
            time_of_inv_DAKR(set) = toc;
            CMC = EvalCMC( -dist_inv_DAKR, labelsGa, labelsPr, numRanks )*100;
            CMCs_inv_DAKR(set, :) = CMC(1:numRanks);
            
            query_num = size(probX, 1);
            tic;
            dist_eu_re = re_ranking( [probX; galX], M{set}, W{set}, query_num, k1, k2, lambda);
            time_of_re_ranking(set) = toc;
            CMC  = EvalCMC( -dist_eu_re, labelsGa, labelsPr, numRanks )*100;
            CMCs_re(set, :) = CMC(1:numRanks);
                      

        else
            my_pdist2 = @(A, B) sqrt( bsxfun(@plus, sum(A.^2, 2), sum(B.^2, 2)') - 2*(A*B'));
            dist_eu = my_pdist2(galX, probX);
            CMC  = EvalCMC( -dist_eu, labelsGa, labelsPr, numRanks )*100;
            CMCs_kNN(set, :) = CMC(1:numRanks);

            [ CMC_rev_kNN,CMC_reciprocal_kNN]= find_optima_of_twoBaselines( galX, probX, 1, 1, start,num_k, labelsGa, labelsPr, numRanks);
             CMCs_kINN(:,:,set) = CMC_rev_kNN;
             CMCs_kRNN(:,:,set) = CMC_reciprocal_kNN;

            [ CMC_adakNN,CMC_unikNN,CMC_additive,CMC_multiple]= find_optima_of_two_DAKR_methods( galX, probX, 1, 1, num_k, labelsGa, labelsPr, numRanks);    
            CMCs_bi_DAKR_optima(:,:,set) = CMC_adakNN;
            CMCs_inv_DAKR_optima(:,:,set) = CMC_unikNN;
            CMCs_bi_DAKR_additive(:,:,set) = CMC_additive;
            CMCs_bi_DAKR_multiple(:,:,set) = CMC_multiple;
        end
       
        
        
    else
        % multishot matching for CUHK01
        probX1 = probX(1:2:size(probX, 1), :);
        probX2 = probX(2:2:size(probX, 1), :);
        galX1 = galX(1:2:size(galX, 1), :);
        galX2 = galX(2:2:size(galX, 1), :);

        labelsPr1 = labelsPr(1:2:size(probX, 1), 1);
        labelsPr2 = labelsPr(2:2:size(probX, 1), 1);
        labelsGa1 = labelsGa(1:2:size(galX, 1), 1);
        labelsGa2 = labelsGa(2:2:size(galX, 1), 1);
        scores1 = MahDist(XQDAresult.M, galX1 * XQDAresult.W, probX1 * XQDAresult.W)';
        scores2 = MahDist(XQDAresult.M, galX2 * XQDAresult.W, probX1 * XQDAresult.W)';
        scores3 = MahDist(XQDAresult.M, galX1 * XQDAresult.W, probX2 * XQDAresult.W)';
        scores4 = MahDist(XQDAresult.M, galX2 * XQDAresult.W, probX2 * XQDAresult.W)';

        scores = scores1 + scores2 + scores3 + scores4;

        CMC = zeros( numel(labelsGa1), 1);
        for p=1:numel(labelsPr1)
            score = scores(p, :);
            [sortscore, ind] = sort(score, 'ascend');

            correctind = find( labelsGa1(ind) == labelsPr1(p));
            CMC(correctind:end) = CMC(correctind:end) + 1;
        end
        CMC = 100.*CMC/numel(labelsPr1);
        CMCs(set, :) = CMC;
    end
       
    fprintf(' Rank1,  Rank5, Rank10, Rank15, Rank20\n');
    fprintf('%5.2f%%, %5.2f%%, %5.2f%%, %5.2f%%, %5.2f%%\n\n', CMCs_kNN(set, [1,5,10,15,20]));
  
    clear camIDs probX galX probX galLabels probLabels options XQDAresult    
end

disp('****************** show all the final results ******************');
CMC = mean( squeeze(CMCs_kNN(1:sys.setnum , :)), 1);
fprintf('Rank1,  Rank5, Rank10, Rank15, Rank20 (kNN)\n');
fprintf('%5.2f%%, %5.2f%%, %5.2f%%, %5.2f%%, %5.2f%%\n\n', CMC( [1,5,10,15,20]));

[CMC_kINN_optima,num_k_kINN_optima] = find_opima_CMC(CMCs_kINN);
fprintf('Rank1,  Rank5, Rank10, Rank15, Rank20 (optima kINN)\n');
fprintf('%5.2f%%, %5.2f%%, %5.2f%%, %5.2f%%, %5.2f%%\n\n', CMC_kINN_optima( [1,5,10,15,20]));

[CMC_kRNN_optima,num_k_kRNN_optima] = find_opima_CMC(CMCs_kRNN);
fprintf('Rank1,  Rank5, Rank10, Rank15, Rank20 (optima kRNN)\n');
fprintf('%5.2f%%, %5.2f%%, %5.2f%%, %5.2f%%, %5.2f%%\n\n', CMC_kRNN_optima( [1,5,10,15,20]));

[CMC_inv_optima,num_k_inv_optima] = find_opima_CMC(CMCs_inv_DAKR_optima);
fprintf('Rank1,  Rank5, Rank10, Rank15, Rank20 (optima uni_DAKR)\n');
fprintf('%5.2f%%, %5.2f%%, %5.2f%%, %5.2f%%, %5.2f%%\n\n', CMC_inv_optima( [1,5,10,15,20]));

[CMC_bi_optima,num_k_bi_optima] = find_opima_CMC(CMCs_bi_DAKR_optima);
fprintf('Rank1,  Rank5, Rank10, Rank15, Rank20 (optima bi_DAKR)\n');
fprintf('%5.2f%%, %5.2f%%, %5.2f%%, %5.2f%%, %5.2f%%\n\n', CMC_bi_optima( [1,5,10,15,20]));

[CMC_bi_additive_optima,num_k_bi_additive_optima] = find_opima_CMC(CMCs_bi_DAKR_additive);
fprintf('Rank1,  Rank5, Rank10, Rank15, Rank20 (optima bi_DAKR_additive)\n');
fprintf('%5.2f%%, %5.2f%%, %5.2f%%, %5.2f%%, %5.2f%%\n\n', CMC_bi_additive_optima( [1,5,10,15,20]));

[CMC_bi_multiple_optima,num_k_bi_multiple_optima] = find_opima_CMC(CMCs_bi_DAKR_multiple);
fprintf('Rank1,  Rank5, Rank10, Rank15, Rank20 (optima bi_DAKR_multiple)\n');
fprintf('%5.2f%%, %5.2f%%, %5.2f%%, %5.2f%%, %5.2f%%\n\n', CMC_bi_multiple_optima( [1,5,10,15,20]));

% [CMC_re_ranking,num_k_re_ranking_optima] = find_opima_CMC(CMCs_re_search);
% fprintf('Rank1,  Rank5, Rank10, Rank15, Rank20 (optima re_ranking)\n');
% fprintf('%5.2f%%, %5.2f%%, %5.2f%%, %5.2f%%, %5.2f%%\n\n', CMC_re_ranking( [1,5,10,15,20]));

disp('********* time cost(example in VIPeR-Fusion-XQDA ) *********');
fprintf('inv_DAKR,  inv_DAKR, re_ranking \n');
fprintf('%6.2f s, %6.2f s, %6.2f s \n\n', mean(time_of_inv_DAKR),mean(time_of_bi_DAKR),mean(time_of_re_ranking));





