execute at @e[type=armor_stand,tag=explosive_mine,scores={team_id=1}] run particle minecraft:cloud ~ ~0.5 ~ 0.15 0.15 0.15 0.05 3 force @a[team=blu]
execute at @e[type=armor_stand,tag=explosive_mine,scores={team_id=2}] run particle minecraft:cloud ~ ~0.5 ~ 0.15 0.15 0.15 0.05 3 force @a[team=red]

schedule function trenches:game/timers/mine_particles 20t