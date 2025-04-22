# Ele vai pegar a página inteira em um baú físico no mundo, eu poderia colocar um "contra" só pra caso n ter esse baú, mas desnecessário
item modify block -936 1 -947 container.2 trenches:class/soldier_cost
item modify block -936 1 -947 container.6 trenches:class/scout_cost

item modify block -936 1 -947 container.13 trenches:menu/kp_name

data modify storage ui mask set from block -936 1 -947 Items

execute unless score #Game_Phase phase matches 1.. run data modify storage ui mask[26] set value {count:1, Slot:26b, components:{"minecraft:custom_model_data":3, "minecraft:custom_name":'{"bold":true,"color":"gray","translate":"trenches.class.selection.locked"}', "minecraft:hide_additional_tooltip":{}, "minecraft:custom_data":{ui_item:{cmd:"function trenches:ui/menu/classes/default/commands/next_page"}}}, id:"minecraft:warped_fungus_on_a_stick"}

execute unless score #Game_Phase phase matches 1.. run data modify storage ui mask[13] set value {count:1, Slot:13b, id:"minecraft:gray_stained_glass_pane", components:{"minecraft:hide_tooltip":{}, "minecraft:hide_additional_tooltip":{},"minecraft:max_stack_size":1, "minecraft:custom_name": " ", "minecraft:custom_data":{ui_item:{empty:1b}}}}

# TEMPLATE DE ITEM COM BASE EM COMPARAÇÃO
# execute unless score #Game_Phase phase matches (valor) run data modify storage ui mask[slot] set value {count:1, Slot:(slot), components:{"minecraft:custom_model_data":(valor), "minecraft:custom_name":'{"bold":true,"color":"(cor)","translate":"tradução"}', "minecraft:hide_additional_tooltip":{}, "minecraft:custom_data":{ui_item:{cmd"(comando")}}}, id:"tipo_de_item"}

# TEMPLATE DE GIVE ITEM COM CMD
# /give @p warped_fungus_on_a_stick[max_stack_size=1,custom_name='{"bold":true,"italic":false,"translate":"enter_translation_here"}',hide_additional_tooltip={},custom_model_data=model_number,custom_data={ui_item:{cmd:"say enter cmd here"}}] 1