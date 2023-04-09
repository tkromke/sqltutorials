select kg.kategoriename,
    sum(bd.Einzelpreis * bd.Anzahl *(1 - Rabatt)) Umsatz
from kategorie kg
    join artikel a on a.kategorienr = kg.kategorienr
    join bestelldetails bd on bd.artikelnr = a.artikelnr
    join bestellung b on b.bestellnr = bd.bestellnr
where kg.kategoriename in ("Getränke", "Gewürze", "Getreideprodukte")
    and bestelldatum like "1997%"
group by kg.kategoriename