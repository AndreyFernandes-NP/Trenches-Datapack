scoreboard players set #Mid time_d 2
tellraw @a ["",{"text":"[Trenches]","color":"dark_green"},{"text":": ","color":"gray"},{"translate":"trenches.mid.domination","color":"gray"}," ",{"translate":"trenches.generic.blu","color":"dark_blue"},{"text":"!","color":"gray"}]
summon firework_rocket 201 2 66 {Glowing:1b,LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;1511423]}]}}}}