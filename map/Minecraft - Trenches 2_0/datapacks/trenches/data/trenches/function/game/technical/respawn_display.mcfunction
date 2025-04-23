# Função para mostrar a quantidade de tempo que falta pro player dar respawn
scoreboard players set .divisor value 20
scoreboard players set .multiplier value 10

scoreboard players operation #temp_value value = @s respawn
scoreboard players operation #temp_value value /= .divisor value
scoreboard players operation #temp_value value *= .multiplier value

scoreboard players set .divisor value 2
scoreboard players operation #temp_respawn respawn = @s respawn
scoreboard players operation #temp_respawn respawn /= .divisor value

execute store result storage respawn display_int int 0.05 run scoreboard players get @s respawn
execute store result storage respawn display_decimals int 1 run scoreboard players operation #temp_respawn respawn -= #temp_value value