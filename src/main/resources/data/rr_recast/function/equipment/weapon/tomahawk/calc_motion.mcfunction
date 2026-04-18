scoreboard players add @s rr.math.index 1

# Add Speed to base Motion
execute as @s[scores={rr.math.index=1}] store result score @s rr.math.A run data get entity @s data.rr_recast.motion_x 1000
execute as @s[scores={rr.math.index=1}] store result score @s rr.math.B run data get entity @s data.rr_recast.motion_y 1000
execute as @s[scores={rr.math.index=1}] store result score @s rr.math.C run data get entity @s data.rr_recast.motion_z 1000

execute as @s[scores={rr.math.index=1}] store result score @s rr.math.X run data get entity @s data.rr_recast.speed 100
execute as @s[scores={rr.math.index=1}] run scoreboard players operation @s rr.math.A *= @s rr.math.X
execute as @s[scores={rr.math.index=1}] run scoreboard players operation @s rr.math.B *= @s rr.math.X
execute as @s[scores={rr.math.index=1}] run scoreboard players operation @s rr.math.C *= @s rr.math.X
execute as @s[scores={rr.math.index=1}] run scoreboard players set @s rr.math.X 100
execute as @s[scores={rr.math.index=1}] store result entity @s data.rr_recast.motion_x float 0.001 run scoreboard players operation @s rr.math.A /= @s rr.math.X
execute as @s[scores={rr.math.index=1}] store result entity @s data.rr_recast.motion_y float 0.001 run scoreboard players operation @s rr.math.B /= @s rr.math.X
execute as @s[scores={rr.math.index=1}] store result entity @s data.rr_recast.motion_z float 0.001 run scoreboard players operation @s rr.math.C /= @s rr.math.X

# Multiply Damage by Motion Data
execute store result score @s rr.math.A run data get entity @s data.rr_recast.motion_x 100
execute if score @s rr.math.A matches ..-1 run execute store result score @s rr.math.A run data get entity @s data.rr_recast.motion_x -100
execute store result score @s rr.math.B run data get entity @s data.rr_recast.motion_y 100
execute if score @s rr.math.B matches ..-1 run execute store result score @s rr.math.B run data get entity @s data.rr_recast.motion_y -100
execute store result score @s rr.math.C run data get entity @s data.rr_recast.motion_z 100
execute if score @s rr.math.C matches ..-1 run execute store result score @s rr.math.C run data get entity @s data.rr_recast.motion_z -100
scoreboard players operation @s rr.math.A += @s rr.math.B
scoreboard players operation @s rr.math.A += @s rr.math.C
scoreboard players set @s rr.math.B 3
scoreboard players operation @s rr.math.A /= @s rr.math.B
execute store result score @s rr.math.C run data get entity @s data.rr_recast.damage_base 100
execute store result entity @s data.rr_recast.damage float 0.0002 run scoreboard players operation @s rr.math.A *= @s rr.math.C
execute store result score @p rr.system.display run data get entity @s data.rr_recast.damage 100

# If 1 second has not passed, don't calculate
execute if score @s rr.math.index matches ..20 run return 1


# After 1 second has passed, reduce Vertical Motion by 0.08 and multiply all Motion values by 0.98
execute store result score @s rr.math.A run data get entity @s data.rr_recast.motion_x 1000
execute store result score @s rr.math.B run data get entity @s data.rr_recast.motion_y 1000
execute store result score @s rr.math.C run data get entity @s data.rr_recast.motion_z 1000

# Reduce Vertical Motion by Weight
execute store result score @s rr.math.X run data get entity @s data.rr_recast.weight 10
scoreboard players operation @s rr.math.B -= @s rr.math.X

# Multiply each Motion data by (Weight/Weight+1)
execute store result score @s rr.math.X run data get entity @s data.rr_recast.weight 50
scoreboard players operation @s rr.math.A *= @s rr.math.X
scoreboard players operation @s rr.math.B *= @s rr.math.X
scoreboard players operation @s rr.math.C *= @s rr.math.X
scoreboard players add @s rr.math.X 1
execute store result entity @s data.rr_recast.motion_x float 0.001 run scoreboard players operation @s rr.math.A /= @s rr.math.X
execute store result entity @s data.rr_recast.motion_y float 0.001 run scoreboard players operation @s rr.math.B /= @s rr.math.X
execute store result entity @s data.rr_recast.motion_z float 0.001 run scoreboard players operation @s rr.math.C /= @s rr.math.X

