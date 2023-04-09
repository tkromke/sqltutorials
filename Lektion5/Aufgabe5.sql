select name,
    (Einwohner / Fläche) Bevölkerungsdichte
from cia
where (Einwohner / Fläche) > (
        select avg(Einwohner / Fläche)
        from cia
        where region = "Südostasien"
    )
    and region = "Südostasien"
order by 2 DESC