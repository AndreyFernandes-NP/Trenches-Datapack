# Ok, eu não sabia que o mine funcionava com Threads mas já devia esperar, basicamente se eu executar uma função com mais de uma entidade, ele executa como se fosse a
# 1° entidade primeiro, ai passa pra 2°, e depois da 3°, isso rola em basicamente 1 tick, e executa até os sub-processos da 1° entidade primeiro do que as funções
# inicias das seguintes entidades, agora preguiça de mudar o restante do código que eu fiz pra tentar prevenir bug de múltipla execução ao mesmo tempo

data modify storage macro input_id append value {"plr_id":0}
execute store result storage macro input_id[].plr_id int 1 run scoreboard players get @s U_ID

function trenches:game/technical/pts_storage with storage macro input_id[-1]