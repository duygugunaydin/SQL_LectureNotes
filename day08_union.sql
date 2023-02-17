use sys;
-- ====================== UNION ======================
/*
    Iki farkli sorgulamanin sonucunu birlestiren islemdir.
    Iki veya daha fazla Sorgu ifadesinin sonuc kumelerini 
    birlestirerek tek bir sonuc kumesi olusturur.
    2.sorgunun sonuna ORDER BY komutunu kullanirsaniz 
    tum tabloyu istediginiz siralamaya gore siralar.
   
    NOT: Secilen Field SAYISI ve DATA TYPEâ€™i ayni olmalidir.
    
    Syntax:
    ----------
    SELECT sutun_adi,sutun_adi2, .. FROM tablo_adi1
    UNION
    SELECT sutun_adi1, sutun_adi2, .. FROM tablo_adi2;
    
    NOT: UNION operatoru SADECE benzersiz degerleri alir. 
    Benzer verileri almak iÃ§in UNION ALL kullanilir.
======================================================*/
CREATE TABLE personel(
id int,
isim varchar(50),
sehir varchar(50),
maas int,
sirket varchar(20)
);

INSERT INTO personel VALUES(123456789, 'Ali Yilmaz', 'Istanbul', 5500, 'Honda');
INSERT INTO personel VALUES(234567890, 'Veli Sahin', 'Istanbul', 4500, 'Toyota');
INSERT INTO personel VALUES(345678901, 'Mehmet Ozturk', 'Ankara', 3500,'Honda');
INSERT INTO personel VALUES(456789012, 'Mehmet Ozturk', 'Izmir', 6000, 'Ford');
INSERT INTO personel VALUES(567890123, 'Mehmet Ozturk', 'Ankara', 7000, 'Tofas');
INSERT INTO personel VALUES(456715012, 'Veli Sahin', 'Ankara', 4500, 'Ford');
INSERT INTO personel VALUES(123456710, 'Hatice Sahin', 'Bursa', 4500, 'Honda');
INSERT INTO personel VALUES(345678902, 'Mehmet Ozturk', 'Izmir', 3500,'Honda');

select * from personel;

-- 1) Honda ve Tofas'ta calisan benzersiz isimdeki personelleri listeleyin
select *
from personel
where sirket = 'Honda'
UNION
select *
from personel
where sirket = 'Tofas';

-- eski yol;
select *
from personel
where sirket in ('Tofas','Honda');

-- 2) Honda, Ford ve Tofas'ta calisan benzersiz isimdeki personelleri listeleyin
select isim
from personel
where sirket = 'Honda'
union
select isim
from personel
where sirket = 'Tofas'
union
select isim
from personel
where sirket = 'Ford';












