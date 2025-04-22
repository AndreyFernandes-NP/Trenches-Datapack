scoreboard players set #Match_End value 1
$title @a[team=$(winning_team)] title {"translate":"trenches.announcement.match.victory","bold":true,"color":"gold"}
$title @a[team=$(losing_team)] title {"translate":"trenches.announcement.match.defeat","bold":true,"color":"dark_red"}

$title @a[team=spec] title ["",{"translate":"trenches.generic.team.name.$(winning_team)"},{"text":" Venceu"}]
playsound entity.ender_dragon.growl master @a ~ ~ ~ 1000 0.75 0.25