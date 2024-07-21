## Criar o botão de acordo com o que foi clicado (/removido do baú)
# Evitar de sem querer aplicar um input

scoreboard players set .button ui 0
execute unless data storage ui container[{Slot:2b}] run scoreboard players set .button ui 1
execute unless data storage ui container[{Slot:6b}] run scoreboard players set .button ui 2
execute unless data storage ui container[{Slot:11b}] run scoreboard players set .button ui 3
execute unless data storage ui container[{Slot:15b}] run scoreboard players set .button ui 4
execute unless data storage ui container[{Slot:26b}] run scoreboard players set .button ui 5
# basicamente o que isso faz é, se o código não identificar nenhum item no slot específico, então um "botão" foi clicado!

## Agora é pegar qual página devemos ir
execute if score .button ui matches 1 as @p run function trenches:classes/can_afford {"target_class":"soldier"}
execute if score .button ui matches 2 as @p run function trenches:classes/can_afford {"target_class":"scout"}
execute if score .button ui matches 3 as @p run function trenches:ui/page/class_1/info_1
execute if score .button ui matches 4 as @p run function trenches:ui/page/class_1/info_2
execute if score .button ui matches 5 run function trenches:ui/page/class_1/next_button
# Aqui ele se joga numa função pra executar umas coisas e então puxar o player pra próxima página se ela tiver liberada

execute unless score @s ui.page matches 0 run scoreboard players set .page_change ui 1
execute unless score @s ui.page matches 0 run function trenches:ui/refresh