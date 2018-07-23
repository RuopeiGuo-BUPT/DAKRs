% generate features

switch feature_name
    case 1
%         disp('ELF6 is hired')
        load GRID_ELF6.mat
        generate_features
        feature = feature_other;
    case 2
%         disp('LOMO is hired')
        switch sys.database 
            case 1
                load viper_lomo.mat
                meandescriptors = mean( descriptors, 2);
                descriptors = ( descriptors - repmat(meandescriptors, 1,size(descriptors,2))); % Mean removal
                for dnum = 1:size(descriptors, 2)
                     descriptors(:,dnum) = descriptors(:,dnum)./norm(descriptors(:,dnum), 2); % L2 norm normalization
                end
                generate_features
                feature = feature_other;
            case 4
                load prid450s_lomo_default.mat
                generate_features
                feature = feature_other;
            case 5 
                load GRID_LOMO.mat
                generate_features
                feature = feature_other;
            case 6
                load CUHK03_labeled_LOMO_Metric.mat
                load cuhk03_labeled_lomo
                generate_features
                feature = feature_other;
            case 7
                load CUHK03_detected_LOMO_Metric.mat
                load cuhk03_detected_lomo
                generate_features
                feature = feature_other;
        end
    case 3
%         disp('GOG is hired')
        load_features_all % load all GOG features.
        extract_feature_cell_from_all;  % load training data
        apply_normalization; % feature normalization
        conc_feature_cell; % feature concatenation  
        if sys.database == 6
           load CUHK03_labeled_GOG_Metric.mat
        end
        if sys.database == 7
           load CUHK03_detected_GOG_Metric.mat
        end
    case 4
%         disp('Fusion is hired')
        switch sys.database 
            case 1
                load viper_lomo.mat
                generate_features
            case 4
                load prid450s_lomo_default.mat
                generate_features
            case 5 
                load GRID_LOMO.mat
                generate_features
            case 6
                load CUHK03_labeled_Fusion_Metric.mat
                load cuhk03_labeled_lomo
                generate_features
            case 7
                load CUHK03_detected_Fusion_Metric.mat
                load cuhk03_detected_lomo
                generate_features
        end
        load_features_all % load all GOG features.
        extract_feature_cell_from_all;  % load training data
        apply_normalization; % feature normalization
        conc_feature_cell; % feature concatenation  
        feature = [feature,feature_other];
    case 5
%         disp('FusionAll is hired')
        load GRID_ELF6.mat
        for dnum = 1:size(descriptors, 2)
            descriptors(:,dnum) = descriptors(:,dnum)./norm(descriptors(:,dnum), 2); % L2 norm normalization
        end
        generate_features
        feature_ELF6 = feature_other;
        load GRID_LOMO.mat
        generate_features
        feature_LOMO = feature_other;
        load_features_all % load all GOG features.
        extract_feature_cell_from_all;  % load training data
        apply_normalization; % feature normalization
        conc_feature_cell; % feature concatenation
        feature = [feature,feature_ELF6,feature_LOMO];
    otherwise
        disp('Error! Please choose right feature!')
end



   
   
   
   
   
   
   
   
 