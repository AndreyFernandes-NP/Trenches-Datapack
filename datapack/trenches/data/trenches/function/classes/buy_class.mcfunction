$execute as @s run scoreboard players operation @s $(currency) -= .$(target_class) cl_gen_price
$execute at @s as @n[type=minecraft:armor_stand,tag=$(target_class)_armor,tag=$(plr_team)] run function trenches:classes/give_armor
# Isso faz a busca pela armor_stand com as tags da classe em questão pra dar a armadura dela, o código é executado dentro do player com o dono sendo a armor_stand
$execute as @s run function trenches:classes/get_id {"target_class":"$(target_class)"}
$execute as @s at @n[type=minecraft:armor_stand,tag=$(target_class)_items,tag=$(plr_team)] run loot give @s mine ~ ~ ~ stick[minecraft:custom_data={drop_contents:1b}]
# O /loot aqui vai simplesmente "mineirar" a shulker com os itens específicos e dropar apenas os itens diretamente no inventário do player