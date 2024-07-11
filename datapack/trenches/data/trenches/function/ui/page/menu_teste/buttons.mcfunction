## Criar o botão de acordo com o que foi clicado (/removido do baú)
# intermediate variable avoid multiple inputs here!
scoreboard players set .button ui 0
execute unless data storage ui container[{Slot:11b}] run scoreboard players set .button ui 1
execute unless data storage ui container[{Slot:15b}] run scoreboard players set .button ui 2
# basicamente o que isso faz é, se o código não identificar nenhum item no slot específico, então um "botão" foi clicado!
#execute unless data storage ui container[{Slot:13b}] run scoreboard players set .button ui 2

## Agora é pegar qual página devemos ir
execute if score .button ui matches 1 run scoreboard players set @s ui.page 1
execute if score .button ui matches 2 run scoreboard players set @s ui.page 2
# já isso ele seta a página do player que clicou para a página em específico, sendo 1 aqui (mudar de acordo pra outra página)
#execute if score .button ui matches 2 run scoreboard players set @s ui.page 2

execute unless score @s ui.page matches 0 run scoreboard players set .page_change ui 1
execute unless score @s ui.page matches 0 run function trenches:ui/refresh