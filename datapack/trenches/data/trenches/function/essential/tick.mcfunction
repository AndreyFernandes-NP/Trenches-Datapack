#> Feedback do Meio
execute unless block 201 1 66 blue_wool unless block 201 1 66 red_wool unless score #Mid time_d matches 0 run scoreboard players set #Mid time_d 0
execute if block 201 1 66 red_wool unless score #Mid time_d matches 1 run function trenches:game/mid/red_dom
execute if block 201 1 66 blue_wool unless score #Mid time_d matches 2 run function trenches:game/mid/blu_dom

#> Relacionado ao Menu/UI
scoreboard players add @a ui.id 0
execute as @a[scores={ui.id=0},nbt={SelectedItem:{components:{"minecraft:custom_data":{ui:1b}}}}] at @s run function trenches:ui/spawn
execute as @a[scores={ui.id=1..}] unless data entity @s SelectedItem.components.minecraft:custom_data.ui run function trenches:ui/close

scoreboard players set .kill ui 0
execute as @e[type=marker,tag=ui] at @s run function trenches:ui/main
execute if score .kill ui matches 1 run kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ui:{null:1b}}}}}]

execute as @e[type=#trenches:minecarts,tag=!invisible_minecart] run function trenches:essential/invisible_minecarts