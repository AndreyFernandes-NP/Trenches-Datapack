# Welcome to the entire brain of your page, the buttons function! These work like this: It will always compare if there's an item in the specified slot, if not, then it will set the
# value of a false player's score to a value (that you can set it to whatever you want), at the end of the function, depending on the value of the .button player, it will trigger
# another command that will probably run a function.

## Execute the button accordingly to what was clicked/removed from the chest
# Evitar de sem querer aplicar um input
scoreboard players set .button ui 0

execute unless data storage ui container[{Slot:4b}] run scoreboard players set .button ui 1
execute unless data storage ui container[{Slot:13b}] run scoreboard players set .button ui 2
# These two buttons are the class that you can choose and its summary. While in the masks function the slot only served to be a display, here it will actually be the button.
# If you change the slot 4b to 3b, the icon will still be at 4b, but will only trigger if you click the 3b (4rd) slot.
# Remember that the first slot of the chest starts at 0 and not 1!!, so, instead of going from 1-27, it goes from 0-26.

execute unless data storage ui container[{Slot:18b}] run scoreboard players set .button ui 3
execute unless data storage ui container[{Slot:26b}] run scoreboard players set .button ui 4
# More buttons, the first one is the "back", to just go back to the page 0 as you can see in its function, and the last one the "next" button that will go to the "next" page
# (or in general, just to another page that you can set up).

### It will check for each score and run a command/function mainly
#> execute if score .button ui matches 1 as @a[scores={ui.id=1..}] if score @s ui.id = .in ui.id run function trenches:classes/can_afford {"target_class":"your_custom_class_name","currency":"currency_type"}
# There are some things that you need to change in the command above and some not. The first being "matches x", 
# basically if the score of the .button player matches X value, just pair it up with the button that you want.
# Next, the command that it will run, note that to execute a class buyer command, you need to run the function "trenches:classes/can_afford", with the following parameters:
# "target_class", just the name of your class, and "currency", having only 2 options to choose (kp or pts). By setting up your class name and its currency, if you followed the book
# inside the "/function trenches:tp_class" command, then you'll be fine and your class, in theory, will work and start being functional

execute if score .button ui matches 1 as @a[scores={ui.id=1..}] if score @s ui.id = .in ui.id run tellraw @s ["",{"text":"[Trenches]","color":"green"},{"text":": ","color":"gray"},{"text":"What are you waiting for? Configure your custom class now to make it buyable!","color":"red"}]
execute if score .button ui matches 2 as @a[scores={ui.id=1..}] if score @s ui.id = .in ui.id run function trenches:ui/page/custom_class_1/info_1
# The above command will execute the info_1 function, it's just a way that I use to organize classes summary, you can change that to be the text that represents the core gameplay
# of your class, its traits, items, playstyle and etc.

execute if score .button ui matches 3 run function trenches:ui/page/custom_class_1/back_button
execute if score .button ui matches 4 run function trenches:ui/page/custom_class_1/next_button
# Functions that will run to advance the player to the next page, or just go back (in general, it will get the player somewhere)

execute unless score @s ui.page matches 1001 run scoreboard players set .page_change ui 1
execute unless score @s ui.page matches 1001 run function trenches:ui/refresh
# These two, ONLY changes the numbers after "matches x" to this page id, 1001 being the one of custom_class_1, if you want to create another page like, custom_class_2
# copy the entire folder, go to the trenches:ui/refresh function and create a new page there

# Also, you can see that there's a lot of 'execute as @a[scores={ui.id=1..}] if score @s ui.id = .in ui.id', what this do is basically checking for the player that have the sae
# ui.id as the container (each page are just items in a container, and the container has the same id as the player who is holding the compass), so it don't select any other player