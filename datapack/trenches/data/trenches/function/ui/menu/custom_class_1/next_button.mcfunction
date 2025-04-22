execute as @a[scores={ui.id=1..}] if score @s ui.id = .in ui.id at @s unless score #Game_Phase phase matches 1.. run playsound minecraft:block.anvil.land master @p ~ ~ ~ 0.75 0.5
execute as @a[scores={ui.id=1..}] if score @s ui.id = .in ui.id at @s unless score #Game_Phase phase matches ..0 run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 0.5 1
# Audio feedback based on the game's phase, so it will player different sounds (the default sound for swapping pages if you can go to a next page, or an anvil if it's locked)

execute as @a[scores={ui.id=1..}] if score @s ui.id = .in ui.id at @s unless score #Game_Phase phase matches ..0 run tellraw @s ["",{"text":"[Trenches]","color":"green"},{"text":": ","color":"gray"},{"text":"This would go to another page!","color":"gray"}]

#execute unless score #Game_Phase phase matches ..0 run scoreboard players set @s ui.page 1002
# the above command (disabled) is the one that will go to another page, just change the "ui.page x" at the end to the page you want to go, here it will go to 1002
# (supposedly the next page that you make, but it can go up to like, 1010)
