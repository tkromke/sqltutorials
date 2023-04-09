select region,
    count(name) anzahl_laender
from cia
group by region