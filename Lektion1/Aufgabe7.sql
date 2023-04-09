select name, round(einwohner/1000000, 2) BIP_Suedamerika
from cia
where region = "Südamerika"