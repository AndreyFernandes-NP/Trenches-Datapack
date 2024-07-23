execute as @a run function trenches:game/technical/arrange_ids {"ftype_id":1}
execute unless score .debug_Points value matches 1.. run schedule function trenches:game/timers/pts_hub 20t