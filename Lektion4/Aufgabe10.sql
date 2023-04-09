SELECT KonstrukteursWM,
    sum(Team_Punkte) TeamPunkte
from wmtitel
where saison > 1994
group by KonstrukteursWM
having sum(Team_Punkte) >= 200
order by 2 DESC