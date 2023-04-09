select name,
    einwohner
from cia
where einwohner > (
        select max(einwohner)
        from cia
        where region like "Südamerika"
    )
order by 2 desc