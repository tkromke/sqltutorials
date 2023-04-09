select region,
    sum(einwohner) Einwohnerzahl,
    sum(Fläche) Gesamtfläche
from cia
where lower(region) like "%amerika"
group by region
order by 2 desc