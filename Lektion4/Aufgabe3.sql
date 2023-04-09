select region,
    sum(einwohner) gesamtbevoelkerung
from cia
group by region
having sum(einwohner) > 100000000