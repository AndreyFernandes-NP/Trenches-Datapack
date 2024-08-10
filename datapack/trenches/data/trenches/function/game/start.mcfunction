#> Títulos e Texto
title @a times 1s 3s 1s
title @a title {"translate":"trenches.announcement.match.start","color":"red","bold":true,"italic":true}

#> Reconfiguração dos Objetivos
scoreboard players set #Match_End value 0
scoreboard players set #Game_Phase phase 0
scoreboard players set #Respawn value 1
scoreboard players set @a[team=!spec] pts 70
scoreboard players set @a pts_bonus 0
scoreboard players set #Points value 1

## Criação do KP
scoreboard objectives remove kp
scoreboard objectives add kp playerKillCount {"translate":"trenches.generic.score.name.kp"}
scoreboard objectives setdisplay sidebar kp

#> Tags
tag @a add ingame
tag @a[team=!spec] add selecting_class

#> Players
clear @a
effect clear @a
gamemode adventure @a[team=!spec]
gamemode spectator @a[team=spec]

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
schedule function trenches:game/timers/respawn 20t
schedule function trenches:game/timers/mine_particles 20t
schedule function trenches:game/general/spawnpoint 5t

#> Teleportar Players
execute as @a[team=red] run function trenches:game/general/tp_to with storage coords red_hub
execute as @a[team=blu] run function trenches:game/general/tp_to with storage coords blue_hub

#> Retroceder opções de Debug
scoreboard players set .debug_Points value 0
scoreboard players set .debug_Respawn value 0