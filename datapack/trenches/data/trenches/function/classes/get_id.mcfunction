$data modify storage macro input_id append value {"target_class":"$(target_class)","plr_id":0}
execute store result storage macro input_id[].plr_id int 1 run scoreboard players get @s U_ID
# Isso simplesmente busca e armazena o ID do player numa variável dentro de um storage
scoreboard players add @s class_array 0
function trenches:classes/get_effects with storage macro input_id[-1]