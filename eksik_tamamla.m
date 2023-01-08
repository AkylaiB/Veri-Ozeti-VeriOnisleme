function yeni_veriler = eksik_tamamla(veriler)

yeni_veriler = veriler;
for i=1:size(veriler,2)
    sum=0;
    for j=1:size(veriler,1)
        if ~isnan(veriler(j,i))
            sum = sum + veriler(j,i);
        end
    end
    clmn = ~isnan(veriler(:,i));
    ort = sum/size(clmn,1);
    for k=1:size(veriler,1)
        if isnan(veriler(k,i))
            yeni_veriler(k,i) = ort;
        end
    end
end