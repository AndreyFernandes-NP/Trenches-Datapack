$execute if score @s pts < .$(target_class) cl_gen_price run function trenches:classes/no_points {"target_class":"$(target_class)","plr_team":"blu"}
# Primeiro faz um check se o player tem pontos o suficiente

$execute unless score @s[team=red] pts < .$(target_class) cl_gen_price run function trenches:classes/buy_class {"target_class":"$(target_class)","plr_team":"red"}
$execute unless score @s[team=blu] pts < .$(target_class) cl_gen_price run function trenches:classes/buy_class {"target_class":"$(target_class)","plr_team":"blu"}
# Vai simplesmente checar se o ponto da classe em questão que o player quer comprar bate com o scoreboard dela, em seguida, executar uma função passando um
# macro diferente dependendo do time do player

