select region,
    count(name) anzahl_laender
from cia
where einwohner > 10000000
group by region