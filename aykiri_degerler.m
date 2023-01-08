function aykiri_degerler(yeni_veriler)
n = size(yeni_veriler,1);
aykirisiz_veriler = yeni_veriler;
fprintf('\n');
for i=1:size(yeni_veriler,2)
    aykiri = [];
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
    alt_sinir = Q1-1.5*IQR;
    ust_sinir = Q3+1.5*IQR;
    for j=1:n
        if clmn(j,1)>ust_sinir || clmn(j,1)<alt_sinir
            aykiri = [aykiri;clmn(j,1)];
        end
    end
    aykiri = unique(aykiri);
    if isempty(aykiri)==1
        disp(string(i)+'.sutunda aykiri veri yok');
    else
        disp(string(i)+'.sutundaki aykiri veriler:');
        disp(aykiri);
        max_deger = max(abs(yeni_veriler(:,i)));
        l = length(int2str(max_deger));
        aykirisiz_veriler(:,i) = yeni_veriler(:,i)/power(10,l);
    end
end
fprintf("\nAykiri veriler islemek icin 1e\nDevam etmek icin herhangi bir tusa basin\n");
secim=input('Secim:'); 
if(secim==1)
    disp(aykirisiz_veriler);
end