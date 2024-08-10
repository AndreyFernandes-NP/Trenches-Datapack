$data modify storage macro class_tp set value {"plr_team":"$(plr_team)","array_amount":0,"rng":0}
$execute store result score .temp value run data get storage minecraft:arena_coords $(plr_team)_respawn

scoreboard players remove .temp value 1
execute store result storage macro class_tp.array_amount int 1 run scoreboard players get .temp value

function trenches:classes/setup_rng with storage macro class_tp