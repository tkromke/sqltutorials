select b.Empfänger,
    a.artikelnr,
    a.artikelname,
    bd.anzahl bestellmenge,
    a.lagerbestand,
    a.lagerbestand - bd.anzahl differenz,
    case
        when a.lagerbestand - bd.anzahl >= 0 then "Lagerbestand ausreichend"
        ELSE "Lagerbestand nicht ausreichend"
    END Antwort
from bestellung b
    join bestelldetails bd on bd.bestellnr = b.bestellnr
    join artikel a on a.artikelnr = bd.artikelnr
where b.Empfänger = "Rattlesnake Canyon Grocery"
    and b.bestelldatum = "1998-05-06"