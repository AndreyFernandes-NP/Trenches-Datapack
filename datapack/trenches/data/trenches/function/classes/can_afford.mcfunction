$execute if score @s $(currency) < .$(target_class) cl_gen_price run function trenches:classes/no_$(currency) {"target_class":"$(target_class)","plr_team":"blu"}
# Primeiro faz um check se o player tem pontos o suficiente

$execute unless score @s[team=red] $(currency) < .$(target_class) cl_gen_price run function trenches:classes/buy_class {"target_class":"$(target_class)","plr_team":"red","currency":$(currency)}
$execute unless score @s[team=blu] $(currency) < .$(target_class) cl_gen_price run function trenches:classes/buy_class {"target_class":"$(target_class)","plr_team":"blu","currency":$(currency)}
# Vai simplesmente checar se o ponto da classe em questão que o player quer comprar bate com o scoreboard dela, em seguida, executar uma função passando um
# macro diferente dependendo do time do player

