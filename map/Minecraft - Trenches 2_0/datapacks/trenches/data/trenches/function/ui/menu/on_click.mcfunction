function trenches:run_cmd with storage ui in[0].components."minecraft:custom_data".ui_item

execute if score .type ui matches 1 run function trenches:ui/minecart/load_page

# Kill any dropped item that had cmd
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ui_item:{}}}}}]