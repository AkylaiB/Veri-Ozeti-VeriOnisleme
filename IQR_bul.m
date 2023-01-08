function IQR_bul(yeni_veriler)
n = size(yeni_veriler,1);
fprintf('\n');
for i=1:size(yeni_veriler,2)
    clmn = sort(yeni_veriler(:,i));
    indexQ1 = (25/100)*(n+1);
    if mod(indexQ1,1)>0
        index1 = floor(indexQ1);
        index2 = ceil(indexQ1);
        Q1 = (clmn(index1,1)+clmn(index2,1))/2;
    else
        Q1 = clmn(indexQ1,1);
    end
    indexQ3 = (75/100)*(n+1);
    if mod(indexQ3,1)>0
        index1 = floor(indexQ3);
        index2 = ceil(indexQ3);
        Q3 = (clmn(index1,1)+clmn(index2,1))/2;
    else
        Q3 = clmn(indexQ3,1);
    end
    IQR = Q3-Q1;
    disp(string(i)+'.sutunun IQR = '+string(IQR))
end
fprintf('\n');