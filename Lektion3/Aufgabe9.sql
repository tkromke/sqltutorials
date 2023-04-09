select distinct a.artikelnr,
    a.artikelname
from bestellung b
    join bestelldetails bd on bd.bestellnr = b.bestellnr
    join artikel a on a.artikelnr = bd.artikelnr
where b.Empfänger = "Richter Supermarkt"
order by 1