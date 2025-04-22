scoreboard players set #Game_Phase phase 1
scoreboard players set #Respawn value 100
schedule function trenches:game/timers/base_regen 4s

tellraw @a ["",{"text":"[Trenches]","color":"green"},{"text":": ","color":"gray"},{"translate":"trenches.announcement.match.gamestate.early","color":"gray"}]
execute as @a at @s run playsound minecraft:item.goat_horn.sound.0 master @s ~ ~ ~ 1 1