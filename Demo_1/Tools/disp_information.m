% generate features

switch feature_name
    case 1
        if metric == 1
           disp('GRID-ELF6-Euc')
        else
           disp('GRID-ELF6-XQDA')
        end
    case 2
        switch sys.database 
            case 1
                if metric == 1
                   disp('VIPer-LOMO-Euc')
                else
                   disp('VIPer-LOMO-XQDA')
                end
            case 4
                if metric == 1
                   disp('prid450s-LOMO-Euc')
                else
                   disp('prid450s-LOMO-XQDA')
                end
            case 5 
                if metric == 1
                   disp('GRID-LOMO-Euc')
                else
                   disp('GRID-LOMO-XQDA')
                end
            case 6
                if metric == 1
                   disp('CUHK03_labeled-LOMO-Euc')
                else
                   disp('CUHK03_labeled-LOMO-XQDA')
                end
            case 7
                if metric == 1
                   disp('CUHK03_detected-LOMO-Euc')
                else
                   disp('CUHK03_detected-LOMO-XQDA')
                end
        end
    case 3
        switch sys.database 
            case 1
                if metric == 1
                   disp('VIPer-GOG-Euc')
                else
                   disp('VIPer-GOG-XQDA')
                end
            case 4
                if metric == 1
                   disp('prid450s-GOG-Euc')
                else
                   disp('prid450s-GOG-XQDA')
                end
            case 5 
                if metric == 1
                   disp('GRID-GOG-Euc')
                else
                   disp('GRID-GOG-XQDA')
                end
            case 6
                if metric == 1
                   disp('CUHK03_labeled-GOG-Euc')
                else
                   disp('CUHK03_labeled-GOG-XQDA')
                end
            case 7
                if metric == 1
                   disp('CUHK03_detected-GOG-Euc')
                else
                   disp('CUHK03_detected-GOG-XQDA')
                end
        end
    case 4
        switch sys.database 
            case 1
                if metric == 1
                   disp('VIPer-Fusion-Euc')
                else
                   disp('VIPer-Fusion-XQDA')
                end
            case 4
                if metric == 1
                   disp('prid450s-Fusion-Euc')
                else
                   disp('prid450s-Fusion-XQDA')
                end
            case 5 
                if metric == 1
                   disp('GRID-Fusion-Euc')
                else
                   disp('GRID-Fusion-XQDA')
                end
            case 6
                if metric == 1
                   disp('CUHK03_labeled-Fusion-Euc')
                else
                   disp('CUHK03_labeled-Fusion-XQDA')
                end
            case 7
                if metric == 1
                   disp('CUHK03_detected-Fusion-Euc')
                else
                   disp('CUHK03_detected-Fusion-XQDA')
                end
        end
    case 5
        if metric == 1
           disp('GRID-FusionAll-Euc')
        else
           disp('GRID-FusionAll-XQDA')
        end
    otherwise
        disp('Error! Please choose right feature!')
end



   
   
   
   
   
   
   
   
 