#> Avisar que uma UI foi encontrada (e qual)
scoreboard players set #loop open_ui -1
scoreboard players operation .out ui.id = @s ui.id

#> E assim, deixar claro que a UI tá sendo usada
tag @s add ui.active