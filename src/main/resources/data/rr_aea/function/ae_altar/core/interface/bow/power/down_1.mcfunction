# If subtracting 1 would go below 0 in the Marker's scoreboards, display a message
execute as @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] if score @s aea.math.F = @s aea.math.D run title @p[distance=..15] actionbar {"text":"Enchantment may not go below level 0","color":"red","italic":false}

# Add 1 to the "target" level for the Marker
execute as @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] unless score @s aea.math.F = @s aea.math.D run scoreboard players remove @s aea.system.level_difference 1
execute as @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] unless score @s aea.math.F = @s aea.math.D run scoreboard players remove @s aea.math.F 1


execute as @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] if score @s aea.math.F matches 0 run playsound minecraft:entity.ender_eye.death player @a[distance=..15] ~ ~ ~ 0.9 0.675 0
execute as @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] if score @s aea.math.F matches 1 run playsound minecraft:entity.ender_eye.death player @a[distance=..15] ~ ~ ~ 0.9 0.75125 0
execute as @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] if score @s aea.math.F matches 2 run playsound minecraft:entity.ender_eye.death player @a[distance=..15] ~ ~ ~ 0.9 0.85 0
execute as @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] if score @s aea.math.F matches 3 run playsound minecraft:entity.ender_eye.death player @a[distance=..15] ~ ~ ~ 0.9 0.9 0
execute as @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] if score @s aea.math.F matches 4 run playsound minecraft:entity.ender_eye.death player @a[distance=..15] ~ ~ ~ 0.9 1 0
execute as @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] if score @s aea.math.F matches 5 run playsound minecraft:entity.ender_eye.death player @a[distance=..15] ~ ~ ~ 0.9 1.125 0
execute as @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] if score @s aea.math.F matches 6 run playsound minecraft:entity.ender_eye.death player @a[distance=..15] ~ ~ ~ 0.9 1.2875 0
execute as @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] if score @s aea.math.F matches 7 run playsound minecraft:entity.ender_eye.death player @a[distance=..15] ~ ~ ~ 0.9 1.35 0

execute as @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] if score @s aea.math.F matches 7 run data modify entity @e[type=item_display,tag=ArenAEAPowerLvl,limit=1,sort=nearest] item.components.minecraft:item_model set value "aea:icon/level_7"
execute as @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] if score @s aea.math.F matches 6 run data modify entity @e[type=item_display,tag=ArenAEAPowerLvl,limit=1,sort=nearest] item.components.minecraft:item_model set value "aea:icon/level_6"
execute as @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] if score @s aea.math.F matches 5 run data modify entity @e[type=item_display,tag=ArenAEAPowerLvl,limit=1,sort=nearest] item.components.minecraft:item_model set value "aea:icon/level_5"
execute as @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] if score @s aea.math.F matches 4 run data modify entity @e[type=item_display,tag=ArenAEAPowerLvl,limit=1,sort=nearest] item.components.minecraft:item_model set value "aea:icon/level_4"
execute as @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] if score @s aea.math.F matches 3 run data modify entity @e[type=item_display,tag=ArenAEAPowerLvl,limit=1,sort=nearest] item.components.minecraft:item_model set value "aea:icon/level_3"
execute as @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] if score @s aea.math.F matches 2 run data modify entity @e[type=item_display,tag=ArenAEAPowerLvl,limit=1,sort=nearest] item.components.minecraft:item_model set value "aea:icon/level_2"
execute as @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] if score @s aea.math.F matches 1 run data modify entity @e[type=item_display,tag=ArenAEAPowerLvl,limit=1,sort=nearest] item.components.minecraft:item_model set value "aea:icon/level_1"
execute as @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] if score @s aea.math.F matches 0 run data modify entity @e[type=item_display,tag=ArenAEAPowerLvl,limit=1,sort=nearest] item.components.minecraft:item_model set value "aea:icon/level_0"

# Replace current interaction with a new one to refresh the Interaction timestamps
summon interaction ~ ~ ~ {width:0.25f,height:0.25f,response:true,Tags:[aea.altar.entity,"ArenAEAPowerDown1","ArenAEAIMain"]}
kill @s