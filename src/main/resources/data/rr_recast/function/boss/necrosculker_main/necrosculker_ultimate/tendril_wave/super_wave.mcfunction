$execute rotated 0.0 0.0 positioned ^1 ^ ^ run summon marker ~ ~-1.5 ~ {Tags:[rr.boss.ns_void.ticking,RunicNSUTendril,"RunicNSUTendrilSuperSpiral","RunicNSUTendrilSuperSpiral1",RunicNSUTendrilSuperSpiralSetup],data:{rr_recast:{tendril_wave:{speed:$(speed),angle:10.0f}}},Rotation:[0.0f,0.0f]}
$execute rotated 0.0 0.0 positioned ^-1 ^ ^ run summon marker ~ ~-1.5 ~ {Tags:[rr.boss.ns_void.ticking,RunicNSUTendril,"RunicNSUTendrilSuperSpiral","RunicNSUTendrilSuperSpiral2",RunicNSUTendrilSuperSpiralSetup],data:{rr_recast:{tendril_wave:{speed:$(speed),angle:10.0f}}},Rotation:[180.0f,0.0f]}

execute as @e[type=marker,tag=RunicNSUTendrilSuperSpiralSetup,distance=..40] at @s run tag @s remove RunicNSUTendrilSuperSpiralSetup

execute at @s as @a[distance=..40] at @s run playsound minecraft:entity.ender_dragon.hurt hostile @s ~ ~ ~ 1.5 0.4 0