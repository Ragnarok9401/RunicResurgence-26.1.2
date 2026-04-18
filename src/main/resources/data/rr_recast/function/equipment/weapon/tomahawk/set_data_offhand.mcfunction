data modify entity @s data.rr_recast.item set from entity @s item
data modify entity @s data.rr_recast.damage_type set value "rr_recast:tomahawk"
# Store the target Pitch in math.C for modification
execute store result entity @s data.rr_recast.pitch_final int 0.001 run data get entity @s Rotation[1] -1000
# Store the target Pitch in math.C for future comparison
execute store result score @s rr.math.C run data get entity @s Rotation[1] -1000
execute store result entity @s data.rr_recast.damage_base float 0.01 run data get entity @p[distance=..4] equipment.offhand.components."minecraft:custom_data"."rr.tomahawk_dmg" 100
execute store result entity @s data.rr_recast.damage float 0.01 run data get entity @p[distance=..4] equipment.offhand.components."minecraft:custom_data"."rr.tomahawk_dmg" 100
execute store result entity @s data.rr_recast.crit_damage float 0.005 run data get entity @p[distance=..4] equipment.offhand.components."minecraft:custom_data"."rr.tomahawk_dmg" 100
execute store result entity @s data.rr_recast.weight float 0.01 run data get entity @p[distance=..4] equipment.offhand.components."minecraft:custom_data"."rr.tomahawk_weight" 100
execute store result entity @s data.rr_recast.speed float 0.01 run data get entity @p[distance=..4] equipment.offhand.components."minecraft:custom_data"."rr.tomahawk_speed" 100
execute store result entity @s data.rr_recast.speed_max float 0.01 run data get entity @p[distance=..4] equipment.offhand.components."minecraft:custom_data"."rr.tomahawk_speed" 200
execute store result entity @s data.rr_recast.dmg_distance float 0.005 run data get entity @p[distance=..4] equipment.offhand.components."minecraft:custom_data"."rr.tomahawk_speed" 100
execute store result entity @s data.rr_recast.check_offset float 0.0025 run data get entity @p[distance=..4] equipment.offhand.components."minecraft:custom_data"."rr.tomahawk_speed" 100

# execute store result score @s[predicate=rr_recast:held_items/offhand/equipment/weapon/tomahawk/netherite_tomahawk,predicate=!rr_recast:held_items/mainhand/equipment/weapon/tomahawk/netherite_tomahawk] rr.math.A run data get entity @s equipment.offhand.components."minecraft:custom_data"."rr.count" 1
# scoreboard players add @s[gamemode=creative] rr.math.A 1

# item modify entity @s[predicate=rr_recast:held_items/offhand/equipment/weapon/tomahawk/netherite_tomahawk,predicate=!rr_recast:held_items/mainhand/equipment/weapon/tomahawk/netherite_tomahawk,scores={rr.math.A=4}] weapon.offhand {function:set_custom_data,tag:{rr.count:3}}
# item modify entity @s[predicate=rr_recast:held_items/offhand/equipment/weapon/tomahawk/netherite_tomahawk,predicate=!rr_recast:held_items/mainhand/equipment/weapon/tomahawk/netherite_tomahawk,scores={rr.math.A=3}] weapon.offhand {function:set_custom_data,tag:{rr.count:2}}
# item modify entity @s[predicate=rr_recast:held_items/offhand/equipment/weapon/tomahawk/netherite_tomahawk,predicate=!rr_recast:held_items/mainhand/equipment/weapon/tomahawk/netherite_tomahawk,scores={rr.math.A=2}] weapon.offhand {function:set_custom_data,tag:{rr.count:1}}
# item modify entity @s[predicate=rr_recast:held_items/offhand/equipment/weapon/tomahawk/netherite_tomahawk,predicate=!rr_recast:held_items/mainhand/equipment/weapon/tomahawk/netherite_tomahawk,scores={rr.math.A=1}] weapon.offhand {function:set_custom_data,tag:{rr.count:0}}

execute as @s at @s rotated as @s run function rr_recast:equipment/weapon/tomahawk/set_motion_data