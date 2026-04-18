# Block Setup
execute as @e[type=item,distance=..10,nbt={OnGround:true,Item:{id:"minecraft:music_disc_blocks",count:1,components:{"minecraft:item_model":"rr_recast:block/runic_table/runic_table_inactive","minecraft:custom_data":{rr.runic_table:true,rr.runic_table.inactive:true},"!minecraft:jukebox_playable":{}}}},tag=!rr.runic_table.item] at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @n[type=item_display,distance=..10.75,tag=rr.runic_table.main] run tag @s add RunicTableCreate
execute as @e[type=item,distance=..10,tag=RunicTableCreate] at @s align xyz run summon item_display ~0.5 ~0.5 ~0.5 {item:{id:music_disc_blocks,count:1,components:{"minecraft:item_model":"rr_recast:block/runic_table/runic_table_inactive","minecraft:custom_data":{rr.runic_table:true,rr.runic_table.inactive:true}}},item_display:"head",Tags:["rr.runic_table.inactive","rr.runic_table.main","rr.runic_table","RunicTableSetup"],view_range:1}
execute as @e[type=item,distance=..10,tag=RunicTableCreate] at @s align xyz run setblock ~ ~ ~ barrier

# Rotate Block before making Interactions (interactions will be placed depending on rotation)
execute as @n[type=item_display,distance=..10,tag=rr.runic_table,tag=RunicTableSetup] at @s if entity @p[distance=..10,y_rotation=-45.0..44.999] run tp @s ~ ~ ~ ~180 ~
execute as @n[type=item_display,distance=..10,tag=rr.runic_table,tag=RunicTableSetup] at @s if entity @p[distance=..10,y_rotation=-135.0..-44.999] run tp @s ~ ~ ~ ~90 ~
execute as @n[type=item_display,distance=..10,tag=rr.runic_table,tag=RunicTableSetup] at @s if entity @p[distance=..10,y_rotation=45.0..134.999] run tp @s ~ ~ ~ ~270 ~

# Interaction Setup
execute as @e[type=item_display,distance=..10,tag=rr.runic_table,tag=RunicTableSetup] at @s run summon interaction ^-0.25 ^0.4375 ^-0.25 {width:0.125,height:0.125,Tags:["rr.runic_table","rr.runic_table.slot","rr.runic_table.slot.1"]}
execute as @e[type=item_display,distance=..10,tag=rr.runic_table,tag=RunicTableSetup] at @s run summon interaction ^ ^0.4375 ^-0.25 {width:0.125,height:0.125,Tags:["rr.runic_table","rr.runic_table.slot","rr.runic_table.slot.2"]}
execute as @e[type=item_display,distance=..10,tag=rr.runic_table,tag=RunicTableSetup] at @s run summon interaction ^0.25 ^0.4375 ^-0.25 {width:0.125,height:0.125,Tags:["rr.runic_table","rr.runic_table.slot","rr.runic_table.slot.3"]}
execute as @e[type=item_display,distance=..10,tag=rr.runic_table,tag=RunicTableSetup] at @s run summon interaction ^-0.25 ^0.4375 ^ {width:0.125,height:0.125,Tags:["rr.runic_table","rr.runic_table.slot","rr.runic_table.slot.4"]}
execute as @e[type=item_display,distance=..10,tag=rr.runic_table,tag=RunicTableSetup] at @s run summon interaction ^ ^0.4375 ^ {width:0.125,height:0.125,Tags:["rr.runic_table","rr.runic_table.slot","rr.runic_table.slot.5"]}
execute as @e[type=item_display,distance=..10,tag=rr.runic_table,tag=RunicTableSetup] at @s run summon interaction ^0.25 ^0.4375 ^ {width:0.125,height:0.125,Tags:["rr.runic_table","rr.runic_table.slot","rr.runic_table.slot.6"]}
execute as @e[type=item_display,distance=..10,tag=rr.runic_table,tag=RunicTableSetup] at @s run summon interaction ^-0.25 ^0.4375 ^0.25 {width:0.125,height:0.125,Tags:["rr.runic_table","rr.runic_table.slot","rr.runic_table.slot.7"]}
execute as @e[type=item_display,distance=..10,tag=rr.runic_table,tag=RunicTableSetup] at @s run summon interaction ^ ^0.4375 ^0.25 {width:0.125,height:0.125,Tags:["rr.runic_table","rr.runic_table.slot","rr.runic_table.slot.8"]}
execute as @e[type=item_display,distance=..10,tag=rr.runic_table,tag=RunicTableSetup] at @s run summon interaction ^0.25 ^0.4375 ^0.25 {width:0.125,height:0.125,Tags:["rr.runic_table","rr.runic_table.slot","rr.runic_table.slot.9"]}
execute as @e[type=item_display,distance=..10,tag=rr.runic_table,tag=RunicTableSetup] at @s run summon interaction ^ ^-0.3125 ^0.3125 {width:0.5,height:0.5,Tags:["rr.runic_table","rr.runic_table.slot","rr.runic_table.slot.10"]}

playsound minecraft:block.stone.place block @a[distance=..20] ~ ~ ~ 0.8 0.9 0
playsound minecraft:block.amethyst_block.place block @a[distance=..20] ~ ~ ~ 0.8 0.9 0
playsound minecraft:block.trial_spawner.ominous_activate block @a[distance=..20] ~ ~ ~ 0.5 1.5 0

kill @e[type=item,distance=..10,tag=RunicTableCreate]
tag @e[tag=RunicTableSetup] remove RunicTableSetup