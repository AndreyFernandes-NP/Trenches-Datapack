#> Feedback do Meio
execute unless block 201 1 66 blue_wool unless block 201 1 66 red_wool unless score #Mid time_d matches 0 run scoreboard players set #Mid time_d 0
execute if block 201 1 66 red_wool unless score #Mid time_d matches 1 run function trenches:game/mid/red_dom
execute if block 201 1 66 blue_wool unless score #Mid time_d matches 2 run function trenches:game/mid/blu_dom

#> Relacionado ao Menu/UI
execute as @a at @s run function trenches:ui/player/tick
execute as @e[type=chest_minecart,tag=ui] run function trenches:ui/minecart/tick

execute at @n[type=chest_minecart] run particle minecraft:angry_villager ~ ~ ~
execute as @e[type=#minecraft:minecarts,tag=!invisible_minecart] run function trenches:essential/invisible_minecarts