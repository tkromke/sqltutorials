select KonstrukteursWM,
    sum(Team_Punkte) TeamPunkte
from wmtitel
where Saison between 1990 and 1999
group by KonstrukteursWM
order by 2 DESC