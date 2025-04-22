execute at @p unless score #Game_Phase phase matches 2.. run playsound minecraft:block.anvil.land master @p ~ ~ ~ 0.75 0.5
execute as @s unless score #Game_Phase phase matches 2.. run return run function trenches:ui/menu/refresh

execute at @p run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 0.5 1
execute as @s run function trenches:ui/menu/kp_classes/mid/open
