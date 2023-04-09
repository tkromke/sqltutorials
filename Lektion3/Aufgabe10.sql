select b.Empfänger,
    a.artikelnr,
    a.artikelname
from lieferant l
    join artikel a on a.lieferantennr = l.lieferantennr
    join bestelldetails bd on bd.artikelnr = a.artikelnr
    join bestellung b on b.bestellnr = bd.bestellnr
where l.firma = 'Escargots Nouveaux'
order by 1