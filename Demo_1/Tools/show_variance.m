clear;clc

addpath 'XQDA/'
addpath 'GOG/'
addpath 'Features/'
addpath 'DB/'
addpath 'DataManage/'
addpath 'CMCs/'
addpath 'Results/'


rank = [1,5,10,20];
numRanks =95;
for i = 1:4
    r = rank(i) ;
    load GRID_ELF6_Euc_k_bandwidth.mat
    kNN = CMC_eu(r)*ones(1,95);
    inv_DAKR = meanCms_unikNN(r,1:95);
    bi_DAKR = meanCms_ad(r,1:95);
    n = 1;
    var_of_inv_DAKR(n,:) = inv_DAKR - kNN;
    var_of_bi_DAKR(n,:) = bi_DAKR - kNN;



    load GRID_ELF6_XQDA_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    inv_DAKR = meanCms_unikNN(r,1:95);
    bi_DAKR = meanCms_ad(r,1:95);
    n = 2;
    var_of_inv_DAKR(n,:) = inv_DAKR - kNN;
    var_of_bi_DAKR(n,:) = bi_DAKR - kNN;



    load GRID_LOMO_Euc_k_bandwidth.mat
    kNN = CMC_eu(r)*ones(1,95);
    inv_DAKR = meanCms_unikNN(r,1:95);
    bi_DAKR = meanCms_ad(r,1:95);
    n = 3;
    var_of_inv_DAKR(n,:) = inv_DAKR - kNN;
    var_of_bi_DAKR(n,:) = bi_DAKR - kNN;


    load GRID_LOMO_XQDA_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    inv_DAKR = meanCms_unikNN(r,1:95);
    bi_DAKR = meanCms_ad(r,1:95);
    n = 4;
    var_of_inv_DAKR(n,:) = inv_DAKR - kNN;
    var_of_bi_DAKR(n,:) = bi_DAKR - kNN;


    load GRID_GOG_Euc_k_bandwidth.mat
    kNN = CMC_eu(r)*ones(1,95);
    inv_DAKR = meanCms_unikNN(r,1:95);
    bi_DAKR = meanCms_ad(r,1:95);
    n = 5;
    var_of_inv_DAKR(n,:) = inv_DAKR - kNN;
    var_of_bi_DAKR(n,:) = bi_DAKR - kNN;


    load GRID_GOG_XQDA_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    inv_DAKR = meanCms_unikNN(r,1:95);
    bi_DAKR = meanCms_ad(r,1:95);
    n = 6;
    var_of_inv_DAKR(n,:) = inv_DAKR - kNN;
    var_of_bi_DAKR(n,:) = bi_DAKR - kNN;


    load GRID_Fusion_Euc_k_bandwidth.mat
    kNN = CMC_eu(r)*ones(1,95);
    inv_DAKR = meanCms_unikNN(r,1:95);
    bi_DAKR = meanCms_ad(r,1:95);
    n = 7;
    var_of_inv_DAKR(n,:) = inv_DAKR - kNN;
    var_of_bi_DAKR(n,:) = bi_DAKR - kNN;


    load GRID_Fusion_XQDA_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    inv_DAKR = meanCms_unikNN(r,1:95);
    bi_DAKR = meanCms_ad(r,1:95);
    n = 8;
    var_of_inv_DAKR(n,:) = inv_DAKR - kNN;
    var_of_bi_DAKR(n,:) = bi_DAKR - kNN;


    load GRID_FusionAll_Euc_k_bandwidth.mat
    kNN = CMC_eu(r)*ones(1,95);
    inv_DAKR = meanCms_unikNN(r,1:95);
    bi_DAKR = meanCms_ad(r,1:95);
    n = 9;
    var_of_inv_DAKR(n,:) = inv_DAKR - kNN;
    var_of_bi_DAKR(n,:) = bi_DAKR - kNN;



    load GRID_FusionAll_XQDA_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    inv_DAKR = meanCms_unikNN(r,1:95);
    bi_DAKR = meanCms_ad(r,1:95);
    n = 10;
    var_of_inv_DAKR(n,:) = inv_DAKR - kNN;
    var_of_bi_DAKR(n,:) = bi_DAKR - kNN;


    load prid450s_LOMO_XQDA_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    inv_DAKR = meanCms_unikNN(r,1:95);
    bi_DAKR = meanCms_ad(r,1:95);
    n = 11;
    var_of_inv_DAKR(n,:) = inv_DAKR - kNN;
    var_of_bi_DAKR(n,:) = bi_DAKR - kNN;


    load prid450s_GOG_XQDA_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    inv_DAKR = meanCms_unikNN(r,1:95);
    bi_DAKR = meanCms_ad(r,1:95);
    n = 12;
    var_of_inv_DAKR(n,:) = inv_DAKR - kNN;
    var_of_bi_DAKR(n,:) = bi_DAKR - kNN;


    load prid450s_Fusion_XQDA_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    inv_DAKR = meanCms_unikNN(r,1:95);
    bi_DAKR = meanCms_ad(r,1:95);
    n = 13;
    var_of_inv_DAKR(n,:) = inv_DAKR - kNN;
    var_of_bi_DAKR(n,:) = bi_DAKR - kNN;


    load VIPeR_LOMO_XQDA_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    inv_DAKR = meanCms_unikNN(r,1:95);
    bi_DAKR = meanCms_ad(r,1:95);
    n = 14;
    var_of_inv_DAKR(n,:) = inv_DAKR - kNN;
    var_of_bi_DAKR(n,:) = bi_DAKR - kNN;


    load VIPeR_GOG_XQDA_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    inv_DAKR = meanCms_unikNN(r,1:95);
    bi_DAKR = meanCms_ad(r,1:95);
    n = 15;
    var_of_inv_DAKR(n,:) = inv_DAKR - kNN;
    var_of_bi_DAKR(n,:) = bi_DAKR - kNN;


    load VIPeR_Fusion_XQDA_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    inv_DAKR = meanCms_unikNN(r,1:95);
    bi_DAKR = meanCms_ad(r,1:95);
    n = 16;
    var_of_inv_DAKR(n,:) = inv_DAKR - kNN;
    var_of_bi_DAKR(n,:) = bi_DAKR - kNN;


    load CUHK03_LOMO_labeled_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    inv_DAKR = meanCms_unikNN(1:95,r)';
    bi_DAKR = meanCms_ad(1:95,r)';
    n = 17;
    var_of_inv_DAKR(n,:) = inv_DAKR - kNN;
    var_of_bi_DAKR(n,:) = bi_DAKR - kNN;


    load CUHK03_GOG_labeled_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    inv_DAKR = meanCms_unikNN(1:95,r)';
    bi_DAKR = meanCms_ad(1:95,r)';
    n = 18;
    var_of_inv_DAKR(n,:) = inv_DAKR - kNN;
    var_of_bi_DAKR(n,:) = bi_DAKR - kNN;



    load CUHK03_Fusion_labeled_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    inv_DAKR = meanCms_unikNN(1:95,r)';
    bi_DAKR = meanCms_ad(1:95,r)';
    n = 19;
    var_of_inv_DAKR(n,:) = inv_DAKR - kNN;
    var_of_bi_DAKR(n,:) = bi_DAKR - kNN;


    load CUHK03_LOMO_detected_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    inv_DAKR = meanCms_unikNN(1:95,r)';
    bi_DAKR = meanCms_ad(1:95,r)';
    n = 20;
    var_of_inv_DAKR(n,:) = inv_DAKR - kNN;
    var_of_bi_DAKR(n,:) = bi_DAKR - kNN;


    load CUHK03_GOG_detected_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    inv_DAKR = meanCms_unikNN(1:95,r)';
    bi_DAKR = meanCms_ad(1:95,r)';
    n = 21;
    var_of_inv_DAKR(n,:) = inv_DAKR - kNN;
    var_of_bi_DAKR(n,:) = bi_DAKR - kNN;


    load CUHK03_Fusion_detected_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    inv_DAKR = meanCms_unikNN(1:95,r)';
    bi_DAKR = meanCms_ad(1:95,r)';
    n = 22;
    var_of_inv_DAKR(n,:) = inv_DAKR - kNN;
    var_of_bi_DAKR(n,:) = bi_DAKR - kNN;


    load new_result_ours_LOMO_Euc_CMC.mat
    n = 23;
    var_of_inv_DAKR(n,:) = CMC_unikNN(1:95,r)' - CMC_eu(:,r)*ones(1,95)*100;
    var_of_bi_DAKR(n,:) = CMC_adakNN(1:95,r)' - CMC_eu(:,r)*ones(1,95)*100;

    load new_result_ours_LOMO_XQDA_CMC.mat
    n = 24;
    var_of_inv_DAKR(n,:) = CMC_unikNN_XQDA(1:95,r)' - CMC_XQDA(:,r)*ones(1,95)*100;
    var_of_bi_DAKR(n,:) = CMC_adakNN_XQDA(1:95,r)' - CMC_XQDA(:,r)*ones(1,95)*100;


    load new_result_ours_LOMO_baseline.mat
    load new_result_ours_LOMO_kissme_CMC.mat
    n = 25;
    var_of_inv_DAKR(n,:) = CMC_unikNN_kissme(1:95,r)' - CMC_kissme(:,r)*ones(1,95)*100;
    var_of_bi_DAKR(n,:) = CMC_adakNN_kissme(1:95,r)' - CMC_kissme(:,r)*ones(1,95)*100;
   

    load new_result_ours_LOMO_mahal_CMC.mat
    n = 26;
    var_of_inv_DAKR(n,:) = CMC_unikNN_mahal(1:95,r)' - CMC_mahal(:,r)*ones(1,95)*100;
    var_of_bi_DAKR(n,:) = CMC_adakNN_mahal(1:95,r)' - CMC_mahal(:,r)*ones(1,95)*100;
    

    load new_result_ours_C_Euc_CMC.mat
    n = 27;
    var_of_inv_DAKR(n,:) = CMC_unikNN(1:95,r)' - CMC_eu(:,r)*ones(1,95)*100;
    var_of_bi_DAKR(n,:) = CMC_adakNN(1:95,r)' - CMC_eu(:,r)*ones(1,95)*100;
   

    load ours_C_baseline.mat
    load ours_C_XQDA_CMC.mat
    n = 28;
    var_of_inv_DAKR(n,:) = CMC_unikNN_XQDA(1:95,r)' - CMC_XQDA(:,r)*ones(1,95)*100;
    var_of_bi_DAKR(n,:) = CMC_adakNN_XQDA(1:95,r)' - CMC_XQDA(:,r)*ones(1,95)*100;
    

    load ours_C_kissme_CMC.mat
    n = 29;
    var_of_inv_DAKR(n,:) = CMC_unikNN_kissme(1:95,r)' - CMC_kissme(:,r)*ones(1,95)*100;
    var_of_bi_DAKR(n,:) = CMC_adakNN_kissme(1:95,r)' - CMC_kissme(:,r)*ones(1,95)*100;
   

    load ours_C_mahal_CMC.mat
    n = 30;
    var_of_inv_DAKR(n,:) = CMC_unikNN_mahal(1:95,r)' - CMC_mahal(:,r)*ones(1,95)*100;
    var_of_bi_DAKR(n,:) = CMC_adakNN_mahal(1:95,r)' - CMC_mahal(:,r)*ones(1,95)*100;
   

    load ours_R_baseline.mat
    load ours_Euc_R_CMC.mat
    n = 31;
    var_of_inv_DAKR(n,:) = CMC_unikNN(1:95,r)' - CMC_eu(:,r)*ones(1,95)*100;
    var_of_bi_DAKR(n,:) = CMC_adakNN(1:95,r)' - CMC_eu(:,r)*ones(1,95)*100;
    

    load ours_R_XQDA_CMC.mat
    n = 32;
    var_of_inv_DAKR(n,:) = CMC_unikNN_XQDA(1:95,r)' - CMC_XQDA(:,r)*ones(1,95)*100;
    var_of_bi_DAKR(n,:) = CMC_adakNN_XQDA(1:95,r)' - CMC_XQDA(:,r)*ones(1,95)*100;
    

    load ours_R_kissme_CMC.mat
    n = 33;
    var_of_inv_DAKR(n,:) = CMC_unikNN_kissme(1:95,r)' - CMC_kissme(:,r)*ones(1,95)*100;
    var_of_bi_DAKR(n,:) = CMC_adakNN_kissme(1:95,r)' - CMC_kissme(:,r)*ones(1,95)*100;
    
    load ours_R_mahal_CMC.mat
    n = 34;
    var_of_inv_DAKR(n,:) = CMC_unikNN_mahal(1:95,r)' - CMC_mahal(:,r)*ones(1,95)*100;
    var_of_bi_DAKR(n,:) = CMC_adakNN_mahal(1:95,r)' - CMC_mahal(:,r)*ones(1,95)*100;
   
    load new_eu_CMC.mat
    n = 35;
    var_of_inv_DAKR(n,:) = CMC_eu_unikNN(1:95,r)' - CMC_eu(:,r)*ones(1,95)*100;
    var_of_bi_DAKR(n,:) = CMC_eu_ad(1:95,r)' - CMC_eu(:,r)*ones(1,95)*100;
    

    load new_XQDA_CMC.mat
    n = 36;
    var_of_inv_DAKR(n,:) = CMC_xqda_unikNN(1:95,r)' - CMC_xqda(:,r)*ones(1,95)*100;
    var_of_bi_DAKR(n,:) = CMC_xqda_ad(1:95,r)' - CMC_xqda(:,r)*ones(1,95)*100;
    

    load new_kissme_CMC.mat
    n = 37;
    var_of_inv_DAKR(n,:) = CMC_kissme_unikNN(1:95,r)' - CMC_kissme(:,r)*ones(1,95)*100;
    var_of_bi_DAKR(n,:) = CMC_kissme_ad(1:95,r)' - CMC_kissme(:,r)*ones(1,95)*100;
    

    load new_mahal_CMC.mat
    n = 38;
    var_of_inv_DAKR(n,:) = CMC_mahal_unikNN(1:95,r)' - CMC_mahal(:,r)*ones(1,95)*100;
    var_of_bi_DAKR(n,:) = CMC_mahal_ad(1:95,r)' - CMC_mahal(:,r)*ones(1,95)*100;

  
    std_of_inv_DAKR(i,:) = std(var_of_inv_DAKR,0,1);
    std_of_bi_DAKR(i,:) = std(var_of_bi_DAKR,0,1);
    mean_of_inv_DAKR(i,:) = mean(var_of_inv_DAKR); 
    mean_of_bi_DAKR(i,:) = mean(var_of_bi_DAKR);
