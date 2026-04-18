execute unless score @s aea.math.B matches 0.. store result score @s aea.math.B run data get entity @n[type=arrow,distance=..1] weapon.components."minecraft:enchantments"."rr_aea:recursion"
execute unless score @s aea.ench.recursion_timer matches 0.. run scoreboard players operation @s aea.ench.recursion_timer = $config aea.config.recursion_time
execute if score @s aea.ench.recursion_timer matches ..-1 run scoreboard players set @s aea.ench.recursion_timer 15
scoreboard players remove @s aea.ench.recursion_timer 1
execute if score @s aea.ench.recursion_timer matches 0 run function rr_aea:technical/enchantments/recursion/set_arrow_data with entity @s data.aea
execute if score @s aea.ench.recursion_timer matches 0 run scoreboard players remove @s aea.math.B 1
execute if score @s aea.ench.recursion_timer matches 0 if score @s aea.math.B matches 0 run kill @s

execute if score @s aea.ench.recursion_timer matches 0 run scoreboard players operation @s aea.ench.recursion_timer = $config aea.config.recursion_time
execute if score @s aea.ench.recursion_timer matches ..-1 run scoreboard players set @s aea.ench.recursion_timer 15