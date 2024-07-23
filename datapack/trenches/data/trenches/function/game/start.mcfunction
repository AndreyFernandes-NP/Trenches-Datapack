#> Títulos e Texto
title @a times 1s 3s 1s
title @a title {"translate":"trenches.announcement.match.start","color":"red","bold":true,"italic":true}

#> Reconfiguração dos Objetivos
scoreboard players set #Game_Phase phase 0
scoreboard players set @a timer_respawn 20
scoreboard players set @a pts 70
scoreboard players set #Points value 1

## Criação do KP
scoreboard objectives remove kp
scoreboard objectives add kp playerKillCount "Kill Points"
scoreboard objectives setdisplay sidebar kp

#> Players
clear @a
effect clear @a
gamemode adventure @a

#> Mundo
recipe take @a *
advancement revoke @a everything
time set day
weather clear

#> Criar armazenamento de pontos
execute as @a run function trenches:game/technical/arrange_ids

#> Tocar Timers necessários
function trenches:game/timers/phases
execute as @a run schedule function trenches:game/timers/pts_hub 20t append
# /\ provavelmente esse comando não é otimizado, já que ele cria uma função pra cada pessoa que roda a cada 1 segundo (se bem que, por rodar a cada segundo não vejo lagando)
# /\ então, na teoria é pro lag ou consumo de memória estar maior quanto mais players estiverem jogando, porém como eu disse, teria que ter pelo menos 1000+ se não 10000+ para sequer
# /\ ter alguma diferença, 100 funções, ou até 1000 funções executando em paralelo até que poderiam lagar mas não comparado ao lag que o servidor sofrerá e de outras funções que estariam
# /\ sendo executadas, mas ainda assim, talvez exista uma aproximação melhor...