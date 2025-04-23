data remove storage temp team
execute at @s run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 2
execute at @s run kill @n[type=armor_stand,tag=explosive_mine,distance=..2]
# Caso o inteligente crie uma bomba em cima de uma bomba, ai mata a antiga e substitui pela nova

summon armor_stand ~ ~-1 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["explosive_mine"]}
$scoreboard players set @n[type=armor_stand] team_id $(team_id)

advancement revoke @s only trenches:mine