select p.personalnr,
    p.vorname,
    p.nachname
from bestellung b
    join versandfirma v on v.FirmenNr = b.FirmenNr
    join personal p on p.personalnr = b.personalnr
where b.bestellnr = 10266