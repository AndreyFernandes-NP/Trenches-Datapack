#> Thanks MonoCode for the code <3
execute as @s in minecraft:overworld positioned 0.0 0.0 0.0 rotated as @s run summon minecraft:marker ^ ^ ^16 {Tags:["fireball"]}
execute as @e[type=minecraft:marker,tag=fireball] run execute store result entity @s data.X double 0.00625 run data get entity @s Pos[0] 15
execute as @e[type=minecraft:marker,tag=fireball] run execute store result entity @s data.Y double 0.00625 run data get entity @s Pos[1] 15
execute as @e[type=minecraft:marker,tag=fireball] run execute store result entity @s data.Z double 0.00625 run data get entity @s Pos[2] 15
execute at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~

$execute at @s positioned ~ ~1 ~ run summon minecraft:fireball ^ ^ ^1.5 {ExplosionPower:$(fireball_power),Tags:["player_fireball","current_fireball"]}
data modify entity @n[type=minecraft:fireball,tag=current_fireball] Motion[0] set from entity @n[type=minecraft:marker,tag=fireball] data.X
data modify entity @n[type=minecraft:fireball,tag=current_fireball] Motion[1] set from entity @n[type=minecraft:marker,tag=fireball] data.Y
data modify entity @n[type=minecraft:fireball,tag=current_fireball] Motion[2] set from entity @n[type=minecraft:marker,tag=fireball] data.Z

tag @e[type=minecraft:fireball,tag=current_fireball] remove current_fireball
kill @e[type=minecraft:marker,tag=fireball]

advancement revoke @s only trenches:fireball