clear;clc
addpath 'XQDA/'
addpath 'GOG/'
addpath 'Features/'
addpath 'DB/'
addpath 'DataManage/'
addpath 'CMCs/'
addpath 'Tools/'


rank = [1,5,10,20];

for i = 1:4
    r = rank(i) ;
    n = 1;
    load GRID_ELF6_Euc_k_bandwidth.mat
    kNN = CMC_eu(r)*ones(1,95);
    UnikNN = meanCms_unikNN(r,1:95);
    BikNN = meanCms_ad(r,1:95);
    additive = meanCms_additive(r,1:95);
    multiple = meanCms_multiple(r,1:95);

    UnikNN_r(n,:) = UnikNN - kNN;
    BikNN_r(n,:) = BikNN - kNN;
    additive_r(n,:) = additive - kNN;
    multiple_r(n,:) = multiple - kNN;


    load GRID_ELF6_XQDA_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    UnikNN = meanCms_unikNN(r,1:95);
    BikNN = meanCms_ad(r,1:95);
    additive = meanCms_additive(r,1:95);
    multiple = meanCms_multiple(r,1:95);

    n = 2;
    UnikNN_r(n,:) = UnikNN - kNN;
    BikNN_r(n,:) = BikNN - kNN;
    additive_r(n,:) = additive - kNN;
    multiple_r(n,:) = multiple - kNN;


    load GRID_LOMO_Euc_k_bandwidth.mat
    kNN = CMC_eu(r)*ones(1,95);
    UnikNN = meanCms_unikNN(r,1:95);
    BikNN = meanCms_ad(r,1:95);
    additive = meanCms_additive(r,1:95);
    multiple = meanCms_multiple(r,1:95);

    n = 3;
    UnikNN_r(n,:) = UnikNN - kNN;
    BikNN_r(n,:) = BikNN - kNN;
    additive_r(n,:) = additive - kNN;
    multiple_r(n,:) = multiple - kNN;


    load GRID_LOMO_XQDA_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    UnikNN = meanCms_unikNN(r,1:95);
    BikNN = meanCms_ad(r,1:95);
    additive = meanCms_additive(r,1:95);
    multiple = meanCms_multiple(r,1:95);

    n = 4;
    UnikNN_r(n,:) = UnikNN - kNN;
    BikNN_r(n,:) = BikNN - kNN;
    additive_r(n,:) = additive - kNN;
    multiple_r(n,:) = multiple - kNN;


    load GRID_GOG_Euc_k_bandwidth.mat
    kNN = CMC_eu(r)*ones(1,95);
    UnikNN = meanCms_unikNN(r,1:95);
    BikNN = meanCms_ad(r,1:95);
    additive = meanCms_additive(r,1:95);
    multiple = meanCms_multiple(r,1:95);

    n = 5;
    UnikNN_r(n,:) = UnikNN - kNN;
    BikNN_r(n,:) = BikNN - kNN;
    additive_r(n,:) = additive - kNN;
    multiple_r(n,:) = multiple - kNN;


    load GRID_GOG_XQDA_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    UnikNN = meanCms_unikNN(r,1:95);
    BikNN = meanCms_ad(r,1:95);
    additive = meanCms_additive(r,1:95);
    multiple = meanCms_multiple(r,1:95);

    n = 6;
    UnikNN_r(n,:) = UnikNN - kNN;
    BikNN_r(n,:) = BikNN - kNN;
    additive_r(n,:) = additive - kNN;
    multiple_r(n,:) = multiple - kNN;


    load GRID_Fusion_Euc_k_bandwidth.mat
    kNN = CMC_eu(r)*ones(1,95);
    UnikNN = meanCms_unikNN(r,1:95);
    BikNN = meanCms_ad(r,1:95);
    additive = meanCms_additive(r,1:95);
    multiple = meanCms_multiple(r,1:95);

    n = 7;
    UnikNN_r(n,:) = UnikNN - kNN;
    BikNN_r(n,:) = BikNN - kNN;
    additive_r(n,:) = additive - kNN;
    multiple_r(n,:) = multiple - kNN;


    load GRID_Fusion_XQDA_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    UnikNN = meanCms_unikNN(r,1:95);
    BikNN = meanCms_ad(r,1:95);
    additive = meanCms_additive(r,1:95);
    multiple = meanCms_multiple(r,1:95);

    n = 8;
    UnikNN_r(n,:) = UnikNN - kNN;
    BikNN_r(n,:) = BikNN - kNN;
    additive_r(n,:) = additive - kNN;
    multiple_r(n,:) = multiple - kNN;


    load GRID_FusionAll_Euc_k_bandwidth.mat
    kNN = CMC_eu(r)*ones(1,95);
    UnikNN = meanCms_unikNN(r,1:95);
    BikNN = meanCms_ad(r,1:95);
    additive = meanCms_additive(r,1:95);
    multiple = meanCms_multiple(r,1:95);

    n = 9;
    UnikNN_r(n,:) = UnikNN - kNN;
    BikNN_r(n,:) = BikNN - kNN;
    additive_r(n,:) = additive - kNN;
    multiple_r(n,:) = multiple - kNN;


    load GRID_FusionAll_XQDA_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    UnikNN = meanCms_unikNN(r,1:95);
    BikNN = meanCms_ad(r,1:95);
    additive = meanCms_additive(r,1:95);
    multiple = meanCms_multiple(r,1:95);

    n = 10;
    UnikNN_r(n,:) = UnikNN - kNN;
    BikNN_r(n,:) = BikNN - kNN;
    additive_r(n,:) = additive - kNN;
    multiple_r(n,:) = multiple - kNN;


    load prid450s_LOMO_XQDA_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    UnikNN = meanCms_unikNN(r,1:95);
    BikNN = meanCms_ad(r,1:95);
    additive = meanCms_additive(r,1:95);
    multiple = meanCms_multiple(r,1:95);

    n = 11;
    UnikNN_r(n,:) = UnikNN - kNN;
    BikNN_r(n,:) = BikNN - kNN;
    additive_r(n,:) = additive - kNN;
    multiple_r(n,:) = multiple - kNN;


    load prid450s_GOG_XQDA_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    UnikNN = meanCms_unikNN(r,1:95);
    BikNN = meanCms_ad(r,1:95);
    additive = meanCms_additive(r,1:95);
    multiple = meanCms_multiple(r,1:95);

    n = 12;
    UnikNN_r(n,:) = UnikNN - kNN;
    BikNN_r(n,:) = BikNN - kNN;
    additive_r(n,:) = additive - kNN;
    multiple_r(n,:) = multiple - kNN;


    load prid450s_Fusion_XQDA_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    UnikNN = meanCms_unikNN(r,1:95);
    BikNN = meanCms_ad(r,1:95);
    additive = meanCms_additive(r,1:95);
    multiple = meanCms_multiple(r,1:95);

    n = 13;
    UnikNN_r(n,:) = UnikNN - kNN;
    BikNN_r(n,:) = BikNN - kNN;
    additive_r(n,:) = additive - kNN;
    multiple_r(n,:) = multiple - kNN;


    load VIPeR_LOMO_XQDA_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    UnikNN = meanCms_unikNN(r,1:95);
    BikNN = meanCms_ad(r,1:95);
    additive = meanCms_additive(r,1:95);
    multiple = meanCms_multiple(r,1:95);

    n = 14;
    UnikNN_r(n,:) = UnikNN - kNN;
    BikNN_r(n,:) = BikNN - kNN;
    additive_r(n,:) = additive - kNN;
    multiple_r(n,:) = multiple - kNN;


    load VIPeR_GOG_XQDA_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    UnikNN = meanCms_unikNN(r,1:95);
    BikNN = meanCms_ad(r,1:95);
    additive = meanCms_additive(r,1:95);
    multiple = meanCms_multiple(r,1:95);

    n = 15;
    UnikNN_r(n,:) = UnikNN - kNN;
    BikNN_r(n,:) = BikNN - kNN;
    additive_r(n,:) = additive - kNN;
    multiple_r(n,:) = multiple - kNN;


    load VIPeR_Fusion_XQDA_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    UnikNN = meanCms_unikNN(r,1:95);
    BikNN = meanCms_ad(r,1:95);
    additive = meanCms_additive(r,1:95);
    multiple = meanCms_multiple(r,1:95);

    n = 16;
    UnikNN_r(n,:) = UnikNN - kNN;
    BikNN_r(n,:) = BikNN - kNN;
    additive_r(n,:) = additive - kNN;
    multiple_r(n,:) = multiple - kNN;


    load CUHK03_LOMO_labeled_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    UnikNN = meanCms_unikNN(1:95,r)';
    BikNN = meanCms_ad(1:95,r)';
    additive = meanCms_additive(1:95,r)';
    multiple = meanCms_multiple(1:95,r)';

    n = 17;
    UnikNN_r(n,:) = UnikNN - kNN;
    BikNN_r(n,:) = BikNN - kNN;
    additive_r(n,:) = additive - kNN;
    multiple_r(n,:) = multiple - kNN;


    load CUHK03_GOG_labeled_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    UnikNN = meanCms_unikNN(1:95,r)';
    BikNN = meanCms_ad(1:95,r)';
    additive = meanCms_additive(1:95,r)';
    multiple = meanCms_multiple(1:95,r)';

    n = 18;
    UnikNN_r(n,:) = UnikNN - kNN;
    BikNN_r(n,:) = BikNN - kNN;
    additive_r(n,:) = additive - kNN;
    multiple_r(n,:) = multiple - kNN;


    load CUHK03_Fusion_labeled_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    UnikNN = meanCms_unikNN(1:95,r)';
    BikNN = meanCms_ad(1:95,r)';
    additive = meanCms_additive(1:95,r)';
    multiple = meanCms_multiple(1:95,r)';

    n = 19;
    UnikNN_r(n,:) = UnikNN - kNN;
    BikNN_r(n,:) = BikNN - kNN;
    additive_r(n,:) = additive - kNN;
    multiple_r(n,:) = multiple - kNN;


    load CUHK03_LOMO_detected_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    UnikNN = meanCms_unikNN(1:95,r)';
    BikNN = meanCms_ad(1:95,r)';
    additive = meanCms_additive(1:95,r)';
    multiple = meanCms_multiple(1:95,r)';

    n = 20;
    UnikNN_r(n,:) = UnikNN - kNN;
    BikNN_r(n,:) = BikNN - kNN;
    additive_r(n,:) = additive - kNN;
    multiple_r(n,:) = multiple - kNN;


    load CUHK03_GOG_detected_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    UnikNN = meanCms_unikNN(1:95,r)';
    BikNN = meanCms_ad(1:95,r)';
    additive = meanCms_additive(1:95,r)';
    multiple = meanCms_multiple(1:95,r)';

    n = 21;
    UnikNN_r(n,:) = UnikNN - kNN;
    BikNN_r(n,:) = BikNN - kNN;
    additive_r(n,:) = additive - kNN;
    multiple_r(n,:) = multiple - kNN;


    load CUHK03_Fusion_detected_k_bandwidth.mat
    kNN = CMC_XQDA(r)*ones(1,95);
    UnikNN = meanCms_unikNN(1:95,r)';
    BikNN = meanCms_ad(1:95,r)';
    additive = meanCms_additive(1:95,r)';
    multiple = meanCms_multiple(1:95,r)';

    n = 22;
    UnikNN_r(n,:) = UnikNN - kNN;
    BikNN_r(n,:) = BikNN - kNN;
    additive_r(n,:) = additive - kNN;
    multiple_r(n,:) = multiple - kNN;


    load new_result_ours_LOMO_Euc_CMC.mat
    n = 23;
    UnikNN_r(n,:) = CMC_unikNN(1:95,r)' - CMC_eu(:,r)*ones(1,95)*100;
    BikNN_r(n,:) = CMC_adakNN(1:95,r)' - CMC_eu(:,r)*ones(1,95)*100;
    additive_r(n,:) = CMC_additive(1:95,r)' - CMC_eu(:,r)*ones(1,95)*100;
    multiple_r(n,:) = CMC_multiple(1:95,r)' - CMC_eu(:,r)*ones(1,95)*100;


    load new_result_ours_LOMO_XQDA_CMC.mat
    n = 24;
    UnikNN_r(n,:) = CMC_unikNN_XQDA(1:95,r)' - CMC_XQDA(:,r)*ones(1,95)*100;
    BikNN_r(n,:) = CMC_adakNN_XQDA(1:95,r)' - CMC_XQDA(:,r)*ones(1,95)*100;
    additive_r(n,:) = CMC_additive_XQDA(1:95,r)' - CMC_XQDA(:,r)*ones(1,95)*100;
    multiple_r(n,:) = CMC_multiple_XQDA(1:95,r)' - CMC_XQDA(:,r)*ones(1,95)*100;


    load new_result_ours_LOMO_baseline.mat
    load new_result_ours_LOMO_kissme_CMC.mat
    n = 25;
    UnikNN_r(n,:) = CMC_unikNN_kissme(1:95,r)' - CMC_kissme(:,r)*ones(1,95)*100;
    BikNN_r(n,:) = CMC_adakNN_kissme(1:95,r)' - CMC_kissme(:,r)*ones(1,95)*100;
    additive_r(n,:) = CMC_additive_kissme(1:95,r)' - CMC_kissme(:,r)*ones(1,95)*100;
    multiple_r(n,:) = CMC_multiple_kissme(1:95,r)' - CMC_kissme(:,r)*ones(1,95)*100;


    load new_result_ours_LOMO_mahal_CMC.mat
    n = 26;
    UnikNN_r(n,:) = CMC_unikNN_mahal(1:95,r)' - CMC_mahal(:,r)*ones(1,95)*100;
    BikNN_r(n,:) = CMC_adakNN_mahal(1:95,r)' - CMC_mahal(:,r)*ones(1,95)*100;
    additive_r(n,:) = CMC_additive_mahal(1:95,r)' - CMC_mahal(:,r)*ones(1,95)*100;
    multiple_r(n,:) = CMC_multiple_mahal(1:95,r)' - CMC_mahal(:,r)*ones(1,95)*100;


    load new_result_ours_C_Euc_CMC.mat
    n = 27;
    UnikNN_r(n,:) = CMC_unikNN(1:95,r)' - CMC_eu(:,r)*ones(1,95)*100;
    BikNN_r(n,:) = CMC_adakNN(1:95,r)' - CMC_eu(:,r)*ones(1,95)*100;
    additive_r(n,:) = CMC_additive(1:95,r)' - CMC_eu(:,r)*ones(1,95)*100;
    multiple_r(n,:) = CMC_multiple(1:95,r)' - CMC_eu(:,r)*ones(1,95)*100;


    load ours_C_baseline.mat
    load ours_C_XQDA_CMC.mat
    n = 28;
    UnikNN_r(n,:) = CMC_unikNN_XQDA(1:95,r)' - CMC_XQDA(:,r)*ones(1,95)*100;
    BikNN_r(n,:) = CMC_adakNN_XQDA(1:95,r)' - CMC_XQDA(:,r)*ones(1,95)*100;
    additive_r(n,:) = CMC_additive_XQDA(1:95,r)' - CMC_XQDA(:,r)*ones(1,95)*100;
    multiple_r(n,:) = CMC_multiple_XQDA(1:95,r)' - CMC_XQDA(:,r)*ones(1,95)*100;


    load ours_C_kissme_CMC.mat
    n = 29;
    UnikNN_r(n,:) = CMC_unikNN_kissme(1:95,r)' - CMC_kissme(:,r)*ones(1,95)*100;
    BikNN_r(n,:) = CMC_adakNN_kissme(1:95,r)' - CMC_kissme(:,r)*ones(1,95)*100;
    additive_r(n,:) = CMC_additive_kissme(1:95,r)' - CMC_kissme(:,r)*ones(1,95)*100;
    multiple_r(n,:) = CMC_multiple_kissme(1:95,r)' - CMC_kissme(:,r)*ones(1,95)*100;


    load ours_C_mahal_CMC.mat
    n = 30;
    UnikNN_r(n,:) = CMC_unikNN_mahal(1:95,r)' - CMC_mahal(:,r)*ones(1,95)*100;
    BikNN_r(n,:) = CMC_adakNN_mahal(1:95,r)' - CMC_mahal(:,r)*ones(1,95)*100;
    additive_r(n,:) = CMC_additive_mahal(1:95,r)' - CMC_mahal(:,r)*ones(1,95)*100;
    multiple_r(n,:) = CMC_multiple_mahal(1:95,r)' - CMC_mahal(:,r)*ones(1,95)*100;


    load ours_R_baseline.mat
    load ours_Euc_R_CMC.mat
    n = 31;
    UnikNN_r(n,:) = CMC_unikNN(1:95,r)' - CMC_eu(:,r)*ones(1,95)*100;
    BikNN_r(n,:) = CMC_adakNN(1:95,r)' - CMC_eu(:,r)*ones(1,95)*100;
    additive_r(n,:) = CMC_additive(1:95,r)' - CMC_eu(:,r)*ones(1,95)*100;
    multiple_r(n,:) = CMC_multiple(1:95,r)' - CMC_eu(:,r)*ones(1,95)*100;


    load ours_R_XQDA_CMC.mat
    n = 32;
    UnikNN_r(n,:) = CMC_unikNN_XQDA(1:95,r)' - CMC_XQDA(:,r)*ones(1,95)*100;
    BikNN_r(n,:) = CMC_adakNN_XQDA(1:95,r)' - CMC_XQDA(:,r)*ones(1,95)*100;
    additive_r(n,:) = CMC_additive_XQDA(1:95,r)' - CMC_XQDA(:,r)*ones(1,95)*100;
    multiple_r(n,:) = CMC_multiple_XQDA(1:95,r)' - CMC_XQDA(:,r)*ones(1,95)*100;


    load ours_R_kissme_CMC.mat
    n = 33;
    UnikNN_r(n,:) = CMC_unikNN_kissme(1:95,r)' - CMC_kissme(:,r)*ones(1,95)*100;
    BikNN_r(n,:) = CMC_adakNN_kissme(1:95,r)' - CMC_kissme(:,r)*ones(1,95)*100;
    additive_r(n,:) = CMC_additive_kissme(1:95,r)' - CMC_kissme(:,r)*ones(1,95)*100;
    multiple_r(n,:) = CMC_multiple_kissme(1:95,r)' - CMC_kissme(:,r)*ones(1,95)*100;

    load ours_R_mahal_CMC.mat
    n = 34;
    UnikNN_r(n,:) = CMC_unikNN_mahal(1:95,r)' - CMC_mahal(:,r)*ones(1,95)*100;
    BikNN_r(n,:) = CMC_adakNN_mahal(1:95,r)' - CMC_mahal(:,r)*ones(1,95)*100;
    additive_r(n,:) = CMC_additive_mahal(1:95,r)' - CMC_mahal(:,r)*ones(1,95)*100;
    multiple_r(n,:) = CMC_multiple_mahal(1:95,r)' - CMC_mahal(:,r)*ones(1,95)*100;


    load new_eu_CMC.mat
    n = 35;
    UnikNN_r(n,:) = CMC_eu_unikNN(1:95,r)' - CMC_eu(:,r)*ones(1,95)*100;
    BikNN_r(n,:) = CMC_eu_ad(1:95,r)' - CMC_eu(:,r)*ones(1,95)*100;
    additive_r(n,:) = CMC_eu_additive(1:95,r)' - CMC_eu(:,r)*ones(1,95)*100;
    multiple_r(n,:) = CMC_eu_multiple(1:95,r)' - CMC_eu(:,r)*ones(1,95)*100;


    load new_XQDA_CMC.mat
    n = 36;
    UnikNN_r(n,:) = CMC_xqda_unikNN(1:95,r)' - CMC_xqda(:,r)*ones(1,95)*100;
    BikNN_r(n,:) = CMC_xqda_ad(1:95,r)' - CMC_xqda(:,r)*ones(1,95)*100;
    additive_r(n,:) = CMC_xqda_additive(1:95,r)' - CMC_xqda(:,r)*ones(1,95)*100;
    multiple_r(n,:) = CMC_xqda_multiple(1:95,r)' - CMC_xqda(:,r)*ones(1,95)*100;


    load new_kissme_CMC.mat
    n = 37;
    UnikNN_r(n,:) = CMC_kissme_unikNN(1:95,r)' - CMC_kissme(:,r)*ones(1,95)*100;
    BikNN_r(n,:) = CMC_kissme_ad(1:95,r)' - CMC_kissme(:,r)*ones(1,95)*100;
    additive_r(n,:) = CMC_kissme_additive(1:95,r)' - CMC_kissme(:,r)*ones(1,95)*100;
    multiple_r(n,:) = CMC_kissme_multiple(1:95,r)' - CMC_kissme(:,r)*ones(1,95)*100;


    load new_mahal_CMC.mat
    n = 38;
    UnikNN_r(n,:) = CMC_mahal_unikNN(1:95,r)' - CMC_mahal(:,r)*ones(1,95)*100;
    BikNN_r(n,:) = CMC_mahal_ad(1:95,r)' - CMC_mahal(:,r)*ones(1,95)*100;
    additive_r(n,:) = CMC_mahal_additive(1:95,r)' - CMC_mahal(:,r)*ones(1,95)*100;
    multiple_r(n,:) = CMC_mahal_multiple(1:95,r)' - CMC_mahal(:,r)*ones(1,95)*100;

    % Index_U = (UnikNN_r>0);
    % UnikNN_r = UnikNN_r.*Index_U;
    % Index_B = (BikNN_r>0);
    % BikNN_r = BikNN_r.*Index_B;
    % Index_a = (additive_r>0);
    % additive_r = additive_r.*Index_a;
    % Index_m = (multiple_r>0);
    % multiple_r = multiple_r.*Index_m;

  
    r_U(i,:) = std(UnikNN_r,0,1);
    r_B(i,:) = std(BikNN_r,0,1);
    r_A(i,:) = std(additive_r,0,1);
    r_M(i,:) = std(multiple_r,0,1);
    m_U(i,:) = mean(UnikNN_r); 
    m_B(i,:) = mean(BikNN_r);
    m_A(i,:) = mean(additive_r);
    m_M(i,:) = mean(multiple_r);
