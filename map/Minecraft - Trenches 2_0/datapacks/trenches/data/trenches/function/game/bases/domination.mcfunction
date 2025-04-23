$scoreboard players set #$(target)_Base value 1

$tellraw @a[team=$(who_dom)] ["",{"text":"[Trenches]","color":"green"},{"text":": ","color":"gray"},{"translate":"trenches.announcement.match.captured_base","color":"gold"}]
$tellraw @a[team=$(target)] ["",{"text":"[Trenches]","color":"green"},{"text":": ","color":"gray"},{"translate":"trenches.announcement.match.base_captured","color":"red"}]
$title @a[team=$(target)] actionbar {"translate":"trenches.announcement.match.base_captured","bold":true,"color":"red"}
tellraw @a[team=spec] ["",{"text":"[Trenches]","color":"green"},{"text":": ","color":"gray"},{"translate":"trenches.announcement.match.spectator_base","with":[{"translate":"trenches.generic.team.name.blu"},{"translate":"trenches.generic.team.name.red"}],"color":"gray"}]

$particle elder_guardian ~ ~ ~ 0 0 0 0 1 force @a[team=$(target)]

$execute as @a[team=$(target)] at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1
$execute as @a[team=$(who_dom)] at @s run playsound minecraft:block.anvil.place master @s ~ ~ ~ 1 1
execute as @a[team=spec] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1

$execute if score #Match_End value matches ..0 unless entity @a[team=$(target), gamemode=!spectator] run function trenches:game/match_end {"winning_team": $(who_dom), "losing_team": $(target)}