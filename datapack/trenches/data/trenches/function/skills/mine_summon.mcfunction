scoreboard players set @s fireball 5

item modify entity @s weapon.mainhand trenches:remove_one
data modify storage temp team set value {"team_id":0}

execute store result storage temp team.team_id int 1 run scoreboard players get @s team_id
function trenches:skills/mine_setup with storage temp team