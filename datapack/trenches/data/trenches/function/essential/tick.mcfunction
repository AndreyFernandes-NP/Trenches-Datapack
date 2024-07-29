#> Feedback do Meio
execute unless block 201 1 66 blue_wool unless block 201 1 66 red_wool unless score #Mid time_d matches 0 run function trenches:game/mid/neut_dom
execute if block 201 1 66 red_wool unless score #Mid time_d matches 1 run function trenches:game/mid/red_dom
execute if block 201 1 66 blue_wool unless score #Mid time_d matches 2 run function trenches:game/mid/blu_dom

#> Detectar Right-Click
execute as @a[scores={right_click=1..}] run function trenches:right_click

#> Sistema de Respawn
execute as @a[scores={death=1..}] run function trenches:game/technical/arrange_ids {"ftype_id":2}

#> Player no Spawn
execute as @a[scores={ui.delay=0}] unless data entity @s Inventory[{components:{"minecraft:custom_data":{ui:1b}}}] run give @s compass[custom_name='{"bold":true,"color":"aqua","italic":false,"translate":"trenches.class.selector"}',custom_data={ui:1b},enchantment_glint_override=true]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ui:1b}}}}]

#> Prevenir Drops
#Funciona apenas em itens com a tag específica
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{nopickup:{}}}}},tag=!processed] run function trenches:game/general/no_pickup

#> UID do Player
scoreboard players add @a U_ID 0
execute as @a[scores={U_ID=0}] run function trenches:essential/assign_id

#> Setar Team ID do Player
scoreboard players add @a team_id 0
execute as @a[team=spec] unless score @s team_id matches 0 run scoreboard players set @s team_id 0
execute as @a[team=blu] unless score @s team_id matches 1 run scoreboard players set @s team_id 1
execute as @a[team=red] unless score @s team_id matches 2 run scoreboard players set @s team_id 2

#> Cooldowns (Evitar usar seletores)
scoreboard players remove @a fireball 1

#> Mina Terrestre
execute at @e[type=armor_stand, tag=explosive_mine, scores={team_id=1}] as @p[distance=..2,scores={team_id=2}] run function trenches:game/general/mine_explosion
execute at @e[type=armor_stand, tag=explosive_mine, scores={team_id=2}] as @p[distance=..2,scores={team_id=1}] run function trenches:game/general/mine_explosion

# Evitar de mexer daqui pra baixo

#> Relacionado ao Menu/UI
scoreboard players add @a ui.id 0
scoreboard players add @a ui.delay 0
execute as @a[scores={ui.id=0},nbt={SelectedItem:{components:{"minecraft:custom_data":{ui:1b}}}}] at @s run function trenches:ui/spawn
execute as @a[scores={ui.id=1..}] unless data entity @s SelectedItem.components.minecraft:custom_data.ui run function trenches:ui/close

scoreboard players set .kill ui 0
execute as @e[type=marker,tag=ui] at @s run function trenches:ui/main
execute if score .kill ui matches 1 run kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ui:{null:1b}}}}}]

execute as @e[type=#trenches:minecarts,tag=!invisible_minecart] run function trenches:essential/invisible_minecarts