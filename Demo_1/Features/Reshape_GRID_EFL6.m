load qmul_grid_lomo

number = size(descriptors,2);
GRID_LOMO = zeros(number,size(descriptors,1));

idx = 1;
ind_o = 251;
for i = 1:number
    if i <= 500
        if rem(i,2) == 0
           GRID_LOMO(idx,:) = descriptors(:,i)';
           idx = idx +1;
        else
           GRID_LOMO(ind_o,:) = descriptors(:,i)';
           ind_o = ind_o +1;
        end
    else
        GRID_LOMO(i,:) = descriptors(:,i)';
    end
end

save('GRID_LOMO.mat','GRID_LOMO')
        
        