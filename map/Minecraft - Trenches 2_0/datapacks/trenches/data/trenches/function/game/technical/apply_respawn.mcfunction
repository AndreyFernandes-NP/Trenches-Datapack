$scoreboard players set @s respawn $(respawn_timer)
function trenches:game/technical/respawn_display

title @s times 0t 1s 10t
title @s title {"nbt":"displayer","storage":"respawn","bold":true,"color":"red"}