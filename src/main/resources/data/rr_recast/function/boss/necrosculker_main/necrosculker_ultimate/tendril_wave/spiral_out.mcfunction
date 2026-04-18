$execute positioned ^ ^ ^ run summon marker ~ ~-1.5 ~ {Tags:[rr.boss.ns_void.ticking,RunicNSUTendril,RunicNSUTendrilSet,"RunicNSUTendrilSpiralA","RunicNSUTendrilSpiralA1",RunicNSUTendrilWaveSetup],data:{rr_recast:{tendril_wave:{speed:$(speed),angle:$(angle)}}},Rotation:[$(spawn_angle)f,0.0f]}
$execute positioned ^ ^ ^ run summon marker ~ ~-1.5 ~ {Tags:[rr.boss.ns_void.ticking,RunicNSUTendril,RunicNSUTendrilSet,"RunicNSUTendrilSpiralA","RunicNSUTendrilSpiralA2",RunicNSUTendrilWaveSetup],data:{rr_recast:{tendril_wave:{speed:$(speed),angle:$(angle)}}},Rotation:[$(spawn_angle)f,0.0f]}
$execute positioned ^ ^ ^ run summon marker ~ ~-1.5 ~ {Tags:[rr.boss.ns_void.ticking,RunicNSUTendril,RunicNSUTendrilSet,"RunicNSUTendrilSpiralA","RunicNSUTendrilSpiralA3",RunicNSUTendrilWaveSetup],data:{rr_recast:{tendril_wave:{speed:$(speed),angle:$(angle)}}},Rotation:[$(spawn_angle)f,0.0f]}
$execute positioned ^ ^ ^ run summon marker ~ ~-1.5 ~ {Tags:[rr.boss.ns_void.ticking,RunicNSUTendril,RunicNSUTendrilSet,"RunicNSUTendrilSpiralA","RunicNSUTendrilSpiralA4",RunicNSUTendrilWaveSetup],data:{rr_recast:{tendril_wave:{speed:$(speed),angle:$(angle)}}},Rotation:[$(spawn_angle)f,0.0f]}
$execute positioned ^ ^ ^ run summon marker ~ ~-1.5 ~ {Tags:[rr.boss.ns_void.ticking,RunicNSUTendril,RunicNSUTendrilSet,"RunicNSUTendrilSpiralA","RunicNSUTendrilSpiralA5",RunicNSUTendrilWaveSetup],data:{rr_recast:{tendril_wave:{speed:$(speed),angle:$(angle)}}},Rotation:[$(spawn_angle)f,0.0f]}
$execute positioned ^ ^ ^ run summon marker ~ ~-1.5 ~ {Tags:[rr.boss.ns_void.ticking,RunicNSUTendril,RunicNSUTendrilSet,"RunicNSUTendrilSpiralA","RunicNSUTendrilSpiralA6",RunicNSUTendrilWaveSetup],data:{rr_recast:{tendril_wave:{speed:$(speed),angle:$(angle)}}},Rotation:[$(spawn_angle)f,0.0f]}
$execute positioned ^ ^ ^ run summon marker ~ ~-1.5 ~ {Tags:[rr.boss.ns_void.ticking,RunicNSUTendril,RunicNSUTendrilSet,"RunicNSUTendrilSpiralA","RunicNSUTendrilSpiralA7",RunicNSUTendrilWaveSetup],data:{rr_recast:{tendril_wave:{speed:$(speed),angle:$(angle)}}},Rotation:[$(spawn_angle)f,0.0f]}
$execute positioned ^ ^ ^ run summon marker ~ ~-1.5 ~ {Tags:[rr.boss.ns_void.ticking,RunicNSUTendril,RunicNSUTendrilSet,"RunicNSUTendrilSpiralA","RunicNSUTendrilSpiralA8",RunicNSUTendrilWaveSetup],data:{rr_recast:{tendril_wave:{speed:$(speed),angle:$(angle)}}},Rotation:[$(spawn_angle)f,0.0f]}

execute as @e[type=marker,tag=RunicNSUTendrilSpiralA2,distance=..4,tag=RunicNSUTendrilWaveSetup] at @s run tp @s ~ ~ ~ ~90 ~
execute as @e[type=marker,tag=RunicNSUTendrilSpiralA3,distance=..4,tag=RunicNSUTendrilWaveSetup] at @s run tp @s ~ ~ ~ ~180 ~
execute as @e[type=marker,tag=RunicNSUTendrilSpiralA4,distance=..4,tag=RunicNSUTendrilWaveSetup] at @s run tp @s ~ ~ ~ ~270 ~
execute as @e[type=marker,tag=RunicNSUTendrilSpiralA5,distance=..4,tag=RunicNSUTendrilWaveSetup] at @s run tp @s ~ ~ ~ ~45 ~
execute as @e[type=marker,tag=RunicNSUTendrilSpiralA6,distance=..4,tag=RunicNSUTendrilWaveSetup] at @s run tp @s ~ ~ ~ ~135 ~
execute as @e[type=marker,tag=RunicNSUTendrilSpiralA7,distance=..4,tag=RunicNSUTendrilWaveSetup] at @s run tp @s ~ ~ ~ ~225 ~
execute as @e[type=marker,tag=RunicNSUTendrilSpiralA8,distance=..4,tag=RunicNSUTendrilWaveSetup] at @s run tp @s ~ ~ ~ ~315 ~
execute as @e[type=marker,tag=RunicNSUTendrilWaveSetup,distance=..4] at @s run tag @s remove RunicNSUTendrilWaveSetup

execute at @s as @a[distance=..40] at @s run playsound minecraft:entity.warden.sonic_charge hostile @s ~ ~ ~ 0.6 0.8 0
execute at @s as @a[distance=..40] at @s run playsound minecraft:entity.ender_dragon.growl hostile @s ~ ~ ~ 0.6 1.6 0
execute at @s as @a[distance=..40] at @s run playsound minecraft:block.respawn_anchor.set_spawn hostile @s ~ ~ ~ 1.5 1.25 0