end




x = 1:95;
subplot(4,2,1)
patch([x fliplr(x)],[mean_of_inv_DAKR(1,:)+std_of_inv_DAKR(1,:), fliplr(mean_of_inv_DAKR(1,:)-std_of_inv_DAKR(1,:))],'r', 'facealpha', 0.5, 'EdgeColor','none');  hold on;
plot(x,mean_of_inv_DAKR(1,:),'k-','LineWidth',1.5);hold on;
plot(x,zeros(1,size(x,2)),'k--','LineWidth',1.5);hold on;
title('inv-DAKR in rank1')
xlabel('k')
ylabel('APG')
axis([0 95 -3 3]);
grid on;
set(gca, 'LineWidth',2);

subplot(4,2,2)
patch([x fliplr(x)],[mean_of_bi_DAKR(1,:)+std_of_bi_DAKR(1,:), fliplr(mean_of_bi_DAKR(1,:)-std_of_bi_DAKR(1,:))],'b', 'facealpha', 0.4, 'EdgeColor','none');  hold on;
plot(x,mean_of_bi_DAKR(1,:),'k-','LineWidth',3);hold on;
plot(x,zeros(1,size(x,2)),'k--','LineWidth',3);hold on;
title('bi-DAKR in rank1')
xlabel('k')
ylabel('APG')
axis([0 95 -3 3]);
grid on;
set(gca, 'LineWidth',2);

