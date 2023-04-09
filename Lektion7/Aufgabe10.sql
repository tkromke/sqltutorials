select k.firma,
    sum(bd.Einzelpreis * bd.Anzahl *(1 - Rabatt)) Umsatz
from lieferant l
    join artikel a on a.lieferantennr = l.lieferantennr
    join bestelldetails bd on bd.artikelnr = a.artikelnr
    join bestellung b on b.bestellnr = bd.bestellnr
    join kunde k on k.kundencode = b.kundencode
where l.firma = 'Exotic Liquids'
group by k.firma
having sum(bd.Einzelpreis * bd.Anzahl *(1 - Rabatt)) >= 1000
order by 2 desc