scoreboard players remove #loop open_ui 1

#> Encontrar uma entidade do tipo Marker
execute as @e[type=marker, tag=ui, distance=..0.5, limit=1] run function trenches:ui/find/at_marker
execute if score #loop open_ui matches 1.. positioned ^ ^ ^0.5 run function trenches:ui/find/raycast  
# /\ Pra caso não tenha encontrado (e ainda tá procurando) uma UI