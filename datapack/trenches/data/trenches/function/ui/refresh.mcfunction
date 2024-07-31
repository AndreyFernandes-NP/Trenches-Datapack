## Encontrar o usuário dominante
scoreboard players operation .in ui.id = @s ui.id
execute as @a[scores={ui.id=1..}] if score @s ui.id = .in ui.id run tag @s add this

## Contar os itens de uma UI, e se for 0, ignorar qualquer botão
execute store result score .items ui run data get storage ui container
execute if score .items ui matches 0 run scoreboard players set .page_change ui 1

## Carregar a página que o player tá agora
scoreboard players add @s ui.page 0
execute if score @s ui.page matches 0 run function trenches:ui/page/class_1/start
execute if score @s ui.page matches 1 run function trenches:ui/page/class_2/start
# Pra adicionar nova página, copia o comando, coloca "matches n", número da página e muda a função, tipo: trenches:ui/page/novapag/start

#> KP Classes
execute if score @s ui.page matches 61 run function trenches:ui/page/kp_class_1/start

#> Custom Classes
execute if score @s ui.page matches 1001 run function trenches:ui/page/custom_class_1/start
# To create a new page, just copy the above command, change the "matches x" to the page id you want, and change the function to be like trenches:ui/page/your_page_name/start

## Prevenir check duplo
data modify storage ui container set from entity @s Items

## Remover o usuário dominante
tag @a remove this

## Limpar o ID armazenado
scoreboard players set .in ui.id 0

## Clear em qualquer item dropado/pego da ui
scoreboard players set .kill ui 1