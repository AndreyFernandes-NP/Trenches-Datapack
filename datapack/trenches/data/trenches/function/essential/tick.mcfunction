#> Efeitos de Biomas
execute as @a[team=!spec,gamemode=!creative] at @s run function trenches:game/general/check_biome

#> Efeitos de Lugares
# A Corrupção (Poison)
execute positioned 232 -5 91 if block ~ ~ ~ minecraft:crying_obsidian as @a[distance=..7,gamemode=!spectator] run effect give @s poison 1 0

# O Cemitério (Cegueira)
execute positioned 169 -2 43 if block ~ ~ ~ minecraft:crying_obsidian as @a[distance=..9,gamemode=!spectator] run effect give @s blindness 2 0

#Gauntlet da Morte (Slow e Cansaço)
execute positioned 33 -6 41 if block ~ ~ ~ minecraft:crying_obsidian as @a[distance=..8,gamemode=!spectator] run function trenches:game/general/gauntlet_effects

#> Feedback do Meio
execute unless block 201 1 66 blue_wool unless block 201 1 66 red_wool unless score #Mid time_d matches 0 run function trenches:game/mid/neut_dom
execute if block 201 1 66 red_wool unless score #Mid time_d matches 1 run function trenches:game/mid/red_dom
execute if block 201 1 66 blue_wool unless score #Mid time_d matches 2 run function trenches:game/mid/blu_dom

#> Lã do Meio
execute as @e[type=item,nbt={Item:{id:"minecraft:light_gray_wool"}}] run data merge entity @s {Glowing:1}
execute as @a if data entity @s Inventory[{id:"minecraft:light_gray_wool"}] run function trenches:game/mid/wool_bonus

#> Feedback das Bases
execute unless score #blu_Base value matches 1.. if block 459 3 66 red_wool run function trenches:game/bases/red_dom
execute unless score #red_Base value matches 1.. if block -58 3 66 blue_wool run function trenches:game/bases/blu_dom

execute unless score #blu_Base value matches 0 unless block 459 3 66 red_wool run scoreboard players set #blu_Base value 0
execute unless score #red_Base value matches 0 unless block -58 3 66 blue_wool run scoreboard players set #red_Base value 0

#> Detectar Right-Click
execute as @a[scores={right_click=1..}] run function trenches:right_click

#> Sistema de Respawn
execute as @a[scores={death=1..}] run function trenches:game/technical/arrange_ids {"ftype_id":2}

#> Player no Spawn
execute as @a[scores={ui.delay=0},tag=selecting_class] unless data entity @s Inventory[{components:{"minecraft:custom_data":{ui:1b}}}] run give @s compass[custom_name='{"bold":true,"color":"aqua","italic":false,"translate":"trenches.class.selector"}',custom_data={ui:1b},enchantment_glint_override=true,max_stack_size=1]
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
execute at @e[type=armor_stand, tag=explosive_mine, scores={team_id=1}] as @p[distance=..3,scores={team_id=2}] run function trenches:game/general/mine_explosion
execute at @e[type=armor_stand, tag=explosive_mine, scores={team_id=2}] as @p[distance=..3,scores={team_id=1}] run function trenches:game/general/mine_explosion

#> Hub Pré-Jogo
execute positioned 238 -35 66 as @a[tag=!ingame,distance=12..] run tp @s 238 -35 73
execute as @a[tag=!ingame] run function trenches:game/state/hub_commands

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