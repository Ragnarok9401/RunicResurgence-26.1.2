scoreboard players add @s rr.math.index 1
scoreboard players add @s[scores={rr.math.index=41..,rr.math.Tick=..790}] rr.math.Tick 10

# Get necessary scores for calculation
execute store result score @s rr.math.A run data get entity @s data.rr_recast.speed 1000
execute store result score @s rr.math.B run data get entity @s data.rr_recast.speed_max 1000
execute store result score @s rr.math.C run data get entity @s data.rr_recast.weight 4000
# Add Weight to the Max Speed of the projectile
scoreboard players operation @s rr.math.B += @s rr.math.C
execute store result score @s rr.math.X run data get entity @s Rotation[1] 11.1111111
execute store result score @s rr.math.Y run data get entity @s Rotation[1] 11.1111111

# rr.math.X represents Pitch overall between -1000 (looking up) and 1000 (looking down)
# Speed should be multiplied by (X * 0.002) (clamps between -2 and 2), and then placed back into Speed data
# If Speed <= 0, set Speed to 1. If Speed > Max Speed, set Speed to Max Speed
scoreboard players remove @s rr.math.X 100
scoreboard players add @s rr.math.Y 1000

execute as @s[scores={rr.math.X=1000..}] run scoreboard players operation @s rr.math.A *= @s rr.math.X
execute as @s[scores={rr.math.X=1000..}] run scoreboard players operation @s rr.math.A -= @s rr.math.C
execute as @s[scores={rr.math.X=1000..}] run scoreboard players operation @s rr.math.A /= @s rr.math.X
execute as @s[scores={rr.math.Y=1000..}] run scoreboard players operation @s rr.math.A *= @s rr.math.Y
execute as @s[scores={rr.math.Y=1000..}] run scoreboard players operation @s rr.math.A += @s rr.math.C
execute as @s[scores={rr.math.Y=1000..}] run scoreboard players operation @s rr.math.A /= @s rr.math.Y
scoreboard players set @s[scores={rr.math.A=..0}] rr.math.A 1
execute if score @s rr.math.A > @s rr.math.B run scoreboard players operation @s rr.math.A = @s rr.math.B

execute store result entity @s data.rr_recast.speed float 0.001 run scoreboard players get @s rr.math.A


# If 2 seconds have not passed, don't calculate rotation
execute if score @s rr.math.index matches ..40 run return 1


execute store result score @s rr.math.C run data get entity @s data.rr_recast.pitch_final 1000
execute if score @s rr.math.C matches ..-1 store result entity @s data.rr_recast.pitch_final float -0.001 run data get entity @s data.rr_recast.pitch_final 1000


# rr.math.X represents Pitch overall between -1000 and 1000
# Pitch should be changed by 100 (1 degree) until Pitch Final is reached (if rr.math.X > rr.math.Y)
execute store result score @s rr.math.X run data get entity @s Rotation[1] 100
execute store result score @s rr.math.Y run data get entity @s data.rr_recast.pitch_final 100

execute store result score @s rr.math.B run data get entity @s data.rr_recast.weight 30
scoreboard players operation @s rr.math.X += @s rr.math.B

scoreboard players add @s rr.math.X 8000
execute as @s[tag=!rr.tomahawk.falling] if score @s rr.math.X > @s rr.math.Y run tag @s add rr.tomahawk.falling
scoreboard players remove @s rr.math.X 8000

execute store result entity @s Rotation[1] float 0.01 run scoreboard players get @s rr.math.X