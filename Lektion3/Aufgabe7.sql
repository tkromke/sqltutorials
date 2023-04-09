select count(b.kundencode) kunden_buchanan,
    count(distinct b.kundencode) distinct_kunden_buchanan
from personal p
    join bestellung b on b.personalnr = p.personalnr
where p.nachname = "Buchanan"