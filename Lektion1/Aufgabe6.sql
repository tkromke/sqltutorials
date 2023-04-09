select name, round(einwohner/1000000, 2) Einwohner_Suedamerika
from cia
where region = "Südamerika"