subplot(4,2,3)
patch([x fliplr(x)],[mean_of_inv_DAKR(2,:)+std_of_inv_DAKR(2,:), fliplr(mean_of_inv_DAKR(2,:)-std_of_inv_DAKR(2,:))],'r', 'facealpha', 0.4, 'EdgeColor','none');  hold on;
plot(x,mean_of_inv_DAKR(2,:),'k-','LineWidth',1.5);hold on;
plot(x,zeros(1,size(x,2)),'k--','LineWidth',1.5);hold on;
title('inv-DAKR in rank5')
xlabel('k')
ylabel('APG')
axis([0 95 -3 3]);
grid on;
set(gca, 'LineWidth',2);

subplot(4,2,4)
patch([x fliplr(x)],[mean_of_bi_DAKR(2,:)+std_of_bi_DAKR(2,:), fliplr(mean_of_bi_DAKR(2,:)-std_of_bi_DAKR(2,:))],'b', 'facealpha', 0.4, 'EdgeColor','none');  hold on;
plot(x,mean_of_bi_DAKR(2,:),'k-','LineWidth',1.5);hold on;
plot(x,zeros(1,size(x,2)),'k--','LineWidth',1.5);hold on;
title('bi-DAKR in rank5')
xlabel('k')
ylabel('APG')
axis([0 95 -3 3]);
grid on;
set(gca, 'LineWidth',2);

