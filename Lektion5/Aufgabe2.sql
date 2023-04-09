select name,
    einwohner
from cia
where einwohner > (
        select sum(einwohner)
        from cia
        where region = "Europa"
    )