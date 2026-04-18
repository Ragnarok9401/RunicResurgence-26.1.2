# Boost Max Health by 1.00 per point of add_health on leggings
execute store result score @s sbhp.math.Health_A run data get entity @s equipment.legs.components."minecraft:custom_data"."sbhp.equipment".add_health 100
scoreboard players operation @s sbhp.math.Health_B += @s sbhp.math.Health_A
scoreboard players reset @s sbhp.math.Health_A