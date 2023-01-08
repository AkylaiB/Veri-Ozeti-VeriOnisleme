function ortalama(yeni_veriler)
satir = size(yeni_veriler,1);
sutun = size(yeni_veriler,2);
fprintf('\n');
for i=1:sutun
    sum=0;
    for j=1:satir
        sum = sum+yeni_veriler(j,i);
    end
    ort = sum/satir;
    disp(string(i)+'.sutunun ortalamasi = '+string(ort))
end
fprintf('\n');