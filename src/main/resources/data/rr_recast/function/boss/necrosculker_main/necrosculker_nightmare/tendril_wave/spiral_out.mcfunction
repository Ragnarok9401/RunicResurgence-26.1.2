$execute positioned ^ ^ ^ run summon marker ~ ~-1.5 ~ {Tags:[rr.boss.ns_nightmare.ticking,RunicNSNTendril,RunicNSNTendrilSet,"RunicNSNTendrilSpiralA","RunicNSNTendrilSpiralA1",RunicNSNTendrilWaveSetup],data:{rr_recast:{tendril_wave:{speed:$(speed),angle:$(angle)}}},Rotation:[$(spawn_angle)f,0.0f]}
$execute positioned ^ ^ ^ run summon marker ~ ~-1.5 ~ {Tags:[rr.boss.ns_nightmare.ticking,RunicNSNTendril,RunicNSNTendrilSet,"RunicNSNTendrilSpiralA","RunicNSNTendrilSpiralA2",RunicNSNTendrilWaveSetup],data:{rr_recast:{tendril_wave:{speed:$(speed),angle:$(angle)}}},Rotation:[$(spawn_angle)f,0.0f]}
$execute positioned ^ ^ ^ run summon marker ~ ~-1.5 ~ {Tags:[rr.boss.ns_nightmare.ticking,RunicNSNTendril,RunicNSNTendrilSet,"RunicNSNTendrilSpiralA","RunicNSNTendrilSpiralA3",RunicNSNTendrilWaveSetup],data:{rr_recast:{tendril_wave:{speed:$(speed),angle:$(angle)}}},Rotation:[$(spawn_angle)f,0.0f]}
$execute positioned ^ ^ ^ run summon marker ~ ~-1.5 ~ {Tags:[rr.boss.ns_nightmare.ticking,RunicNSNTendril,RunicNSNTendrilSet,"RunicNSNTendrilSpiralA","RunicNSNTendrilSpiralA4",RunicNSNTendrilWaveSetup],data:{rr_recast:{tendril_wave:{speed:$(speed),angle:$(angle)}}},Rotation:[$(spawn_angle)f,0.0f]}
$execute positioned ^ ^ ^ run summon marker ~ ~-1.5 ~ {Tags:[rr.boss.ns_nightmare.ticking,RunicNSNTendril,RunicNSNTendrilSet,"RunicNSNTendrilSpiralA","RunicNSNTendrilSpiralA5",RunicNSNTendrilWaveSetup],data:{rr_recast:{tendril_wave:{speed:$(speed),angle:$(angle)}}},Rotation:[$(spawn_angle)f,0.0f]}
$execute positioned ^ ^ ^ run summon marker ~ ~-1.5 ~ {Tags:[rr.boss.ns_nightmare.ticking,RunicNSNTendril,RunicNSNTendrilSet,"RunicNSNTendrilSpiralA","RunicNSNTendrilSpiralA6",RunicNSNTendrilWaveSetup],data:{rr_recast:{tendril_wave:{speed:$(speed),angle:$(angle)}}},Rotation:[$(spawn_angle)f,0.0f]}
$execute positioned ^ ^ ^ run summon marker ~ ~-1.5 ~ {Tags:[rr.boss.ns_nightmare.ticking,RunicNSNTendril,RunicNSNTendrilSet,"RunicNSNTendrilSpiralA","RunicNSNTendrilSpiralA7",RunicNSNTendrilWaveSetup],data:{rr_recast:{tendril_wave:{speed:$(speed),angle:$(angle)}}},Rotation:[$(spawn_angle)f,0.0f]}
$execute positioned ^ ^ ^ run summon marker ~ ~-1.5 ~ {Tags:[rr.boss.ns_nightmare.ticking,RunicNSNTendril,RunicNSNTendrilSet,"RunicNSNTendrilSpiralA","RunicNSNTendrilSpiralA8",RunicNSNTendrilWaveSetup],data:{rr_recast:{tendril_wave:{speed:$(speed),angle:$(angle)}}},Rotation:[$(spawn_angle)f,0.0f]}

execute as @e[type=marker,tag=RunicNSNTendrilSpiralA2,distance=..4,tag=RunicNSNTendrilWaveSetup] at @s run tp @s ~ ~ ~ ~90 ~
execute as @e[type=marker,tag=RunicNSNTendrilSpiralA3,distance=..4,tag=RunicNSNTendrilWaveSetup] at @s run tp @s ~ ~ ~ ~180 ~
execute as @e[type=marker,tag=RunicNSNTendrilSpiralA4,distance=..4,tag=RunicNSNTendrilWaveSetup] at @s run tp @s ~ ~ ~ ~270 ~
execute as @e[type=marker,tag=RunicNSNTendrilSpiralA5,distance=..4,tag=RunicNSNTendrilWaveSetup] at @s run tp @s ~ ~ ~ ~45 ~
execute as @e[type=marker,tag=RunicNSNTendrilSpiralA6,distance=..4,tag=RunicNSNTendrilWaveSetup] at @s run tp @s ~ ~ ~ ~135 ~
execute as @e[type=marker,tag=RunicNSNTendrilSpiralA7,distance=..4,tag=RunicNSNTendrilWaveSetup] at @s run tp @s ~ ~ ~ ~225 ~
execute as @e[type=marker,tag=RunicNSNTendrilSpiralA8,distance=..4,tag=RunicNSNTendrilWaveSetup] at @s run tp @s ~ ~ ~ ~315 ~
execute as @e[type=marker,tag=RunicNSNTendrilWaveSetup,distance=..4] at @s run tag @s remove RunicNSNTendrilWaveSetup

execute at @s as @a[distance=..40] at @s run playsound minecraft:entity.warden.sonic_charge hostile @s ~ ~ ~ 0.6 0.8 0
execute at @s as @a[distance=..40] at @s run playsound minecraft:entity.ender_dragon.growl hostile @s ~ ~ ~ 0.6 1.6 0
execute at @s as @a[distance=..40] at @s run playsound minecraft:block.respawn_anchor.set_spawn hostile @s ~ ~ ~ 1.5 1.25 0