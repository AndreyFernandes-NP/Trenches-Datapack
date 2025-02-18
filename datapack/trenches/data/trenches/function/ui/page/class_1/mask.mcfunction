data remove entity @s Items

data modify entity @s Items set from storage fill gray
# Vai simplesmente criar um background com vários itens específicos

item replace entity @s container.2 with warped_fungus_on_a_stick[custom_name='{"bold":true,"italic":false,"translate":"trenches.classes.name.soldier"}',custom_model_data=10,custom_data={ui:{null:1b}}]
item replace entity @s container.6 with warped_fungus_on_a_stick[custom_name='{"bold":true,"italic":false,"translate":"trenches.classes.name.scout"}',custom_model_data=11,custom_data={ui:{null:1b}}]
item modify entity @s container.2 trenches:class/soldier_cost
item modify entity @s container.6 trenches:class/scout_cost
item replace entity @s container.11 with warped_fungus_on_a_stick[custom_name='{"bold":true,"color":"yellow","translate":"trenches.class.selection.description"}',hide_additional_tooltip={},custom_model_data=4,custom_data={ui:{null:1b}}]
item replace entity @s container.15 with warped_fungus_on_a_stick[custom_name='{"bold":true,"color":"yellow","translate":"trenches.class.selection.description"}',hide_additional_tooltip={},custom_model_data=4,custom_data={ui:{null:1b}}]
# Isso vai criar um item específico com a tag que queremos no slot escolhido, saiba que os slots do baú vão de 0-26

execute unless score #Game_Phase phase matches ..0 run item replace entity @s container.13 with warped_fungus_on_a_stick[custom_name='{"bold":true,"color":"dark_red","translate":"trenches.class.selection.kp.name1"}',hide_additional_tooltip={},custom_model_data=5,custom_data={ui:{null:1b}}]
execute unless score #Game_Phase phase matches ..0 run item modify entity @s container.13 trenches:menu/kp_name

execute unless score .custom_classes value matches ..0 run item replace entity @s container.22 with warped_fungus_on_a_stick[custom_name='{"bold":true,"color":"dark_gray","text":"Custom Classes"}',hide_additional_tooltip={},custom_model_data=13,custom_data={ui:{null:1b}}]
# Só pra caso o player tenha ativado as custom classes, exibindo o exemplo de página de loja

execute unless score #Game_Phase phase matches ..0 run item replace entity @s container.26 with warped_fungus_on_a_stick[custom_name='{"bold":true,"color":"green","translate":"trenches.class.selection.next"}',hide_additional_tooltip={},custom_model_data=1,custom_data={ui:{null:1b}}]
execute unless score #Game_Phase phase matches 1.. run item replace entity @s container.26 with warped_fungus_on_a_stick[custom_name='{"bold":true,"color":"gray","translate":"trenches.class.selection.locked"}',hide_additional_tooltip={},custom_model_data=3,custom_data={ui:{null:1b}}]
