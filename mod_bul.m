function mod_bul(yeni_veriler)
sutun = size(yeni_veriler,2);
fprintf('\n');
for i=1:sutun
    clmn = yeni_veriler(:,i);
    uniq_veriler = unique(clmn);
    sayi = size(uniq_veriler,1);
    uniq_veriler = [uniq_veriler zeros(sayi,1)];
    for j=1:sayi
        deger = uniq_veriler(j,1);
        frekanslar = yeni_veriler(:,i) == deger; 
        uniq_veriler(j,2)=sum(frekanslar); 
    end
    maxFrekanslar=max(uniq_veriler(:,2));
    ModIndexler=find(uniq_veriler(:,2) == maxFrekanslar);
    disp(string(i)+'.sutunun modlari:');
    for k=1:size(ModIndexler,1)
        fprintf( 'Mod: %d \n',uniq_veriler(ModIndexler(k,1),1))
    end
end
fprintf('\n');