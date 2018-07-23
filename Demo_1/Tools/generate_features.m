% extract feature cells for particular training/test division

if tot == 1
    numimages_train = numel(traininds_set{set});
    feature_other = zeros( numimages_train, size(descriptors, 1));
    for ind = 1:numimages_train
        feature_other(ind,:) = descriptors( :,traininds_set{set}(ind))';
    end
    clear numimages_train;
end

if tot == 2
    numimages_test = numel(testinds_set{set});    
    feature_other = zeros( numimages_test,  size(descriptors, 1));
    for ind = 1:numimages_test
        feature_other(ind,:) = descriptors( :,testinds_set{set}(ind))';
    end   
  
    clear numimages_test;
end

