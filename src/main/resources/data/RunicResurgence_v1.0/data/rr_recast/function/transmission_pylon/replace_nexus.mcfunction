
# Removing item from Item Display and giving it to nearest player
execute as @n[type=item_display,tag=rr.transmission_pylon.item_display,distance=..0.5] at @s align xyz positioned ~0.5 ~1.125 ~0.5 run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},Tags:[rr.transmission_pylon.returned_nexus]}
execute as @n[type=item_display,tag=rr.transmission_pylon.item_display,distance=..0.5] at @s align xyz positioned ~0.5 ~1.125 ~0.5 run data modify entity @n[type=item,distance=..0.5,tag=rr.transmission_pylon.returned_nexus] Item set from entity @s item
execute as @n[type=item_display,tag=rr.transmission_pylon.item_display,distance=..0.5] at @s align xyz positioned ~0.5 ~1.125 ~0.5 run data modify entity @n[type=item,distance=..0.5,tag=rr.transmission_pylon.returned_nexus] Thrower[0] set from entity @s data.rr_recast.uuid_1
execute as @n[type=item_display,tag=rr.transmission_pylon.item_display,distance=..0.5] at @s align xyz positioned ~0.5 ~1.125 ~0.5 run data modify entity @n[type=item,distance=..0.5,tag=rr.transmission_pylon.returned_nexus] Thrower[1] set from entity @s data.rr_recast.uuid_2
execute as @n[type=item_display,tag=rr.transmission_pylon.item_display,distance=..0.5] at @s align xyz positioned ~0.5 ~1.125 ~0.5 run data modify entity @n[type=item,distance=..0.5,tag=rr.transmission_pylon.returned_nexus] Thrower[2] set from entity @s data.rr_recast.uuid_3
execute as @n[type=item_display,tag=rr.transmission_pylon.item_display,distance=..0.5] at @s align xyz positioned ~0.5 ~1.125 ~0.5 run data modify entity @n[type=item,distance=..0.5,tag=rr.transmission_pylon.returned_nexus] Thrower[3] set from entity @s data.rr_recast.uuid_4
execute as @n[type=item_display,tag=rr.transmission_pylon.item_display,distance=..0.5] at @s run kill @s

tag @n[type=item_display,tag=rr.transmission_pylon.main,tag=rr.transmission_pylon.location_set,distance=..0.5] remove rr.transmission_pylon.location_set