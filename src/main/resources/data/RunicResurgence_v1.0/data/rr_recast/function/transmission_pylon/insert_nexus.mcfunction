summon interaction ^ ^ ^ {width:0.5,height:0.125,Tags:["rr.transmission_pylon","rr.transmission_pylon.slot","rr.transmission_pylon.slot.1"]}

# Summon Item Display and set Item to the player's Nexus
summon item_display ~ ~ ~ {item_display:"fixed",CustomName:{"text":"error","color":"white","italic":false,shadow_color:0},"CustomNameVisible":true,Tags:[rr.transmission_pylon.item_display,rr.transmission_pylon],transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.35,0.35,0.35],translation:[0,0.75,0]},billboard:"vertical"}
execute as @n[type=item_display,distance=..0.5,tag=rr.transmission_pylon.item_display] run data modify entity @s item set from entity @p[distance=..10,predicate=rr_recast:held_items/mainhand/transmission_nexus_set] SelectedItem
execute as @n[type=item_display,distance=..0.5,tag=rr.transmission_pylon.item_display] run data modify entity @s data.rr_recast.uuid_1 set from entity @p[distance=..10,predicate=rr_recast:held_items/mainhand/transmission_nexus_set] UUID[0]
execute as @n[type=item_display,distance=..0.5,tag=rr.transmission_pylon.item_display] run data modify entity @s data.rr_recast.uuid_2 set from entity @p[distance=..10,predicate=rr_recast:held_items/mainhand/transmission_nexus_set] UUID[1]
execute as @n[type=item_display,distance=..0.5,tag=rr.transmission_pylon.item_display] run data modify entity @s data.rr_recast.uuid_3 set from entity @p[distance=..10,predicate=rr_recast:held_items/mainhand/transmission_nexus_set] UUID[2]
execute as @n[type=item_display,distance=..0.5,tag=rr.transmission_pylon.item_display] run data modify entity @s data.rr_recast.uuid_4 set from entity @p[distance=..10,predicate=rr_recast:held_items/mainhand/transmission_nexus_set] UUID[3]
execute as @n[type=item_display,distance=..0.5,tag=rr.transmission_pylon.item_display] if data entity @s item.components."minecraft:custom_name" run data modify entity @s CustomName set from entity @s item.components."minecraft:custom_name"
execute as @n[type=item_display,distance=..0.5,tag=rr.transmission_pylon.item_display] unless data entity @s item.components."minecraft:custom_name" run data modify entity @s CustomName set from entity @s item.components."minecraft:lore"[0].extra[0]

# Clear item from player
execute as @n[type=item_display,distance=..0.5,tag=rr.transmission_pylon.item_display] at @s run data modify entity @s data.rr_recast.custom_data set from entity @s item.components."minecraft:custom_data"
execute as @p[predicate=rr_recast:held_items/mainhand/transmission_nexus_set,distance=..10] at @s run function rr_recast:technical/clear_item_with_macro with entity @n[type=item_display,tag=rr.transmission_pylon.item_display] data.rr_recast

playsound minecraft:block.respawn_anchor.set_spawn block @a[distance=..40] ~ ~ ~ 0.6 1.25 0
playsound minecraft:block.iron_chain.place block @a[distance=..40] ~ ~ ~ 0.8 0.75 0
particle enchant ~ ~1.95 ~ 0 0 0 1 20 force @a[distance=..40]
particle end_rod ~ ~0.85 ~ 0.1 0.1 0.1 0.025 8 force @a[distance=..40]

tag @n[type=item_display,tag=rr.transmission_pylon.main,tag=!rr.transmission_pylon.location_set,distance=..0.5] add rr.transmission_pylon.location_set

kill @s