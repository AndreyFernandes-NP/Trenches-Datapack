## Tirar qualquer botão
clear @p[tag=this] #trenches:all_items[minecraft:custom_data={ui:{null:1b}}]

## Processar tudo o que rolou
execute if score .page_change ui matches 0 run function trenches:ui/page/class_1/buttons

## Aplicar máscara -> se ainda tá na mesma página
execute if score @s ui.page matches 0 run function trenches:ui/page/class_1/mask
