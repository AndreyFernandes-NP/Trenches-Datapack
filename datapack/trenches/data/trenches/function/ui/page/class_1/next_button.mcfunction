execute as @p at @s unless score #Game_Phase phase matches 1.. run playsound minecraft:block.anvil.land master @p ~ ~ ~ 0.75 0.5
execute as @p at @s unless score #Game_Phase phase matches ..0 run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 0.5 1
execute unless score #Game_Phase phase matches ..0 run scoreboard players set @s ui.page 1
