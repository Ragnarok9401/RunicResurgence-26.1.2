execute store result score @s aea.math.A run data get entity @s equipment.body.components."minecraft:enchantments"."rr_aea:slipstream"
attribute @s flying_speed modifier remove rr_aea:slipstream.flying_speed
execute if score @s aea.math.A matches 5.. run function rr_aea:technical/enchantments/slipstream/apply_flying_speed_5
execute if score @s aea.math.A matches 5.. run return 0
execute if score @s aea.math.A matches 1 run function rr_aea:technical/enchantments/slipstream/apply_flying_speed_1
execute if score @s aea.math.A matches 2 run function rr_aea:technical/enchantments/slipstream/apply_flying_speed_2
execute if score @s aea.math.A matches 3 run function rr_aea:technical/enchantments/slipstream/apply_flying_speed_3
execute if score @s aea.math.A matches 4 run function rr_aea:technical/enchantments/slipstream/apply_flying_speed_4