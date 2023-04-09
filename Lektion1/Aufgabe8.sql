select name, round(bip/einwohner,2) BIP_Suedamerika
from cia
where einwohner > 200000000
order by 2 DESC