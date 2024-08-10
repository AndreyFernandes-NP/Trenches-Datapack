$function trenches:classes/give_effects with storage class_effects $(target_class)_temp_$(plr_id)[0]
# Isso vai passar os parâmetros do 1° objeto da array temporária, que é um efeito que será aplicado ao player

$data remove storage class_effects $(target_class)_temp_$(plr_id)[0]
scoreboard players remove @s class_array 1 
# Depois que o efeito foi aplicado, vai remover o 1° objeto da array, descontar do scoreboard e seguir em frente

$execute if score @s class_array matches 0 run data remove storage class_effects $(target_class)_temp_$(plr_id)
$execute if score @s class_array matches 1.. run function trenches:classes/cycle_array {"target_class":"$(target_class)","plr_id":$(plr_id)}
# O scoreboard só vai ser 0 quando passamos por todos os itens da array, então é por isso que a função cria uma recursão pra continuar o ciclo entre cada objeto.
# Quando ele chegar no último objeto e descontar pra 0, vai simplesmente deletar o storage temporário que criamos (evitando memory leak... bem-
# no final é só uma prática boa, é bem desnecessário já que nn haveria nenhum memory leak kk)