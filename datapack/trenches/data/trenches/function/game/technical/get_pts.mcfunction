$data remove storage minecraft:macro input_id[{plr_id:$(plr_id)}]

scoreboard players operation #temp_Points value = #Points value

$execute store result storage pts player_$(plr_id)[0].plr_points int 1 run scoreboard players operation #temp_Points value += @s pts_bonus
$function trenches:game/general/give_pts with storage pts player_$(plr_id)[0]