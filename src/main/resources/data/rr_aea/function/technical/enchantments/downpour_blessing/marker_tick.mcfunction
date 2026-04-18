
execute unless score @s aea.ench.downpour_timer matches 0.. run scoreboard players operation @s aea.ench.downpour_timer = $config aea.config.downpour_time
execute if score @s aea.ench.downpour_timer matches ..-1 run scoreboard players set @s aea.ench.downpour_timer 5
scoreboard players remove @s aea.ench.downpour_timer 1

execute if score @s aea.ench.downpour_timer matches 1 store result entity @s data.aea.pos_x float 0.1 run random value -1..1
execute if score @s aea.ench.downpour_timer matches 1 store result entity @s data.aea.pos_z float 0.1 run random value -1..1
execute if score @s aea.ench.downpour_timer matches 1 store result entity @s data.aea.motion_x double 0.01 run random value -35..35
execute if score @s aea.ench.downpour_timer matches 1 store result entity @s data.aea.motion_z double 0.01 run random value -35..35
execute if score @s aea.ench.downpour_timer matches 0 run function rr_aea:technical/enchantments/downpour_blessing/set_arrow_data with entity @s data.aea
execute if score @s aea.ench.downpour_timer matches 0 run scoreboard players remove @s aea.math.C 1
execute if score @s aea.ench.downpour_timer matches 0 if score @s aea.math.C matches ..0 run kill @s

execute if score @s aea.ench.downpour_timer matches 0 run scoreboard players operation @s aea.ench.downpour_timer = $config aea.config.downpour_time
execute if score @s aea.ench.downpour_timer matches ..0 run scoreboard players set @s aea.ench.downpour_timer 5