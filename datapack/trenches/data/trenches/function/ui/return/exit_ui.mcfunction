tag @s add this
scoreboard players operation .in ui.id = @s ui.id
execute as @e[type=chest_minecart,tag=ui] if score @s ui.id = .in ui.id run function trenches:ui/return/exit_ui1
execute as @e[type=marker,tag=ui] if score @s ui.id = .in ui.id run function trenches:ui/return/exit_ui2
tag @s remove this
scoreboard players set .in ui.id 0