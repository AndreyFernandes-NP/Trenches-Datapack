#> Permite encontrar qualquer UI nova ou que tenha um ID igual (descobrindo de novo)
execute if score .in ui.id = @s ui.id run function trenches:ui/find/found
execute if score .in ui.id matches 0 run function trenches:ui/find/found