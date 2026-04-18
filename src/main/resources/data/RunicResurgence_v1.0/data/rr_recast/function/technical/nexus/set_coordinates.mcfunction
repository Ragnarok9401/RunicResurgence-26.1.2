summon marker ~ ~ ~ {Tags:[rr.entity,rr.marker,rr.nexus_coords,rr.nexus_marker_unset]}
execute as @n[type=marker,tag=rr.nexus_marker_unset,distance=..20] at @s unless block ~ ~ ~ #rr_recast:spell_passable run tp @s ~ ~1 ~
execute as @n[type=marker,tag=rr.nexus_marker_unset,distance=..20] at @s if block ~ ~ ~ #rr_recast:spell_passable store result entity @s data.rr_recast.nexus_coords.X int 0.1 run data get entity @s Pos[0] 10
execute as @n[type=marker,tag=rr.nexus_marker_unset,distance=..20] at @s if block ~ ~ ~ #rr_recast:spell_passable store result entity @s data.rr_recast.nexus_coords.Y int 0.1 run data get entity @s Pos[1] 10
execute as @n[type=marker,tag=rr.nexus_marker_unset,distance=..20] at @s if block ~ ~ ~ #rr_recast:spell_passable store result entity @s data.rr_recast.nexus_coords.Z int 0.1 run data get entity @s Pos[2] 10

execute as @n[type=marker,tag=rr.nexus_marker_unset,distance=..20] at @s if block ~ ~ ~ #rr_recast:spell_passable run particle wax_on ~ ~ ~ 0.25 0.25 0.25 0.05 8 force @a[distance=..50]
execute as @n[type=marker,tag=rr.nexus_marker_unset,distance=..20] at @s if block ~ ~ ~ #rr_recast:spell_passable run playsound block.respawn_anchor.set_spawn block @a[distance=..20] ~ ~ ~ 0.75 1.1 0
execute as @n[type=marker,tag=rr.nexus_marker_unset,distance=..20] at @s if block ~ ~ ~ #rr_recast:spell_passable run playsound item.trident.thunder block @a[distance=..20] ~ ~ ~ 0.6 1.2 0
execute as @s at @s run function rr_recast:technical/nexus/give_item_with_coordinates with entity @n[type=marker,tag=rr.nexus_marker_unset,distance=..20] data.rr_recast.nexus_coords
kill @e[type=marker,tag=rr.nexus_marker_unset,distance=..20]