end




x = 1:95;
%subplot(4,2,1)
patch([x fliplr(x)],[m_U(1,:)+r_U(1,:), fliplr(m_U(1,:)-r_U(1,:))],'r', 'facealpha', 0.5, 'EdgeColor','none');  hold on;
plot(x,m_U(1,:),'k-','LineWidth',1.5);hold on;
plot(x,zeros(1,size(x,2)),'k--','LineWidth',1.5);hold on;
%title('increment of rev-DAKR in rank1')
xlabel('k')
ylabel('Average Performance Gain')
axis([0 95 -3 3]);
%grid on;
set(gca, 'LineWidth',2);

%subplot(4,2,2)
patch([x fliplr(x)],[m_B(1,:)+r_B(1,:), fliplr(m_B(1,:)-r_B(1,:))],'b', 'facealpha', 0.4, 'EdgeColor','none');  hold on;
plot(x,m_B(1,:),'k-','LineWidth',3);hold on;
plot(x,zeros(1,size(x,2)),'k--','LineWidth',3);hold on;
%title('increment of bi-DAKR in rank1')
xlabel('k')
ylabel('Average Performance Gain')
%legend('average increment of bi-DAKR in rank1')
axis([0 95 -3 3]);
%grid on;
set(gca, 'LineWidth',2);

