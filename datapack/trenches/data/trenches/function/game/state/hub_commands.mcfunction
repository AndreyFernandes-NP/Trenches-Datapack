effect give @s resistance infinite 4 true

scoreboard players enable @s join_blu
scoreboard players enable @s join_red
scoreboard players enable @s join_spec

execute if score @s join_blu matches 1.. run function trenches:game/general/join_team {"team":"blu"}
execute if score @s join_red matches 1.. run function trenches:game/general/join_team {"team":"red"}
execute if score @s join_spec matches 1.. run function trenches:game/general/join_team {"team":"spec"}