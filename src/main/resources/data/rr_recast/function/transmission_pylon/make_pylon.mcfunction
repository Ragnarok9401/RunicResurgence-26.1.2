# Block Checks
execute as @e[type=item,distance=..10,nbt={OnGround:true,Item:{id:"minecraft:music_disc_cat",count:1,components:{"minecraft:item_model":"rr_recast:block/transmission_pylon/transmission_pylon_inactive"}}},tag=!rr.transmission_pylon.item,tag=!rr.transmission_pylon.success] at @s if block ~ ~-1 ~ obsidian if block ~-1 ~-1 ~ crying_obsidian if block ~1 ~-1 ~ crying_obsidian if block ~ ~-1 ~-1 crying_obsidian if block ~ ~-1 ~1 crying_obsidian if block ~-2 ~-1 ~ amethyst_block if block ~-1 ~-1 ~-1 amethyst_block if block ~2 ~-1 ~ amethyst_block if block ~1 ~-1 ~-1 amethyst_block if block ~ ~-1 ~-2 amethyst_block if block ~-1 ~-1 ~1 amethyst_block if block ~ ~-1 ~2 amethyst_block if block ~1 ~-1 ~1 amethyst_block run tag @s add rr.transmission_pylon.success

# Block Setup
execute as @e[type=item,distance=..10,nbt={OnGround:true,Item:{id:"minecraft:music_disc_cat",count:1,components:{"minecraft:item_model":"rr_recast:block/transmission_pylon/transmission_pylon_inactive"}}},tag=!rr.transmission_pylon.item,tag=rr.transmission_pylon.success] at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @n[type=item_display,distance=..0.75,tag=rr.nexus.main] run tag @s add rr.transmission_pylon.create
execute as @e[type=item,distance=..10,tag=rr.transmission_pylon.create,tag=rr.transmission_pylon.success] at @s align xyz run summon item_display ~0.5 ~0.5 ~0.5 {item:{id:music_disc_cat,count:1,components:{"minecraft:item_model":"rr_recast:block/transmission_pylon/transmission_pylon_inactive","minecraft:custom_data":{rr.transmission_pylon:true,rr.transmission_pylon.inactive:true}}},item_display:"head",Tags:["rr.transmission_pylon.inactive","rr.transmission_pylon.main","rr.transmission_pylon","rr.transmission_pylon.setup"],view_range:1}
execute as @e[type=item,distance=..10,tag=rr.transmission_pylon.create,tag=rr.transmission_pylon.success] at @s align xyz run setblock ~ ~ ~ barrier

# Rotate Block before making Interactions (interactions will be placed depending on rotation)
execute as @n[type=item_display,distance=..10,tag=rr.transmission_pylon,tag=rr.transmission_pylon.setup] at @s if entity @p[distance=..10,y_rotation=-45.0..44.999] run tp @s ~ ~ ~ ~180 ~
execute as @n[type=item_display,distance=..10,tag=rr.transmission_pylon,tag=rr.transmission_pylon.setup] at @s if entity @p[distance=..10,y_rotation=-135.0..-44.999] run tp @s ~ ~ ~ ~90 ~
execute as @n[type=item_display,distance=..10,tag=rr.transmission_pylon,tag=rr.transmission_pylon.setup] at @s if entity @p[distance=..10,y_rotation=45.0..134.999] run tp @s ~ ~ ~ ~270 ~

# Interaction Setup
execute as @e[type=item_display,distance=..10,tag=rr.transmission_pylon,tag=rr.transmission_pylon.setup] at @s run summon interaction ^ ^0.4375 ^ {width:0.5,height:0.125,Tags:["rr.transmission_pylon","rr.transmission_pylon.slot","rr.transmission_pylon.slot.1"]}

execute as @e[type=item,distance=..10,nbt={OnGround:true,Item:{id:"minecraft:music_disc_cat",count:1,components:{"minecraft:item_model":"rr_recast:block/transmission_pylon/transmission_pylon_inactive"}}},tag=!rr.transmission_pylon.item,tag=rr.transmission_pylon.success] at @s run playsound minecraft:block.stone.place block @a[distance=..20] ~ ~ ~ 0.8 0.9 0
execute as @e[type=item,distance=..10,nbt={OnGround:true,Item:{id:"minecraft:music_disc_cat",count:1,components:{"minecraft:item_model":"rr_recast:block/transmission_pylon/transmission_pylon_inactive"}}},tag=!rr.transmission_pylon.item,tag=rr.transmission_pylon.success] at @s run playsound minecraft:block.respawn_anchor.charge block @a[distance=..20] ~ ~ ~ 0.8 0.9 0
execute as @e[type=item,distance=..10,nbt={OnGround:true,Item:{id:"minecraft:music_disc_cat",count:1,components:{"minecraft:item_model":"rr_recast:block/transmission_pylon/transmission_pylon_inactive"}}},tag=!rr.transmission_pylon.item,tag=rr.transmission_pylon.success] at @s run playsound minecraft:block.trial_spawner.ominous_activate block @a[distance=..20] ~ ~ ~ 0.5 1.5 0

kill @e[type=item,distance=..10,tag=rr.transmission_pylon.create,tag=rr.transmission_pylon.success]
tag @e[tag=rr.transmission_pylon.setup] remove rr.transmission_pylon.setup