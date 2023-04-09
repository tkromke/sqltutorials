select fahrerweltmeister,
    sum(wm_punkte)
from wmtitel
group by fahrerweltmeister
order by 2 DESC