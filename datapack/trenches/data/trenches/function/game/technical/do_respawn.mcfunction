scoreboard players set @s death 0
$data remove storage minecraft:macro input_id[{plr_id:$(plr_id)}]
$data modify storage respawn player_$(plr_id) set value {"respawn_timer":0}
# Sim, eu fiz com os pontos executando duas funções, uma única pra criar a storage e outra só pra inserir os dados, mas nessa daqui foda-se, vo deixar tudo numa só mesmo
# e é isso, no final a única coisa que isso faz é sempre setar o ID do player e o timer do respawn pra 0 (que é setado logo em seguida, ent foda-se de novo)

scoreboard players operation #temp_Respawn value = #Respawn value
$execute store result storage respawn player_$(plr_id).respawn_timer int 1 run scoreboard players operation #temp_Respawn value += @s respawn_bonus

$function trenches:game/technical/apply_respawn with storage respawn player_$(plr_id)
