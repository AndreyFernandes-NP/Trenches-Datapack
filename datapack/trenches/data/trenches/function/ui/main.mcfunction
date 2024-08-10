scoreboard players set .page_change ui 0
scoreboard players operation .in ui.id = @s ui.id

## Mover até o player
execute as @a[scores={ui.id=1..}] if score @s ui.id = .in ui.id at @s anchored eyes positioned ^ ^ ^ as @e[type=chest_minecart,tag=ui] if score @s ui.id = .in ui.id run tp @s ~ ~ ~ ~ ~

## Copiar os itens da array
execute as @e[type=chest_minecart,tag=ui] if score @s ui.id = .in ui.id run data modify storage ui container set from entity @s Items

## E em seguida tentar atualizar os itens
execute store result score #temp ui run data modify entity @s data.container set from storage ui container

## Se deu certo, vai dar refresh e mostrar os novos itens
execute if score #temp ui matches 1 as @e[type=chest_minecart] if score @s ui.id = .in ui.id run function trenches:ui/refresh
data modify entity @s data.container set from storage ui container

## Limpar o ID armazenado
#Só pra garantir de limpar o ID quando encerrar tudo o que a função precisa fazer
scoreboard players set .in ui.id 0