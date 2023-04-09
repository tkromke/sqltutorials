select *
from cia
where region in (
        select region
        from cia
        where name in ("Armenien", "Iran")
    )