select v.firma
from bestellung b
    join versandfirma v on v.FirmenNr = b.FirmenNr
where b.bestellnr = 10266