select a.ArtikelNr,
    a.Artikelname,
    l.Firma
from artikel a
    join lieferant l on l.lieferantennr = a.lieferantennr