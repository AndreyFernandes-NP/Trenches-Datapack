# A simple function just made to execute more than 1 command, it is called when a button is clicked

tellraw @s ["\n","\n","\n","\n","\n"]
tellraw @s ["",{"text":"[Trenches]","color":"green"},{"text":": ","color":"gray"},{"text":"This is a pretty cool class summary button!","color":"dark_gray"}]
# Your basic tellraw message

execute at @s run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 1 2
# An audio effect to just play for feedback

scoreboard players set @s ui.delay 1
execute at @s run schedule function trenches:ui/delay 2t
clear @s
# Do not touch these 3 commands above