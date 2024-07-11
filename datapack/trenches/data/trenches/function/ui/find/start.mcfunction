#> Inicia a busca por uma nova UI ou uma que tenha o mesmo ID
scoreboard players set #loop open_ui 12
scoreboard players operation .in ui.id = @s ui.id
execute anchored eyes run function trenches:ui/find/raycast

#> Se alguma UI for encontrada, vamos linkar ela ao player
execute if score #loop open_ui matches -1 run scoreboard players operation @s ui.id = .out ui.id

#> Se nenhuma UI for encontrada
execute if score #loop open_ui matches 0 run function trenches:ui/return/exit_ui
execute if score #loop open_ui matches 0 run scoreboard players set @s ui.id 0
execute if score #loop open_ui matches 0 run scoreboard players set @s open_ui 0