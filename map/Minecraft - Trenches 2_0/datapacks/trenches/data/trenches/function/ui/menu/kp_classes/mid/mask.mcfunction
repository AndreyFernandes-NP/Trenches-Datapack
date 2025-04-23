item modify block -925 1 -938 container.1 trenches:kp_class/flash_cost
item modify block -925 1 -938 container.7 trenches:kp_class/kendo_cost

data modify storage ui mask set from block -925 1 -938 Items

execute unless score #Game_Phase phase matches 3.. run data modify storage ui mask[26] set value {count:1, Slot:26b, components:{"minecraft:custom_model_data":3, "minecraft:custom_name":'{"bold":true,"color":"gray","translate":"trenches.class.selection.locked"}', "minecraft:hide_additional_tooltip":{}, "minecraft:custom_data":{ui_item:{cmd:"function trenches:ui/menu/kp_classes/mid/commands/next_page"}}}, id:"minecraft:warped_fungus_on_a_stick"}

# TEMPLATE DE ITEM COM BASE EM COMPARAÇÃO
# execute unless score #Game_Phase phase matches (valor) run data modify storage ui mask[slot] set value {count:1, Slot:(slot), components:{"minecraft:custom_model_data":(valor), "minecraft:custom_name":'{"bold":true,"color":"(cor)","translate":"tradução"}', "minecraft:hide_additional_tooltip":{}, "minecraft:custom_data":{ui_item:{cmd"(comando")}}}, id:"tipo_de_item"}

# TEMPLATE DE GIVE ITEM COM CMD
# /give @p warped_fungus_on_a_stick[max_stack_size=1,custom_name='{"bold":true,"italic":false,"translate":"enter_translation_here"}',hide_additional_tooltip={},custom_model_data=model_number,custom_data={ui_item:{cmd:"say enter cmd here"}}] 1

# TEMPLATE DE GIVE ICONE
# /give @p warped_fungus_on_a_stick[max_stack_size=1,custom_name='{"bold":true,"italic":false,"translate":"icon_translation_name","color":"icon_color"}',hide_additional_tooltip={},custom_model_data=model_number,custom_data={ui_item:{cmd:"function trenches:classes/can_afford {target_class:class_name,currency:pts/kp}"}}] 1