tellraw @s ["\n","\n","\n","\n","\n"]
tellraw @s ["",{"text":"[Trenches]","color":"green"},{"text":": ","color":"gray"},{"translate":"trenches.classes.description.warrior","with":[{"translate":"trenches.classes.name.soldier","italic":true},{"translate":"trenches.classes.name.shooter","italic":true}],"color":"gray"}]
execute at @s run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 1 2
scoreboard players set @s ui.delay 1
execute at @s run schedule function trenches:ui/delay 2t
clear @s