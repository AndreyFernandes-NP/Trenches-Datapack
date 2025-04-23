execute at @s run summon item_display ~ ~1 ~ {view_range:0f,width:0f,height:0f,teleport_duration:0,Tags:["ui","new"],Passengers:[{id:"minecraft:chest_minecart",Invulnerable:1b,Tags:["ui","new","invisible_minecart"],CustomNameVisible:0b,CustomName:'{"translate":"trenches.class.selector"}',CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Passengers:[{id:"minecraft:marker",Tags:["ui","new"]}]}]}

## Criar um marker com id único
scoreboard players add .global ui.id 1
scoreboard players operation @s ui.id = .global ui.id
scoreboard players operation @e[tag=new] ui.id = .global ui.id

scoreboard players set .type ui 1
execute as @e[type=chest_minecart,tag=new] run function trenches:ui/menu/classes/default/open
execute as @e[type=chest_minecart,tag=new] run function trenches:ui/minecart/load_page

tag @e remove new

# Dar fix pelo fato do carrinho não estar teleportando?? Fds vo jogar wynncraft