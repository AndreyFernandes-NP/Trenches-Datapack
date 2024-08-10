scoreboard players set #blu_Base value 1

tellraw @a[team=red] ["",{"text":"[Trenches]","color":"green"},{"text":": ","color":"gray"},{"translate":"trenches.announcement.match.captured_base","color":"gold"}]
tellraw @a[team=blu] ["",{"text":"[Trenches]","color":"green"},{"text":": ","color":"gray"},{"translate":"trenches.announcement.match.base_captured","color":"red"}]
tellraw @a[team=spec] ["",{"text":"[Trenches]","color":"green"},{"text":": ","color":"gray"},{"translate":"trenches.announcement.match.spectator_base","with":[{"translate":"trenches.generic.team.name.red"},{"translate":"trenches.generic.team.name.blu"}],"color":"gray"}]

particle elder_guardian ~ ~ ~ 0 0 0 0 1 force @a[team=blu]

execute at @s playsound minecraft:entity.elder_guardian.curse master @a[team=blu] ~ ~ ~ 1 1
execute at @s playsound minecraft:block.anvil.place master @a[team=red] ~ ~ ~ 1 1
execute at @s playsound minecraft:entity.experience_orb.pickup master @a[team=spec] ~ ~ ~ 1 1