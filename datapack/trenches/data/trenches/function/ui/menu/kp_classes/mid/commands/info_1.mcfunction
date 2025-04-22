tellraw @p ["\n","\n","\n","\n","\n"]
tellraw @p ["",{"text":"[Trenches]","color":"green"},{"text":": ","color":"gray"},{"translate":"trenches.classes.kp.description.flash","color":"yellow"}]
execute at @p run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 1 2
execute as @p run function trenches:ui/player/close