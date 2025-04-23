## Código base de CloudWolf: https://www.youtube.com/watch?v=Sxnaah2SPzw

execute if items entity @s weapon.* *[minecraft:custom_data={ui:1b}] run return run function trenches:ui/player/teleport
execute if score @s ui.id matches 0.. run function trenches:ui/player/close