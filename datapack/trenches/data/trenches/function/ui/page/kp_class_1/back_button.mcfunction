execute as @a[scores={ui.id=1..}] if score @s ui.id = .in ui.id at @s run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 0.5 1
scoreboard players set @s ui.page 0
