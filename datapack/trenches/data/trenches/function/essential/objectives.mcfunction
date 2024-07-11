#> Objetivos Base
scoreboard objectives add pts dummy
scoreboard objectives add kp playerKillCount "Kill Points"
scoreboard objectives add death deathCount
scoreboard objectives add phase dummy
scoreboard objectives add right_click minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard players set #Pts_Red pts 1
scoreboard players set #Pts_Blu pts 1
#terminar bgl de add 1 pra cada player falso com o bgl do meio amanhã

#> Objetivos Menu / Roubei do Cloud Wolf mesmo, tmj meu cria <3
scoreboard objectives add ui dummy
scoreboard players set #1 ui 1
scoreboard objectives add ui.id dummy
scoreboard objectives add ui.page dummy
scoreboard objectives add ui.index dummy
scoreboard objectives add open_ui minecraft.custom:minecraft.open_barrel

forceload add 0 0
setblock 0 -64 0 yellow_shulker_box
# Forceload só por conta do mundo de testes, no mapa original não vai precisar
# Depois modificar e criar o local onde vai ficar as stashes do menu / elas estarão numa posição diferente do loadout das classes