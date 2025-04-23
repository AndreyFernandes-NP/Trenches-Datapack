clear @s light_gray_wool
scoreboard players add @s pts 25

tellraw @s ["",{"text":"[Trenches]","color":"green"},{"text":": ","color":"gray"},{"translate":"trenches.announcement.match.point_wool","color":"gray"}]
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1