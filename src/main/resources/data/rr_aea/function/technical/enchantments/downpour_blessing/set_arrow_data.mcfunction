$summon arrow ~$(pos_x) ~4 ~$(pos_z) $(arrow_data)
$execute positioned ~$(pos_x) ~4 ~$(pos_z) as @n[type=#minecraft:arrows,distance=..1,tag=!ArenDownpourSummon] at @s run function rr_aea:technical/enchantments/downpour_blessing/set_motion
$execute positioned ~$(pos_x) ~4 ~$(pos_z) run data modify entity @n[type=minecraft:arrow,distance=..1.5] Motion set value [$(motion_x)d,-1.5d,$(motion_z)d]
$execute positioned ~$(pos_x) ~4 ~$(pos_z) run tag @n[type=#minecraft:arrows,distance=..1,tag=!ArenDownpourSummon] add ArenDownpourSummon
$execute positioned ~$(pos_x) ~4 ~$(pos_z) run playsound minecraft:entity.arrow.shoot player @a[distance=..15] ~ ~ ~ 0.5 1.5 0
$execute positioned ~$(pos_x) ~4 ~$(pos_z) run playsound minecraft:entity.allay.death player @a[distance=..15] ~ ~ ~ 0.2 1.75 0

$execute positioned ~$(pos_x) ~4 ~$(pos_z) run particle glow ~ ~ ~ 0.125 0.125 0.125 0.125 2 normal