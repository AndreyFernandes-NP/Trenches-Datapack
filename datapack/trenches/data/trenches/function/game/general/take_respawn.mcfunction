scoreboard players remove @s respawn 1
execute unless score @s respawn matches ..0 run title @s title {"score":{"name":"@s","objective":"respawn"},"bold":true,"color":"red"}

# title @s reset pra tirar o 1 quando o player dar spawn

# Esse sistema é meio falho e dá uma certa vantagem (mesmo que pequena) pra um player, se por exemplo, ele morrer e receber o tempo de respawn no momento que falta 1 tick pra
# função tocar, ele vai de 15 a 14 em MUITO rápido, basicamente salvando 1 segundo de tempo antes de dar respawn (que de maneira competitiva, isso atrapalharia muito).
# Mas de verdade, foda-se, ou é isso, ou eu fazer um workaround pra tentar cobrir essa vantagem, e como isso não vai ter campeonato, ninguém vai ligar pra uma vantagem de 1 segundo