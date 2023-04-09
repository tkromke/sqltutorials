select Artikelnr,
    artikelname,
    mindestbestand,
    bestellteeinheiten,
    lagerbestand
from artikel
where Lagerbestand + BestellteEinheiten < mindestbestand