tag @a remove fb
scoreboard players add @s pts 50

title @a times 0t 5s 10t
$title @a actionbar ["",{"translate":"trenches.announcement.match.first_blood_global","with":[{"translate":"trenches.generic.team.name.$(plr_team)"},{"selector":"@s"}]}]

tellraw @s ["",{"text":"[Trenches]","color":"green"},{"text":": ","color":"gray"},{"translate":"trenches.announcement.match.first_blood_private","color":"gray"}]
execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.5 2