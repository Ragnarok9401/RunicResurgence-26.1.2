# Apply new motion to first hit of Rebound arrows
execute as @s[type=arrow,tag=ArenReboundArrow,tag=ArenRebounding,nbt={inGround:false}] at @s run function rr_aea:technical/enchantments/rebound/apply_motion with entity @s data.aea.motion
execute as @s[type=arrow,tag=ArenReboundArrow,tag=ArenRebounding,nbt={inGround:false}] at @s run tag @s remove ArenRebounding

# Store Motion data in tags
execute as @s[type=arrow,tag=ArenReboundArrow] at @s store result entity @s data.aea.motion.x float -0.0001 run data get entity @s Motion[0] 11000
execute as @s[type=arrow,tag=ArenReboundArrow] at @s store result entity @s data.aea.motion.y float -0.0001 run data get entity @s Motion[1] 11000
execute as @s[type=arrow,tag=ArenReboundArrow] at @s store result entity @s data.aea.motion.z float -0.0001 run data get entity @s Motion[2] 11000