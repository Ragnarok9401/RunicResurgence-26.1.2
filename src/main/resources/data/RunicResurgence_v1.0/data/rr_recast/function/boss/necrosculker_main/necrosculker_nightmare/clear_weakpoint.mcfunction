tp @n[tag=rr.boss.ns_nightmare.weakpoint,distance=..4,type=!item_display] ~ ~-80 ~
execute positioned ~ ~-80 ~ run kill @n[tag=rr.boss.ns_nightmare.weakpoint,distance=..4,type=!item_display]
scoreboard players set @s rr.system.BossTick 299
tag @s add rr.boss.ns_nightmare.ticking
playsound minecraft:entity.warden.agitated hostile @a[distance=..40] ~ ~ ~ 0.85 0.75 0
playsound minecraft:entity.warden.death hostile @a[distance=..40] ~ ~ ~ 0.65 0.75 0

execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilSet","RunicNSNWeakpointT1",RunicNSNTendrilOther,"RunicNSNTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.3,angle:0.8}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilSet","RunicNSNWeakpointT2",RunicNSNTendrilOther,"RunicNSNTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.3,angle:0.8}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilSet","RunicNSNWeakpointT3",RunicNSNTendrilOther,"RunicNSNTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.3,angle:0.8}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilSet","RunicNSNWeakpointT4",RunicNSNTendrilOther,"RunicNSNTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.3,angle:0.8}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilSet","RunicNSNWeakpointT5",RunicNSNTendrilOther,"RunicNSNTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.3,angle:0.8}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilSet","RunicNSNWeakpointT6",RunicNSNTendrilOther,"RunicNSNTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.3,angle:0.8}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilSet","RunicNSNWeakpointT7",RunicNSNTendrilOther,"RunicNSNTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.3,angle:0.8}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilSet","RunicNSNWeakpointT8",RunicNSNTendrilOther,"RunicNSNTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.3,angle:0.8}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilSet","RunicNSNWeakpointT9",RunicNSNTendrilOther,"RunicNSNTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.3,angle:0.8}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilSet","RunicNSNWeakpointT10",RunicNSNTendrilOther,"RunicNSNTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.3,angle:0.8}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilSet","RunicNSNWeakpointT11",RunicNSNTendrilOther,"RunicNSNTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.3,angle:0.8}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilSet","RunicNSNWeakpointT12",RunicNSNTendrilOther,"RunicNSNTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.3,angle:0.8}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilSet","RunicNSNWeakpointT13",RunicNSNTendrilOther,"RunicNSNTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.3,angle:0.8}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilSet","RunicNSNWeakpointT14",RunicNSNTendrilOther,"RunicNSNTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.3,angle:0.8}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilSet","RunicNSNWeakpointT15",RunicNSNTendrilOther,"RunicNSNTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.3,angle:0.8}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0
execute as @s[scores={rr.system.BossTick=299}] align y run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilSet","RunicNSNWeakpointT16",RunicNSNTendrilOther,"RunicNSNTendrilSpiralA"],data:{rr_recast:{tendril_wave:{speed:0.3,angle:0.8}}}}
playsound minecraft:block.sculk_catalyst.place hostile @a[distance=..50] ~ ~ ~ 0.6 1.2 0

execute align y run tp @n[tag=RunicNSNWeakpointT2,distance=..1] ~ ~ ~ ~22.5 ~
execute align y run tp @n[tag=RunicNSNWeakpointT3,distance=..1] ~ ~ ~ ~45 ~
execute align y run tp @n[tag=RunicNSNWeakpointT4,distance=..1] ~ ~ ~ ~67.5 ~
execute align y run tp @n[tag=RunicNSNWeakpointT5,distance=..1] ~ ~ ~ ~90 ~
execute align y run tp @n[tag=RunicNSNWeakpointT6,distance=..1] ~ ~ ~ ~112.5 ~
execute align y run tp @n[tag=RunicNSNWeakpointT7,distance=..1] ~ ~ ~ ~135 ~
execute align y run tp @n[tag=RunicNSNWeakpointT8,distance=..1] ~ ~ ~ ~157.5 ~
execute align y run tp @n[tag=RunicNSNWeakpointT9,distance=..1] ~ ~ ~ ~180 ~
execute align y run tp @n[tag=RunicNSNWeakpointT10,distance=..1] ~ ~ ~ ~-157.5 ~
execute align y run tp @n[tag=RunicNSNWeakpointT11,distance=..1] ~ ~ ~ ~-135 ~
execute align y run tp @n[tag=RunicNSNWeakpointT12,distance=..1] ~ ~ ~ ~-112.5 ~
execute align y run tp @n[tag=RunicNSNWeakpointT13,distance=..1] ~ ~ ~ ~-90 ~
execute align y run tp @n[tag=RunicNSNWeakpointT14,distance=..1] ~ ~ ~ ~-67.5 ~
execute align y run tp @n[tag=RunicNSNWeakpointT15,distance=..1] ~ ~ ~ ~-45 ~
execute align y run tp @n[tag=RunicNSNWeakpointT16,distance=..1] ~ ~ ~ ~-22.5 ~