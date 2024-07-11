## Tirar qualquer botão
clear @p[tag=this] #trenches:all_items[minecraft:custom_data={ui:{null:1b}}]

## Isolar os itens que vão voltar
data modify storage ui return set from storage ui container
data remove storage ui return.Items[{components:{"minecraft:custom_data":{ui:{null:1b}}}}]
# se precisar mudar as coords disso no trenches
execute positioned 0 -64 0 run function trenches:ui/return/start

## Processar tudo o que rolou
execute if score .page_change ui matches 0 run function trenches:ui/page/menu_teste/buttons

## Aplicar máscara -> se ainda tá na mesma página
execute if score @s ui.page matches 0 run function trenches:ui/page/menu_teste/mask