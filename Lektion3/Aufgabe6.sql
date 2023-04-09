select bd.artikelnr,
    a.artikelname,
    bd.einzelpreis,
    round(bd.einzelpreis * bd.anzahl, 2) Gesamtpreis
from Bestelldetails bd
    join artikel a on a.artikelnr = bd.artikelnr
where bd.bestellnr = 11031