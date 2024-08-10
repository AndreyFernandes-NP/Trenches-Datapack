data remove entity @s Items

data modify entity @s Items set from storage fill gray
#Vai simplesmente criar um background com vários itens específicos

item replace entity @s container.2 with warped_fungus_on_a_stick[custom_name='{"bold":true,"italic":false,"translate":"trenches.classes.kp.name.assassin","color":"dark_gray"}',custom_model_data=60001,custom_data={ui:{null:1b}}]
item replace entity @s container.6 with warped_fungus_on_a_stick[custom_name='{"bold":true,"italic":false,"translate":"trenches.classes.kp.name.bomber","color":"gold"}',custom_model_data=60002,custom_data={ui:{null:1b}}]
item modify entity @s container.2 trenches:kp_class/assassin_cost
item modify entity @s container.6 trenches:kp_class/bomber_cost
item replace entity @s container.11 with warped_fungus_on_a_stick[custom_name='{"bold":true,"color":"yellow","translate":"trenches.class.selection.description"}',hide_additional_tooltip={},custom_model_data=4,custom_data={ui:{null:1b}}]
item replace entity @s container.15 with warped_fungus_on_a_stick[custom_name='{"bold":true,"color":"yellow","translate":"trenches.class.selection.description"}',hide_additional_tooltip={},custom_model_data=4,custom_data={ui:{null:1b}}]
#isso vai criar um item específico com a tag que queremos no slot escolhido, saiba que os slots do baú vão de 0-26

execute unless score #Game_Phase phase matches ..1 run item replace entity @s container.26 with warped_fungus_on_a_stick[custom_name='{"bold":true,"color":"green","translate":"trenches.class.selection.next"}',hide_additional_tooltip={},custom_model_data=1,custom_data={ui:{null:1b}}]
execute unless score #Game_Phase phase matches 2.. run item replace entity @s container.26 with warped_fungus_on_a_stick[custom_name='{"bold":true,"color":"gray","translate":"trenches.class.selection.locked"}',hide_additional_tooltip={},custom_model_data=3,custom_data={ui:{null:1b}}]
item replace entity @s container.18 with warped_fungus_on_a_stick[custom_name='{"bold":true,"color":"red","translate":"trenches.class.selection.back"}',custom_model_data=2,custom_data={ui:{null:1b}}]