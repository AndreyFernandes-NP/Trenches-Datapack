summon minecraft:chest_minecart ~ ~1 ~ {CustomNameVisible:0b,CustomName:'{"translate":"trenches.class.selector"}',Tags:["ui","new","invisible_minecart"],Silent:1b,CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"}}

## Criar um marker com id único
execute unless entity @e[type=marker,tag=ui,distance=..0.5] run summon marker 0 0 0 {Tags:["ui","new"]}
scoreboard players add .global ui.id 1
scoreboard players operation @e[tag=new] ui.id = .global ui.id
scoreboard players operation @s ui.id = .global ui.id

tag @e remove new