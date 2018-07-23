function [CMC_optima,num_k_optima] = find_opima_CMC(CMCs)

dim = size(CMCs);
length = size(dim,2);

if length == 2
    [CMC,number_of_k] = sort(CMCs,2,'descend');

    CMC_optima = CMC(:,1);
    num_k_optima = number_of_k(:,1);
end

if length == 3
    meanCms = mean( CMCs, 3);
    [CMC,number_of_k] = sort(meanCms,2,'descend');

    CMC_optima = CMC(:,1);
    num_k_optima = number_of_k(:,1);
end

if length == 5
    meanCms = mean( CMCs, 5);
    meanCms = reshape(meanCms,[dim(1),dim(2)*dim(3)*dim(4)]);
    [CMC,number_of_k] = sort(meanCms,2,'descend');

    CMC_optima = CMC(:,1);
    num_k_optima(:,1) = rem(number_of_k(:,1),dim(2));
    num_k_optima(:,2) = ceil(number_of_k(:,1)./dim(2));
    num_k_optima(:,3) = ceil(number_of_k(:,1)./(dim(2)*dim(3))).*0.05;
    temp_optima = (num_k_optima(:,1)==0);
    num_k_optima(:,1) = num_k_optima(:,1)+temp_optima.*dim(2);
    
end