function medyan(yeni_veriler)
satir = size(yeni_veriler,1);
sutun = size(yeni_veriler,2);
fprintf('\n');
for i=1:sutun
    clmn = yeni_veriler(:,i);
    sorted_clmn = sort(clmn);
    if mod(satir,2)==0
        i1 = satir/2;
        i2 = satir/2+1;
        mdn = (sorted_clmn(i1,1)+sorted_clmn(i2,1))/2;
    else
        mdn = sorted_clmn((satir+1)/2,1);
    end
    disp(string(i)+'.sutunun medyani = '+string(mdn))
end
fprintf('\n');
    