subplot(4,2,3)
patch([x fliplr(x)],[m_U(2,:)+r_U(2,:), fliplr(m_U(2,:)-r_U(2,:))],'r', 'facealpha', 0.4, 'EdgeColor','none');  hold on;
plot(x,m_U(2,:),'k-','LineWidth',1.5);hold on;
plot(x,zeros(1,size(x,2)),'k--','LineWidth',1.5);hold on;
%title('increment of rev-DAKR in rank5')
xlabel('k')
ylabel('Average Performance Gain')
axis([0 95 -3 3]);
%grid on;
set(gca, 'LineWidth',2);

subplot(4,2,4)
patch([x fliplr(x)],[m_B(2,:)+r_B(2,:), fliplr(m_B(2,:)-r_B(2,:))],'b', 'facealpha', 0.4, 'EdgeColor','none');  hold on;
plot(x,m_B(2,:),'k-','LineWidth',1.5);hold on;
plot(x,zeros(1,size(x,2)),'k--','LineWidth',1.5);hold on;
%title('increment of bi-DAKR in rank5')
xlabel('k')
ylabel('Average Performance Gain')
axis([0 95 -3 3]);
%grid on;
set(gca, 'LineWidth',2);

subplot(4,2,5)
patch([x fliplr(x)],[m_U(3,:)+r_U(3,:), fliplr(m_U(3,:)-r_U(3,:))],'r', 'facealpha', 0.4, 'EdgeColor','none');  hold on;
plot(x,m_U(3,:),'k-','LineWidth',1.5);hold on;
plot(x,zeros(1,size(x,2)),'k--','LineWidth',1.5);hold on;
xlabel('k')
ylabel('Average Performance Gain')
axis([0 95 -3 3]);
grid on;
set(gca, 'LineWidth',2);

