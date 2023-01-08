veriler = xlsread("mat.xlsx");
mydata = [1,0;3,10;1,0;1,10;3,100;2,10;2,100;3,100;2,0];
while(1==1)
    disp("--------------MENU--------------");
    disp("| 0-Veriler                    |");
    disp("| 1-Eksik Veri Tamamlama       |");%nitelik bazli ort
    disp("| 2-Ortalama Hesabi            |");
    disp("| 3-Medyan Hesabi              |");
    disp("| 4-Mod Hesabi                 |");
    disp("| 5-Frekans Hesabi             |");%grafik
    disp("| 6-IQR Hesabi                 |");
    disp("| 7-Aykiri Degerler            |");%ondalik olcekleme normalizasyonu
    disp("| 8-Bes Say? Ozeti             |");
    disp("| 9-Kutu Grafigi               |");
    disp("| 10-Varyans ve Standart Sapma |");
    disp("| 11-Cikis                     |");
    disp("--------------------------------");
    secim=input('Yapmak istediginiz islem:');  
    if secim==0
        disp(veriler);
    elseif secim==1
        yeni_veriler = eksik_tamamla(veriler);
        fprintf("\nEksik veriler tamamlandiktan sonra:");
        disp(yeni_veriler);
    elseif secim==2
        ortalama(yeni_veriler);
    elseif secim==3
        medyan(yeni_veriler);
    elseif secim==4
        mod_bul(yeni_veriler);
        mod_bul(mydata);
    elseif secim==5
        sutun=input('Islem yapmak istediginiz sutun no:');
        frekans(sutun,yeni_veriler);
    elseif secim==6
        IQR_bul(yeni_veriler);
    elseif secim==7
        aykiri_degerler(yeni_veriler);
    elseif secim==8
        bes_sayi_ozeti(yeni_veriler);
    elseif secim==9
        boxplot(yeni_veriler); title("Bes Sayi Ozeti");
    elseif secim==10
        vr_ve_st_bul(yeni_veriler);
    elseif secim==11
        break;
    else
        disp("0-11 arasinda bir sayi giriniz!");
    end
end