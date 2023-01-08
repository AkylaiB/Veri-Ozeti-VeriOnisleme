function vr_ve_st_bul(yeni_veriler)
n = size(yeni_veriler,1);
fprintf('\n');
for i=1:size(yeni_veriler,2)
    clmn = yeni_veriler(:,i);
    top = sum(clmn);
    ort = top/n;
    toplam=0;
    for j=1:n
        toplam = toplam+(clmn(j,1)-ort)^2;
    end
    v = toplam/(n-1);
    s = sqrt(v);
    disp(string(i)+".sutunun standart sapmasi: "+string(s));
    disp(string(i)+".sutunun varyansi: "+string(v));
    fprintf('\n');
end
fprintf('\n');

