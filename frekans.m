function frekans(sutun,yeni_veriler)
clmn = yeni_veriler(:,sutun);
uniq_veriler = unique(clmn);
sayi = size(uniq_veriler,1);
uniq_veriler = [uniq_veriler zeros(sayi,1)];
for i=1:sayi
    deger = uniq_veriler(i,1);
    frekanslar = yeni_veriler(:,sutun) == deger; 
    uniq_veriler(i,2)=sum(frekanslar); 
end
bar(uniq_veriler(:,1),uniq_veriler(:,2))

