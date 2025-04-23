tellraw @p ["\n","\n","\n","\n","\n"]
tellraw @p ["",{"text":"[Trenches]","color":"green"},{"text":": ","color":"gray"},{"translate":"trenches.classes.description.warrior","with":[{"translate":"trenches.classes.name.soldier","italic":true},{"translate":"trenches.classes.name.shooter","italic":true}],"color":"gray"}]
execute at @p run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 1 2
execute as @p run function trenches:ui/player/close