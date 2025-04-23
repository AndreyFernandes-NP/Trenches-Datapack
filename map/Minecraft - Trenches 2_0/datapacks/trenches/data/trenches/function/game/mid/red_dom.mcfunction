scoreboard players set #Mid time_d 1
tellraw @a [{"color":"green","text":"[Trenches]"},{"color":"gray","text":": "},{"color":"gray","translate":"trenches.announcement.match.captured_point","with":[{"translate":"trenches.generic.team.name.red"}]}]
summon firework_rocket 201 2 66 {Glowing:1b,LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;11743532]}]}}}}

execute as @a[team=red] run scoreboard players add @s pts_bonus 1