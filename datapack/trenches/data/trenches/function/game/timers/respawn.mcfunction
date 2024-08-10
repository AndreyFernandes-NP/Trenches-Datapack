execute as @a[scores={respawn=1..},tag=dead] run function trenches:game/general/take_respawn
execute unless score .debug_Respawn value matches 1.. run schedule function trenches:game/timers/respawn 20t

execute if score #Match_End value matches ..0 as @a[scores={respawn=0},tag=dead] run function trenches:game/general/respawn_player