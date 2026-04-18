summon marker ~ ~ ~ {Tags:["aea.enchantment.downpour_marker","aea.ench_effect","aea.marker"]}

execute as @s at @s if data entity @s weapon.components."minecraft:enchantments"."rr_aea:downpour" run scoreboard players operation @e[type=marker,distance=..10,tag=aea.enchantment.downpour_marker,tag=!ArenDownpourMarkerSet] aea.ench.downpour_timer = $config aea.config.downpour_time