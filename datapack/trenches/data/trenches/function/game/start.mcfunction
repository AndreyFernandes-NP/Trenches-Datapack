#> Títulos e Texto
title @a times 1s 3s 1s
title @a title {"translate":"trenches.announcement.match.start","color":"red","bold":true,"italic":true}

#> Reconfiguração dos Objetivos
scoreboard players set #Game_Phase phase 0
scoreboard players set @a timer_respawn 20
scoreboard players set @a pts 70
scoreboard players set #Points value 1

## Criação do KP
scoreboard objectives remove kp
scoreboard objectives add kp playerKillCount "Kill Points"
scoreboard objectives setdisplay sidebar kp

#> Players
clear @a
effect clear @a
gamemode adventure @a

#> Mundo
recipe take @a *
advancement revoke @a everything
time set day
weather clear

#> Criar armazenamento de pontos
execute as @a run function trenches:game/technical/arrange_ids {"ftype_id":0}

#> Tocar Timers necessários
function trenches:game/timers/phases
schedule function trenches:game/timers/pts_hub 20t