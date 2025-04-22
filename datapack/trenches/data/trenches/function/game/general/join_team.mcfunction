$scoreboard players set @s join_$(team) 0
$team join $(team)

$title @s actionbar ["",{"text":"[Trenches]","color":"green"},{"text":": ","color":"gray"},{"translate":"trenches.generic.actionbar_message.join_team","with":[{"translate":"trenches.generic.team.name.$(team)","bold":true}],"color":"gray"}]