summon marker ~ ~ ~ {Tags:["aea.enchantment.recursion_marker","aea.ench_effect","aea.marker"]}

execute as @s at @s if data entity @s weapon.components."minecraft:enchantments"."rr_aea:recursion" run scoreboard players operation @e[type=marker,distance=..10,tag=aea.enchantment.recursion_marker,tag=!ArenRecursionMarkerSet] aea.ench.recursion_timer = $config aea.config.recursion_time