select a.ArtikelNr,
    a.Artikelname,
    l.Firma Lieferantenfirma,
    k.Kategoriename
from artikel a
    join kategorie k on k.kategorienr = a.kategorienr
    join lieferant l on l.lieferantennr = a.lieferantennr