execute as @a[team=!spec,gamemode=!creative,team=red] at @s if biome ~ ~ ~ forest run effect give @s regeneration 5 0
execute as @a[team=!spec,gamemode=!creative,team=blu] at @s if biome ~ ~ ~ dark_forest run effect give @s regeneration 5 0

schedule function trenches:game/timers/base_regen 5s