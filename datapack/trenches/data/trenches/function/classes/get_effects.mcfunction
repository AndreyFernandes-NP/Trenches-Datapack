$data modify storage class_effects $(target_class)_temp_$(plr_id) append from storage class_effects $(target_class)[]
$data remove storage minecraft:macro input_id[{plr_id:$(plr_id)}]
# Aqui a função passa pelo storage "class_effects", copia os valores dentro dele que batem com os parâmetros (que são os valores da classe em questão)
# diretamente em um outro storage temporário (claro, dentro do class_effects ainda), o nome do storage temporário possui o UID do player nele.
# Isso serve pra garantir que iremos mexer apenas nesse único storage, poupando todo o resto, não é necessário, mas eu implementei pra evitar qualquer tipo de
# bug, por exemplo, se 2 players clicarem pra comprar a mesma classe no mesmo intervalo de tempo, com o sistema que tá aqui isso funcionará normalmente

$execute store result score @s class_array run data get storage class_effects $(target_class)_temp_$(plr_id)
$function trenches:classes/cycle_array {"target_class":"$(target_class)","plr_id":$(plr_id)}
# Esse combo salva a quantidade de itens dentro dentro da storage temporária, e chama uma função nova que vai ser a função que passará por cada objeto dessa nossa array.