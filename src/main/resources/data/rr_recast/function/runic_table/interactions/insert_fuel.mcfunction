# Set tags
tag @n[type=item_display,tag=rr.runic_table.main,tag=!rr.runic_table.active,distance=..0.5] add rr.runic_table.active
tag @n[type=item_display,tag=rr.runic_table.main,tag=rr.runic_table.active,tag=rr.runic_table.inactive,distance=..0.5] remove rr.runic_table.inactive

# Effects on click
playsound block.respawn_anchor.charge block @a[distance=..20] ~ ~ ~ 0.6 1.5 0
playsound block.enchantment_table.use block @a[distance=..20] ~ ~ ~ 0.85 1.5 0
execute at @n[type=item_display,limit=1,sort=nearest,tag=rr.runic_table.active,distance=..0.5] run particle sonic_boom ^ ^ ^0.55 0 0 0 0 1 force @a[distance=..20]

# Change Item Display to show Active model
execute at @n[type=item_display,limit=1,sort=nearest,tag=rr.runic_table.active,distance=..0.5] run data modify entity @n[type=item_display,limit=1,sort=nearest,tag=rr.runic_table.active,distance=..0.01] item.components."minecraft:item_model" set value "rr_recast:block/runic_table/runic_table_active"

# Add time to Table's Charge (2 minutes per Chunk)
scoreboard players add @n[type=item_display,limit=1,sort=nearest,tag=rr.runic_table.active,distance=..0.5] rr.system.CraftCharge 120

# Clear one Meteorite Chunk from player
execute on target run clear @s[gamemode=!creative] music_disc_blocks[item_model="rr_recast:havenite/havenite_meteor",custom_data={rr.block.havenite_meteor_chunk:true}] 1

# Make new Interaction to reset interaction data
summon interaction ~ ~ ~ {width:0.5,height:0.5,Tags:["rr.runic_table","rr.runic_table.slot","rr.runic_table.slot.10"]}
kill @s