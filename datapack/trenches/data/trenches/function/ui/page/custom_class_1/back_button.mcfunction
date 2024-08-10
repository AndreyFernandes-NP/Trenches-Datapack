execute as @a[scores={ui.id=1..}] if score @s ui.id = .in ui.id at @s run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 0.5 1
scoreboard players set @s ui.page 0
# "ui.page x" basically you can make the back button go to any page, here it will just go to the page number 0 (hence the page that you can go to the custom's page)