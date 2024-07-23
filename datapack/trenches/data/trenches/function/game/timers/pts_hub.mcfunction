#> Como que não dá pra usar schedule function com macros, infelizmente vou ter que pegar o ID do player a cada segundo
## pelo menos não utiliza tanto recurso, já que só é executado a cada segundo... isso é bem mais otimizado do que parece

data modify storage macro input_id append value {"plr_id":0}
execute store result storage macro input_id[].plr_id int 1 run scoreboard players get @s U_ID

function trenches:game/technical/get_pts with storage macro input_id[-1]