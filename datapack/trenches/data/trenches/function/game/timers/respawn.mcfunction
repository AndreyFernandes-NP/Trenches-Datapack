execute as @a[scores={respawn=1..}] run function trenches:game/general/take_respawn
execute unless score .debug_Respawn value matches 1.. run schedule function trenches:game/timers/respawn 20t