scoreboard players set #Game_Phase phase 1
scoreboard players set @a timer_respawn 100

tellraw @a ["",{"text":"[Trenches]","color":"green"},{"text":": ","color":"gray"},{"translate":"trenches.announcement.match.gamestate.early","color":"gray"}]
playsound minecraft:item.goat_horn.sound.0 master @a ~ ~ ~ 1000 1 0.25