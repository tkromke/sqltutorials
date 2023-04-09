select k.kategoriename
from artikel a
    join kategorie k on k.kategorienr = a.kategorienr
where a.artikelname = "Teatime Chocolate Biscuits"