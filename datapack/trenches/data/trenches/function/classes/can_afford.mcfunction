$execute as @p if score @s $(currency) < .$(target_class) cl_gen_price run return run function trenches:classes/no_$(currency) {"target_class":"$(target_class)"}
# Primeiro faz um check se o player tem pontos o suficiente

$execute as @p if entity @s[team=red] run function trenches:classes/buy_class {"target_class":"$(target_class)","plr_team":"red","currency":$(currency)}
$execute as @p if entity @s[team=blu] run function trenches:classes/buy_class {"target_class":"$(target_class)","plr_team":"blu","currency":$(currency)}
# Se a função não parou no começo, significa que o player tem pontos e pode comprar a classe, ai seguimos em frente com outra função.

