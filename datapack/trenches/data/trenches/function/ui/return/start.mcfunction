## garantir que tem ao menos um item no bgl
data remove block ~ ~ ~ Items
## contar quantos itens pra voltar
execute store result score #return ui run data get storage ui return
execute if score #return ui matches 1.. run function trenches:ui/return/loop