tag @s remove selecting_class
clear @s

# Descontar o dinheiro da classe do dinheiro do player
$execute as @s run scoreboard players operation @s $(currency) -= .$(target_class) cl_gen_price

$function trenches:classes/give_armor with storage class_armor $(target_class).$(plr_team)
# Essa função envia o uuid de uma entidade armazenado num data storage, tendo assim muito mais performance pra repassar as armaduras
$function trenches:classes/give_items with storage class_items $(target_class).$(plr_team)
# A função recebe um parâmetro que é a localização da shulker_box contendo os itens, a localização é armazenada num storage, obtendo mais performance
$function trenches:classes/get_id {"target_class":"$(target_class)"}
# Uma função para coletar o ID único do player e executar uma série de funções que então dará os efeitos da classe ao player
$function trenches:classes/setup_array {"plr_team":"$(plr_team)"}
# Repassamos apenas o time do player aqui que será a única coisa necessária, afinal essa função executa um código de mandar o player pra arena