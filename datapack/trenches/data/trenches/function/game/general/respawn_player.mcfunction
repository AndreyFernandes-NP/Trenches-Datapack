scoreboard players set @s respawn -1
tag @s remove dead
title @s reset

gamemode adventure @s
tag @s add selecting_class

execute if entity @s[team=red] run function trenches:game/general/tp_to with storage coords red_hub
execute if entity @s[team=blu] run function trenches:game/general/tp_to with storage coords blue_hub