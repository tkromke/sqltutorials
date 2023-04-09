select sum(bd.Einzelpreis * bd.Anzahl *(1 - Rabatt)) Revenue
from bestellung b
    join bestelldetails bd on bd.bestellnr = b.bestellnr
where lieferdatum like "1997%"