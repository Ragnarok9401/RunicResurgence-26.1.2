# Set current "target" level to 0
execute as @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] unless score @s aea.math.F = @s aea.math.D run scoreboard players operation @s aea.system.level_difference = @s aea.math.D
execute as @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] unless score @s aea.math.F = @s aea.math.D run scoreboard players operation @s aea.system.level_difference -= @s aea.system.level_base
execute as @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] unless score @s aea.math.F = @s aea.math.D run scoreboard players operation @s aea.math.F = @s aea.math.D

playsound minecraft:entity.ender_eye.death player @a[distance=..15] ~ ~ ~ 0.9 0.675 0

execute as @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] if score @s aea.math.F matches 0 run data modify entity @e[type=item_display,tag=ArenAEASoulLvl,limit=1,sort=nearest] item.components.minecraft:item_model set value "aea:icon/level_0"

# Replace current interaction with a new one to refresh the Interaction timestamps
summon interaction ~ ~ ~ {width:0.25f,height:0.25f,response:true,Tags:[aea.altar.entity,"ArenAEASoulDown2","ArenAEAIMain"]}
kill @s