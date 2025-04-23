## It will clear buttons from the player's inventroy
clear @p[tag=this] #trenches:all_items[minecraft:custom_data={ui:{null:1b}}]
# No need to touch this

## Runs the buttons function
execute if score .page_change ui matches 0 run function trenches:ui/page/custom_class_1/buttons
# The only thing you'll change here is the function if you just copy paste this file from another page

## Aplicar máscara -> se ainda tá na mesma página
execute if score @s ui.page matches 1001 run function trenches:ui/page/custom_class_1/mask
# Always set the "matches" number to be equal to the page id this entire page represents, or it won't load any item display
