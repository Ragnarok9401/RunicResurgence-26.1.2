summon interaction ^ ^ ^ {width:0.5,height:0.125,Tags:["rr.transmission_pylon","rr.transmission_pylon.slot","rr.transmission_pylon.slot.1"]}

# Removing item from Item Display and giving it to nearest player
execute as @n[type=item_display,tag=rr.transmission_pylon.item_display,distance=..0.5] at @s align xyz positioned ~0.5 ~1.125 ~0.5 run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},Tags:[rr.transmission_pylon.returned_nexus]}
execute as @n[type=item_display,tag=rr.transmission_pylon.item_display,distance=..0.5] at @s align xyz positioned ~0.5 ~1.125 ~0.5 run data modify entity @n[type=item,distance=..0.5,tag=rr.transmission_pylon.returned_nexus] Item set from entity @s item
execute as @n[type=item_display,tag=rr.transmission_pylon.item_display,distance=..0.5] at @s align xyz positioned ~0.5 ~1.125 ~0.5 run data modify entity @n[type=item,distance=..0.5,tag=rr.transmission_pylon.returned_nexus] Thrower[0] set from entity @s data.rr_recast.uuid_1
execute as @n[type=item_display,tag=rr.transmission_pylon.item_display,distance=..0.5] at @s align xyz positioned ~0.5 ~1.125 ~0.5 run data modify entity @n[type=item,distance=..0.5,tag=rr.transmission_pylon.returned_nexus] Thrower[1] set from entity @s data.rr_recast.uuid_2
execute as @n[type=item_display,tag=rr.transmission_pylon.item_display,distance=..0.5] at @s align xyz positioned ~0.5 ~1.125 ~0.5 run data modify entity @n[type=item,distance=..0.5,tag=rr.transmission_pylon.returned_nexus] Thrower[2] set from entity @s data.rr_recast.uuid_3
execute as @n[type=item_display,tag=rr.transmission_pylon.item_display,distance=..0.5] at @s align xyz positioned ~0.5 ~1.125 ~0.5 run data modify entity @n[type=item,distance=..0.5,tag=rr.transmission_pylon.returned_nexus] Thrower[3] set from entity @s data.rr_recast.uuid_4
execute as @n[type=item_display,tag=rr.transmission_pylon.item_display,distance=..0.5] at @s run kill @s

tag @n[type=item_display,tag=rr.transmission_pylon.main,tag=rr.transmission_pylon.location_set,distance=..0.5] remove rr.transmission_pylon.location_set


playsound minecraft:block.respawn_anchor.deplete block @a[distance=..40] ~ ~ ~ 0.6 1.4 0
playsound minecraft:block.iron_chain.place block @a[distance=..40] ~ ~ ~ 0.8 0.75 0
particle electric_spark ~ ~0.85 ~ 0 0 0 1 20 force @a[distance=..40]
particle end_rod ~ ~0.85 ~ 0.1 0.1 0.1 0.025 8 force @a[distance=..40]


kill @s