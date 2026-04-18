# Summon Marker
execute as @s at @s positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:[rr.tomahawk.pos_marker]}

# Get XYZ/Motion for Tomahawk, Marker, and the Thrower
execute as @s at @s store result score @s rr.system.pos_x run data get entity @s Pos[0] 1000
execute as @s at @s store result score @s rr.system.pos_y run data get entity @s Pos[1] 1000
execute as @s at @s store result score @s rr.system.pos_z run data get entity @s Pos[2] 1000
execute as @n[type=marker,tag=rr.tomahawk.pos_marker,distance=..4] at @s store result score @s rr.system.pos_x run data get entity @s Pos[0] 1000
execute as @n[type=marker,tag=rr.tomahawk.pos_marker,distance=..4] at @s store result score @s rr.system.pos_y run data get entity @s Pos[1] 1000
execute as @n[type=marker,tag=rr.tomahawk.pos_marker,distance=..4] at @s store result score @s rr.system.pos_z run data get entity @s Pos[2] 1000
execute as @n[type=player,tag=rr.tomahawk.thrower,distance=..4] at @s store result score @s rr.system.pos_x run data get entity @s Motion[0] 1000
execute as @n[type=player,tag=rr.tomahawk.thrower,distance=..4] at @s store result score @s rr.system.pos_y run data get entity @s Motion[1] 1000
execute as @n[type=player,tag=rr.tomahawk.thrower,distance=..4] at @s run scoreboard players add @s rr.system.pos_y 79
execute as @n[type=player,tag=rr.tomahawk.thrower,distance=..4] at @s store result score @s rr.system.pos_z run data get entity @s Motion[2] 1000

# Subtract Tomahawk's Position from Marker's Position, store in Tomahawk's motion data, and add Thrower's Motion data
execute store result score @s rr.system.pos_x run scoreboard players operation @n[type=marker,tag=rr.tomahawk.pos_marker,distance=..4] rr.system.pos_x -= @s rr.system.pos_x
execute store result score @s rr.system.pos_y run scoreboard players operation @n[type=marker,tag=rr.tomahawk.pos_marker,distance=..4] rr.system.pos_y -= @s rr.system.pos_y
execute store result score @s rr.system.pos_z run scoreboard players operation @n[type=marker,tag=rr.tomahawk.pos_marker,distance=..4] rr.system.pos_z -= @s rr.system.pos_z

execute store result entity @s data.rr_recast.motion_x float 0.001 run scoreboard players operation @n[type=player,tag=rr.tomahawk.thrower,distance=..4] rr.system.pos_x += @s rr.system.pos_x
execute store result entity @s data.rr_recast.motion_y float 0.001 run scoreboard players operation @n[type=player,tag=rr.tomahawk.thrower,distance=..4] rr.system.pos_y += @s rr.system.pos_y
execute store result entity @s data.rr_recast.motion_z float 0.001 run scoreboard players operation @n[type=player,tag=rr.tomahawk.thrower,distance=..4] rr.system.pos_z += @s rr.system.pos_z
execute store result entity @s data.rr_recast.facing_x float 0.001 run scoreboard players operation @n[type=player,tag=rr.tomahawk.thrower,distance=..4] rr.system.pos_x += @s rr.system.pos_x
execute store result entity @s data.rr_recast.facing_y float 0.001 run scoreboard players operation @n[type=player,tag=rr.tomahawk.thrower,distance=..4] rr.system.pos_y += @s rr.system.pos_y
execute store result entity @s data.rr_recast.facing_z float 0.001 run scoreboard players operation @n[type=player,tag=rr.tomahawk.thrower,distance=..4] rr.system.pos_z += @s rr.system.pos_z

# Remove marker
kill @e[tag=rr.tomahawk.pos_marker,type=marker,distance=..4]