select *
from (
        select artikelnr,
            artikelname,
            orders,
            RANK() OVER(
                ORDER BY orders DESC
            ) Rank
        from (
                select a.artikelnr,
                    a.artikelname,
                    sum(bd.anzahl) orders
                from artikel a
                    join bestelldetails bd on bd.artikelnr = a.artikelnr
                group by a.artikelnr,
                    a.artikelname
            ) total_orders
    ) ranked
where rank < 21