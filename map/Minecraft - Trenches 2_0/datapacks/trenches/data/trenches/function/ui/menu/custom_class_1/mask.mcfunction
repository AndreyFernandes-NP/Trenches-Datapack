# This is the MASK function of the page system. Everytime you'll load a page, it will load it's mask, so you can assign each slot of the chest an item to act as the display.
# You can use any type of item, be it with a custom model data or not, translated texts as its name or lore, and even more, if you want more advanced examples, check out the
# original masks of the official classes.

data remove entity @s Items
# Do not touch this

data modify entity @s Items set from storage fill gray
# It's basically the background of each shop, you can create one yourself inside the game, just have a single chest completely filled with your background item,
# save it to the 'fill' storage with a name (be it blue, or grass) and load it like this

item replace entity @s container.4 with breeze_rod[custom_name='{"bold":true,"italic":false,"text":"Example Class","color":"dark_gray"}',custom_data={ui:{null:1b}}]
item replace entity @s container.13 with warped_fungus_on_a_stick[custom_name='{"bold":true,"color":"yellow","translate":"trenches.class.selection.description"}',hide_additional_tooltip={},custom_model_data=4,custom_data={ui:{null:1b}}]
# These 2 commands assign each choosen container an item to be their display. Do not forget to se them the custom_data ui to null:1b, or the items won't get deleted if the player
# selects/picks them. I highly recommend using mcstaker to generate you some good looking items or guarantee your params are right.

execute unless score #Game_Phase phase matches ..0 run item replace entity @s container.26 with warped_fungus_on_a_stick[custom_name='{"bold":true,"color":"green","translate":"trenches.class.selection.next"}',hide_additional_tooltip={},custom_model_data=1,custom_data={ui:{null:1b}}]
execute unless score #Game_Phase phase matches 1.. run item replace entity @s container.26 with warped_fungus_on_a_stick[custom_name='{"bold":true,"color":"gray","translate":"trenches.class.selection.locked"}',hide_additional_tooltip={},custom_model_data=3,custom_data={ui:{null:1b}}]
# This is basically the same as the above, but with an IF condition. It will check if the game phase is at least X amount higher ou lower, so it will change the display icon accordingly

item replace entity @s container.18 with warped_fungus_on_a_stick[custom_name='{"bold":true,"color":"red","translate":"trenches.class.selection.back"}',custom_model_data=2,custom_data={ui:{null:1b}}]
# Just the item display for the back function, it's the same as the above