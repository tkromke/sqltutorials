select name,
    bip / einwohner
from cia
where region = "Europa"
    and (bip / einwohner) > (
        select bip / einwohner
        from cia
        where name = "Groß-Britannien"
    )
order by 2 DESC