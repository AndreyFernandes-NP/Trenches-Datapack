function trenches:game/technical/respawn_display
scoreboard players remove @s respawn 1

title @s times 0t 1s 10t
execute unless score @s respawn matches ..0 run title @s title ["",{"nbt":"display_int","storage":"respawn","bold":true,"color":"red"},{"text":".","color":"red"},{"nbt":"display_decimals","storage":"respawn","bold":true,"color":"red"}]