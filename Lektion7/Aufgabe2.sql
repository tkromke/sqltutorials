select count(Bestellnr) bestellungen,
    count(distinct Bestellnr) distinct_bestellungen
from bestellung
where bestelldatum > "1995-12-31"
    and bestelldatum < "1997-01-01"