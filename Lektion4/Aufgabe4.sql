select region,
    sum(einwohner) Einwohnerzahl,
    sum(Fläche) Gesamtfläche
from cia
group by region
order by 2 desc