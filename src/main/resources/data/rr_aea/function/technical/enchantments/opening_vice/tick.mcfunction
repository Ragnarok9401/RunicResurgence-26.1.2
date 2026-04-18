
summon marker ~ ~ ~ {Tags:["aea.ench.opening_marker","aea.ench_effect","aea.marker"]}
execute store result entity @n[type=marker,distance=..1,tag=aea.ench.opening_marker] data.aea.opening_dmg float 0.05 run scoreboard players get @s aea.system.damage_shielded
function rr_aea:technical/enchantments/opening_vice/damage with entity @n[type=marker,distance=..1,tag=aea.ench.opening_marker] data.aea
kill @n[type=marker,distance=..1,tag=aea.ench.opening_marker]

advancement revoke @s only aea_adv:enchantments/opening_vice/use