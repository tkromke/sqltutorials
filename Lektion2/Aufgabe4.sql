select sum(einwohner) Einwohner_Europa, sum(bip) BIP_Europa
from cia
where region = "Europa"