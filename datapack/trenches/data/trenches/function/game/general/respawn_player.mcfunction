scoreboard players set @s respawn -1
tag @s remove dead
title @s reset

$scoreboard players set #respawnType value $(respawn_type)

$execute if score #respawnType value matches 0 run function trenches:game/general/respawn_default {"plr_team":$(plr_team)}
# $execute if score #respawnType value matches 1 run function trenches:game/general/respawn_default {"plr_team":$(plr_team)}
# Pra quando adicionar a classe de reviver player
return 1