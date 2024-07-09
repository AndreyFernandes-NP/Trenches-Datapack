#> Feedback do Meio
execute unless block 201 1 66 blue_wool unless block 201 1 66 red_wool unless score #Mid time_d matches 0 run scoreboard players set #Mid time_d 0
execute if block 201 1 66 red_wool unless score #Mid time_d matches 1 run function trenches:game/mid/red_dom
execute if block 201 1 66 blue_wool unless score #Mid time_d matches 2 run function trenches:game/mid/blu_dom