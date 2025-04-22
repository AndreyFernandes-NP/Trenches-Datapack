scoreboard players operation #search ui.id = @s ui.id
execute as @e[type=chest_minecart,tag=ui] if score @s ui.id = #search ui.id run data remove entity @s Items
execute as @e[tag=ui] if score @s ui.id = #search ui.id run kill @s
scoreboard players reset @s ui.id
scoreboard players remove .global ui.id 1

say fechou ui