subplot(4,2,5)
patch([x fliplr(x)],[mean_of_inv_DAKR(3,:)+std_of_inv_DAKR(3,:), fliplr(mean_of_inv_DAKR(3,:)-std_of_inv_DAKR(3,:))],'r', 'facealpha', 0.4, 'EdgeColor','none');  hold on;
plot(x,mean_of_inv_DAKR(3,:),'k-','LineWidth',1.5);hold on;
plot(x,zeros(1,size(x,2)),'k--','LineWidth',1.5);hold on;
title('inv-DAKR in rank10')
xlabel('k')
ylabel('APG')
axis([0 95 -3 3]);
grid on;
set(gca, 'LineWidth',2);

subplot(4,2,6)
patch([x fliplr(x)],[mean_of_bi_DAKR(3,:)+std_of_bi_DAKR(3,:), fliplr(mean_of_bi_DAKR(3,:)-std_of_bi_DAKR(3,:))],'b', 'facealpha', 0.4, 'EdgeColor','none');  hold on;
plot(x,mean_of_bi_DAKR(3,:),'k-','LineWidth',1.5);hold on;
plot(x,zeros(1,size(x,2)),'k--','LineWidth',1.5);hold on;
title('bi-DAKR in rank10')
xlabel('k')
ylabel('APG')
axis([0 95 -3 3]);
grid on;
set(gca, 'LineWidth',2);

