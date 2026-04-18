# Boost Max Health by 1.00 per point of add_health on chestplate
execute store result score @s sbhp.math.Health_A run data get entity @s equipment.chest.components."minecraft:custom_data"."sbhp.equipment".add_health 100
scoreboard players operation @s sbhp.math.Health_B += @s sbhp.math.Health_A
scoreboard players set @s sbhp.math.Health_A 0

# Boost Max Health by 20 per level of Bolster
execute store result score @s sbhp.math.Health_A run data get entity @s equipment.chest.components."minecraft:enchantments"."sbhp:bolster" 2000
scoreboard players operation @s sbhp.math.Health_B += @s sbhp.math.Health_A
scoreboard players set @s sbhp.math.Health_A 0