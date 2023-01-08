function bes_sayi_ozeti(yeni_veriler)
yeni_veriler = sort(yeni_veriler);
n = size(yeni_veriler,1);
sutun = size(yeni_veriler,2);
fprintf('\n');
for i=1:sutun
    fprintf('-----------Column-%d-----------\n',i);
    clmn = yeni_veriler(:,i);
    min_deger = min(clmn);
    disp("Min = "+string(min_deger));
    
    indexQ1 = (25/100)*(n+1);
    if mod(indexQ1,1)>0
        index1 = floor(indexQ1);
        index2 = ceil(indexQ1);
        Q1 = (clmn(index1,1)+clmn(index2,1))/2;
    else
        Q1 = clmn(indexQ1,1);
    end
    disp("Q1 = "+string(Q1));

    if mod(n,2)==0
        i1 = n/2;
        i2 = n/2+1;
        mdn = (clmn(i1,1)+clmn(i2,1))/2;
    else
        mdn = clmn((n+1)/2,1);
    end
    disp("Medyan = "+string(mdn));

    indexQ3 = (75/100)*(n+1);
    if mod(indexQ3,1)>0
        index1 = floor(indexQ3);
        index2 = ceil(indexQ3);
        Q3 = (clmn(index1,1)+clmn(index2,1))/2;
    else
        Q3 = clmn(indexQ3,1);
    end
    disp("Q3 = "+string(Q3));

    max_deger = max(clmn);
    disp("Max = "+string(max_deger));
end
fprintf('\n');