subplot(4,2,7)
patch([x fliplr(x)],[mean_of_inv_DAKR(4,:)+std_of_inv_DAKR(4,:), fliplr(mean_of_inv_DAKR(4,:)-std_of_inv_DAKR(4,:))],'r', 'facealpha', 0.4, 'EdgeColor','none');  hold on;
plot(x,mean_of_inv_DAKR(4,:),'k-','LineWidth',1.5);hold on;
plot(x,zeros(1,size(x,2)),'k--','LineWidth',1.5);hold on;
title('inv-DAKR in rank20')
xlabel('k')
ylabel('APG')
axis([0 95 -3 3]);
grid on;
set(gca, 'LineWidth',2);

subplot(4,2,8)
patch([x fliplr(x)],[mean_of_bi_DAKR(4,:)+std_of_bi_DAKR(4,:), fliplr(mean_of_bi_DAKR(4,:)-std_of_bi_DAKR(4,:))],'b', 'facealpha', 0.4, 'EdgeColor','none');  hold on;
plot(x,mean_of_bi_DAKR(4,:),'k-','LineWidth',1.5);hold on;
plot(x,zeros(1,size(x,2)),'k--','LineWidth',1.5);hold on;
title('bi-DAKR in rank20')
xlabel('k')
ylabel('APG')
axis([0 95 -3 3]);
grid on;
set(gca, 'LineWidth',2);



