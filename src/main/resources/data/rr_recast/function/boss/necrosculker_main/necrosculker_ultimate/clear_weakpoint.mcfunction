tp @n[tag=rr.boss.ns_void.weakpoint,distance=..4,type=!item_display] ~ ~-80 ~
execute positioned ~ ~-80 ~ run kill @n[tag=rr.boss.ns_void.weakpoint,distance=..4,type=!item_display]
scoreboard players set @s rr.system.BossTick 299
tag @s add rr.boss.ns_void.ticking
playsound minecraft:entity.warden.agitated hostile @a[distance=..40] ~ ~ ~ 0.85 0.75 0
playsound minecraft:entity.warden.death hostile @a[distance=..40] ~ ~ ~ 0.65 0.75 0

execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_void.ticking","RunicNSUTendrilSet","RunicNSUWeakpointT1",RunicNSUTendrilOther,"RunicNSUTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.25,angle:0.85}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_void.ticking","RunicNSUTendrilSet","RunicNSUWeakpointT2",RunicNSUTendrilOther,"RunicNSUTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.25,angle:0.85}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_void.ticking","RunicNSUTendrilSet","RunicNSUWeakpointT3",RunicNSUTendrilOther,"RunicNSUTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.25,angle:0.85}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_void.ticking","RunicNSUTendrilSet","RunicNSUWeakpointT4",RunicNSUTendrilOther,"RunicNSUTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.25,angle:0.85}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_void.ticking","RunicNSUTendrilSet","RunicNSUWeakpointT5",RunicNSUTendrilOther,"RunicNSUTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.25,angle:0.85}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_void.ticking","RunicNSUTendrilSet","RunicNSUWeakpointT6",RunicNSUTendrilOther,"RunicNSUTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.25,angle:0.85}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_void.ticking","RunicNSUTendrilSet","RunicNSUWeakpointT7",RunicNSUTendrilOther,"RunicNSUTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.25,angle:0.85}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_void.ticking","RunicNSUTendrilSet","RunicNSUWeakpointT8",RunicNSUTendrilOther,"RunicNSUTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.25,angle:0.85}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_void.ticking","RunicNSUTendrilSet","RunicNSUWeakpointT9",RunicNSUTendrilOther,"RunicNSUTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.25,angle:0.85}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_void.ticking","RunicNSUTendrilSet","RunicNSUWeakpointT10",RunicNSUTendrilOther,"RunicNSUTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.25,angle:0.85}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_void.ticking","RunicNSUTendrilSet","RunicNSUWeakpointT11",RunicNSUTendrilOther,"RunicNSUTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.25,angle:0.85}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_void.ticking","RunicNSUTendrilSet","RunicNSUWeakpointT12",RunicNSUTendrilOther,"RunicNSUTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.25,angle:0.85}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_void.ticking","RunicNSUTendrilSet","RunicNSUWeakpointT13",RunicNSUTendrilOther,"RunicNSUTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.25,angle:0.85}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_void.ticking","RunicNSUTendrilSet","RunicNSUWeakpointT14",RunicNSUTendrilOther,"RunicNSUTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.25,angle:0.85}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_void.ticking","RunicNSUTendrilSet","RunicNSUWeakpointT15",RunicNSUTendrilOther,"RunicNSUTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.25,angle:0.85}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_void.ticking","RunicNSUTendrilSet","RunicNSUWeakpointT16",RunicNSUTendrilOther,"RunicNSUTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.25,angle:0.85}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0

execute align y run tp @n[tag=RunicNSUWeakpointT2,distance=..1] ~ ~ ~ ~22.5 ~
execute align y run tp @n[tag=RunicNSUWeakpointT3,distance=..1] ~ ~ ~ ~45 ~
execute align y run tp @n[tag=RunicNSUWeakpointT4,distance=..1] ~ ~ ~ ~67.5 ~
execute align y run tp @n[tag=RunicNSUWeakpointT5,distance=..1] ~ ~ ~ ~90 ~
execute align y run tp @n[tag=RunicNSUWeakpointT6,distance=..1] ~ ~ ~ ~112.5 ~
execute align y run tp @n[tag=RunicNSUWeakpointT7,distance=..1] ~ ~ ~ ~135 ~
execute align y run tp @n[tag=RunicNSUWeakpointT8,distance=..1] ~ ~ ~ ~157.5 ~
execute align y run tp @n[tag=RunicNSUWeakpointT9,distance=..1] ~ ~ ~ ~180 ~
execute align y run tp @n[tag=RunicNSUWeakpointT10,distance=..1] ~ ~ ~ ~-157.5 ~
execute align y run tp @n[tag=RunicNSUWeakpointT11,distance=..1] ~ ~ ~ ~-135 ~
execute align y run tp @n[tag=RunicNSUWeakpointT12,distance=..1] ~ ~ ~ ~-112.5 ~
execute align y run tp @n[tag=RunicNSUWeakpointT13,distance=..1] ~ ~ ~ ~-90 ~
execute align y run tp @n[tag=RunicNSUWeakpointT14,distance=..1] ~ ~ ~ ~-67.5 ~
execute align y run tp @n[tag=RunicNSUWeakpointT15,distance=..1] ~ ~ ~ ~-45 ~
execute align y run tp @n[tag=RunicNSUWeakpointT16,distance=..1] ~ ~ ~ ~-22.5 ~