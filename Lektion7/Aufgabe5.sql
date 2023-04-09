select YEAR(b.lieferdatum) business_year,
    sum(bd.Einzelpreis * bd.Anzahl *(1 - Rabatt)) Revenue
from bestellung b
    join bestelldetails bd on bd.bestellnr = b.bestellnr
group by YEAR(b.lieferdatum)