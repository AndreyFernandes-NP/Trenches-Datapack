scoreboard players set #Game_Phase phase 2
scoreboard players set #Respawn value 200
scoreboard objectives add totalDeath deathCount

tellraw @a ["",{"text":"[Trenches]","color":"green"},{"text":": ","color":"gray"},{"translate":"trenches.announcement.match.gamestate.mid","color":"gray"}]
execute as @a at @s run playsound minecraft:item.goat_horn.sound.0 master @s ~ ~ ~ 1 1