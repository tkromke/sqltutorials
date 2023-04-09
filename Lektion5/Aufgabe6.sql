select name,
    einwohner
from cia
where einwohner > (
        select einwohner
        from cia
        where name = "Kenia"
    )
    and einwohner < (
        select einwohner
        from cia
        where name = "Kanada"
    )
order by 2 desc