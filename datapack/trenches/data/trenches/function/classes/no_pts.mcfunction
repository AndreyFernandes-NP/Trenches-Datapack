tellraw @s ["\n","\n"]
$tellraw @s ["",{"text":"[Trenches]","color":"green"},{"text":": ","color":"gray"},{"translate":"trenches.generic.chat_messages.insufficient_points","with":[{"translate":"trenches.classes.name.$(target_class)","bold":true,"color":"white"}],"color":"red"}]
execute at @s run playsound minecraft:item.shield.break master @p ~ ~ ~ 1.0 0.85
scoreboard players set @s ui.delay 1 
execute at @s run schedule function trenches:ui/delay 2
clear @s