# Multiply each Motion data by 0.8 if in Motion-Reducing Blocks
execute as @s at @s if block ~ ~ ~ #rr_recast:reduces_projectile_motion run scoreboard players set @s rr.math.X 80
execute as @s at @s if block ~ ~ ~ #rr_recast:reduces_projectile_motion run scoreboard players operation @s rr.math.A *= @s rr.math.X
execute as @s at @s if block ~ ~ ~ #rr_recast:reduces_projectile_motion run scoreboard players operation @s rr.math.B *= @s rr.math.X
execute as @s at @s if block ~ ~ ~ #rr_recast:reduces_projectile_motion run scoreboard players operation @s rr.math.C *= @s rr.math.X
execute as @s at @s if block ~ ~ ~ #rr_recast:reduces_projectile_motion run scoreboard players set @s rr.math.X 100
execute as @s at @s if block ~ ~ ~ #rr_recast:reduces_projectile_motion run execute store result entity @s data.rr_recast.motion_x float 0.001 run scoreboard players operation @s rr.math.A /= @s rr.math.X
execute as @s at @s if block ~ ~ ~ #rr_recast:reduces_projectile_motion run execute store result entity @s data.rr_recast.motion_y float 0.001 run scoreboard players operation @s rr.math.B /= @s rr.math.X
execute as @s at @s if block ~ ~ ~ #rr_recast:reduces_projectile_motion run execute store result entity @s data.rr_recast.motion_z float 0.001 run scoreboard players operation @s rr.math.C /= @s rr.math.X


# Calculate Facing direction
execute store result score @s rr.math.A run data get entity @s data.rr_recast.motion_x 1000
execute store result score @s rr.math.B run data get entity @s data.rr_recast.motion_y 1000
execute store result score @s rr.math.C run data get entity @s data.rr_recast.motion_z 1000

# Reduce Vertical Motion by Weight
execute store result score @s rr.math.X run data get entity @s data.rr_recast.weight 10
scoreboard players operation @s rr.math.B -= @s rr.math.X

# Multiply each Motion data by (Weight/Weight+1)
execute store result score @s rr.math.X run data get entity @s data.rr_recast.weight 50
scoreboard players operation @s rr.math.A *= @s rr.math.X
scoreboard players operation @s rr.math.B *= @s rr.math.X
scoreboard players operation @s rr.math.C *= @s rr.math.X
scoreboard players add @s rr.math.X 1
execute store result entity @s data.rr_recast.facing_x float 0.0015 run scoreboard players operation @s rr.math.A /= @s rr.math.X
execute store result entity @s data.rr_recast.facing_y float 0.0015 run scoreboard players operation @s rr.math.B /= @s rr.math.X
execute store result entity @s data.rr_recast.facing_z float 0.0015 run scoreboard players operation @s rr.math.C /= @s rr.math.X

# Multiply each Motion data by 0.8 if in Motion-Reducing Blocks
execute as @s at @s if block ~ ~ ~ #rr_recast:reduces_projectile_motion run scoreboard players set @s rr.math.X 80
execute as @s at @s if block ~ ~ ~ #rr_recast:reduces_projectile_motion run scoreboard players operation @s rr.math.A *= @s rr.math.X
execute as @s at @s if block ~ ~ ~ #rr_recast:reduces_projectile_motion run scoreboard players operation @s rr.math.B *= @s rr.math.X
execute as @s at @s if block ~ ~ ~ #rr_recast:reduces_projectile_motion run scoreboard players operation @s rr.math.C *= @s rr.math.X
execute as @s at @s if block ~ ~ ~ #rr_recast:reduces_projectile_motion run scoreboard players set @s rr.math.X 100
execute as @s at @s if block ~ ~ ~ #rr_recast:reduces_projectile_motion run execute store result entity @s data.rr_recast.facing_x float 0.0015 run scoreboard players operation @s rr.math.A /= @s rr.math.X
execute as @s at @s if block ~ ~ ~ #rr_recast:reduces_projectile_motion run execute store result entity @s data.rr_recast.facing_y float 0.0015 run scoreboard players operation @s rr.math.B /= @s rr.math.X
execute as @s at @s if block ~ ~ ~ #rr_recast:reduces_projectile_motion run execute store result entity @s data.rr_recast.facing_z float 0.0015 run scoreboard players operation @s rr.math.C /= @s rr.math.X