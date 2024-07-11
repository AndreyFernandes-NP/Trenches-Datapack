## setar um item 'return' pro slot 0, copiar ele. e então mandar de volta
data modify storage ui return[-1].Slot set value 0
data modify block ~ ~ ~ Items insert -1 from storage ui return[-1]
loot give @p[tag=this] mine ~ ~ ~ air[custom_data={drop_contents:1b}]
data remove storage ui return[-1]
scoreboard players remove #return ui 1
execute if score #return ui matches 1.. run function trenches:ui/return/loop