subplot(4,2,6)
patch([x fliplr(x)],[m_B(3,:)+r_B(3,:), fliplr(m_B(3,:)-r_B(3,:))],'b', 'facealpha', 0.4, 'EdgeColor','none');  hold on;
plot(x,m_B(3,:),'k-','LineWidth',1.5);hold on;
plot(x,zeros(1,size(x,2)),'k--','LineWidth',1.5);hold on;
%title('increment of bi-DAKR in rank10')
xlabel('k')
ylabel('Average Performance Gain')
axis([0 95 -3 3]);
grid on;
set(gca, 'LineWidth',2);

subplot(4,2,7)
patch([x fliplr(x)],[m_U(4,:)+r_U(4,:), fliplr(m_U(4,:)-r_U(4,:))],'r', 'facealpha', 0.4, 'EdgeColor','none');  hold on;
plot(x,m_U(4,:),'k-','LineWidth',1.5);hold on;
plot(x,zeros(1,size(x,2)),'k--','LineWidth',1.5);hold on;
%title('increment of rev-DAKR in rank20')
xlabel('k')
ylabel('Average Performance Gain')
axis([0 95 -3 3]);
grid on;
set(gca, 'LineWidth',2);

subplot(4,2,8)
patch([x fliplr(x)],[m_B(4,:)+r_B(4,:), fliplr(m_B(4,:)-r_B(4,:))],'b', 'facealpha', 0.4, 'EdgeColor','none');  hold on;
plot(x,m_B(4,:),'k-','LineWidth',1.5);hold on;
plot(x,zeros(1,size(x,2)),'k--','LineWidth',1.5);hold on;
%title('increment of bi-DAKR in rank20')
xlabel('k')
ylabel('Average Performance Gain')
axis([0 95 -3 3]);
grid on;
set(gca, 'LineWidth',2);



