# Make an Arcane Enchanting Altar with 1 Dragon's Breath, 1 Enchanting Table, 1 Beacon, 8 Diamond Blocks, and 4 Amethyst Clusters
#region
execute as @a at @s if entity @n[type=item,distance=..15,nbt={Item:{id:"minecraft:dragon_breath",count:1}}] run execute as @n[type=item,distance=..15,nbt={Item:{id:"minecraft:dragon_breath",count:1}}] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=marker,distance=..16,tag=ArenAEACreate] unless entity @e[type=item_display,distance=..15,tag=ArenAEAltar] if block ~ ~-1 ~ beacon if block ~ ~-2 ~ enchanting_table if block ~1.35 ~-1.5 ~ amethyst_cluster[facing=west] if block ~-1.35 ~-1.5 ~ amethyst_cluster[facing=east] if block ~ ~-1.5 ~1.35 amethyst_cluster[facing=north] if block ~ ~-1.5 ~-1.35 amethyst_cluster[facing=south] if block ~2 ~-2 ~ diamond_block if block ~1 ~-2 ~1 diamond_block if block ~ ~-2 ~2 diamond_block if block ~-1 ~-2 ~1 diamond_block if block ~-2 ~-2 ~ diamond_block if block ~-1 ~-2 ~-1 diamond_block if block ~ ~-2 ~-2 diamond_block if block ~1 ~-2 ~-1 diamond_block run summon marker ~ ~ ~ {Tags:["ArenAEACreate"]}
#endregion


# Tick up score for Gift of Gravity arrows
scoreboard players add @e[type=arrow,tag=ArenGravArrow] aea.ench.gravity_track 1
kill @e[type=arrow,tag=ArenGravArrow,scores={aea.ench.gravity_track=3}]


# Check Arcane Enchanting Altar power (bookshelves nearby, only at 3 blocks out and up to 4 blocks tall, all blocks in that square included)
execute as @e[type=item_display,tag=ArenAEAltar,tag=!ArenAEAInUse] at @s if entity @p[distance=..15] run function rr_aea:ae_altar/core/check_bookshelves
execute as @e[type=item_display,tag=ArenAEAltar,tag=!ArenAEAInUse] at @s if entity @p[distance=..15] run function rr_aea:ae_altar/core/show_altar_power


# Reboot everything if a player does not have an aeaInit tag to enable scoreboard health for them
execute as @r[tag=!aeaInit] run function rr_aea:technical/soft_boot


schedule function rr_aea:technical/3s 3s replace