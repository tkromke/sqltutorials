select k.firma,
    b.bestellnr,
    sum(bd.Einzelpreis * bd.Anzahl *(1 - Rabatt)) + frachtkosten AS rechnungssumme
from bestellung b
    join bestelldetails bd on bd.bestellnr = b.bestellnr
    join kunde k on k.kundencode = b.kundencode
group by k.firma,
    b.bestellnr
order by rechnungssumme