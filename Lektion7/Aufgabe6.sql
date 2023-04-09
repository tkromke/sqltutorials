select distinct kg.kategorienr,
    kg.kategoriename,
    k.firma
from kunde k
    join bestellung b on b.kundencode = k.kundencode
    join bestelldetails bd on bd.bestellnr = b.bestellnr
    join artikel a on a.artikelnr = bd.artikelnr
    join kategorie kg on kg.kategorienr = a.kategorienr
where k.firma like 'Eastern Connection'
order by 1