# execute as @s[scores={rr.system.BossHealth=..0},tag=!rr.boss.is_dead] at @s run advancement grant @a[distance=..60,tag=rr.player.in_boss_fight] only rr_recast_advancements:goals/defeat_necrosculker_ultimate
execute as @s[scores={rr.system.BossTick=4000}] at @s run stopsound @a[distance=..50] record
execute as @s[scores={rr.system.BossTick=4000}] at @s run kill @e[type=skeleton,tag=rr.boss.summon,distance=..40]
execute as @s[scores={rr.system.BossTick=4000}] at @s run tag @s add RunicNSULookOther
execute as @s[scores={rr.system.BossTick=4000}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..50] ~ ~ ~ 1.6 0.4
execute as @s[scores={rr.system.BossTick=4000}] at @s run playsound minecraft:entity.warden.listening_angry hostile @a[distance=..50] ~ ~ ~ 1.6 0.4
execute as @s[scores={rr.system.BossTick=4000}] at @s run execute as @a[distance=..40] at @s run playsound minecraft:entity.warden.attack_impact hostile @s ~ ~ ~ 1.6 0.4
execute as @s[scores={rr.system.BossTick=4000}] at @s run execute as @a[distance=..40] at @s run playsound minecraft:entity.warden.listening_angry hostile @s ~ ~ ~ 1.6 0.4
execute as @s[scores={rr.system.BossTick=4020..},tag=RunicNSULookOther] at @s run execute as @e[tag=RunicNSUHead,limit=2,sort=nearest] at @s store result score @s rr.math.C run data get entity @s Rotation[1]
execute as @s[scores={rr.system.BossTick=4020..},tag=RunicNSULookOther] at @s run execute as @e[tag=RunicNSUHead,limit=2,sort=nearest] at @s unless score @s rr.math.C matches -40 run tp @s ~ ~ ~ ~ ~-0.8
execute as @s[scores={rr.system.BossTick=4012}] at @s run execute as @a[distance=..40] at @s run playsound minecraft:block.trial_spawner.ominous_activate hostile @s ~ ~ ~ 1 0.8
execute as @s[scores={rr.system.BossTick=4020}] at @s run execute as @a[distance=..40] at @s run playsound minecraft:entity.warden.death hostile @s ~ ~ ~ 1.6 0.4
execute as @s[scores={rr.system.BossTick=4020}] at @s run execute as @a[distance=..40] at @s run playsound minecraft:entity.ender_dragon.death hostile @s ~ ~ ~ 0.9 0.8
execute as @s[scores={rr.system.BossTick=4020}] at @s run playsound minecraft:entity.warden.death hostile @a[distance=..50] ~ ~ ~ 1.6 0.4
execute as @s[scores={rr.system.BossTick=4020}] at @s run playsound minecraft:entity.ender_dragon.death hostile @a[distance=..50] ~ ~ ~ 0.9 0.9
execute as @s[scores={rr.system.BossTick=4020..}] at @s run particle minecraft:explosion ~ ~ ~ 4 3 4 0 2 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=4020..}] at @s run particle minecraft:sculk_soul ~ ~ ~ 4 3 4 0 8 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=4020..}] at @s run particle minecraft:enchanted_hit ~ ~ ~ 4 3 4 0 8 force @a[distance=..50]

execute as @s[scores={rr.system.BossTick=4020}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSUHead1] {interpolation_duration:90,transformation:{translation:[0f,0f,0f]}}
execute as @s[scores={rr.system.BossTick=4020}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSUHead2] {interpolation_duration:90,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0.75f]}}
execute as @s[scores={rr.system.BossTick=4020}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSUBody1] {interpolation_duration:90,transformation:{scale:[0f,0f,0f]}}
execute as @s[scores={rr.system.BossTick=4020}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSUBody2] {interpolation_duration:90,transformation:{translation:[0.25f,0.5f,0.35f],scale:[0.1f,0.1f,0.1f]}}
execute as @s[scores={rr.system.BossTick=4020}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSUBody3] {interpolation_duration:90,transformation:{translation:[-0.35f,0.5f,0.25f],scale:[0.1f,0.1f,0.1f]}}
execute as @s[scores={rr.system.BossTick=4020}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSUBody4] {interpolation_duration:90,transformation:{translation:[-0.25f,0.5f,-0.25f],scale:[0.1f,0.1f,0.1f]}}
execute as @s[scores={rr.system.BossTick=4020}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSUBody5] {interpolation_duration:90,transformation:{translation:[0.35f,0.5f,-0.35f],scale:[0.1f,0.1f,0.1f]}}
execute as @s[scores={rr.system.BossTick=4020}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSUBody6] {interpolation_duration:90,transformation:{translation:[0.0f,1f,0.0f],scale:[0.6f,0.2f,0.6f]}}
execute as @s[scores={rr.system.BossTick=4020}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSUBody7] {interpolation_duration:90,transformation:{translation:[0.0f,1.8f,1.5f],scale:[0.2f,0.2f,0.75f]}}
execute as @s[scores={rr.system.BossTick=4020}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSUBody8] {interpolation_duration:90,transformation:{translation:[0.0f,1.8f,-1.5f],scale:[0.2f,0.2f,0.75f]}}
execute as @s[scores={rr.system.BossTick=4020}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSUBody9] {interpolation_duration:90,transformation:{translation:[-1.5f,1.8f,0.0f],scale:[0.75f,0.2f,0.2f]}}
execute as @s[scores={rr.system.BossTick=4020}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSUBody10] {interpolation_duration:90,transformation:{translation:[1.5f,1.8f,0.0f],scale:[0.75f,0.2f,0.2f]}}
execute as @s[scores={rr.system.BossTick=4020}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSUBody11] {interpolation_duration:90,transformation:{translation:[3.0f,1.7f,0.0f],scale:[0.6f,0.1f,0.6f]}}
execute as @s[scores={rr.system.BossTick=4020}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSUBody12] {interpolation_duration:90,transformation:{translation:[-3.0f,1.7f,0.0f],scale:[0.6f,0.1f,0.6f]}}
execute as @s[scores={rr.system.BossTick=4020}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSUBody13] {interpolation_duration:90,transformation:{translation:[0.0f,1.7f,3.0f],scale:[0.6f,0.1f,0.6f]}}
execute as @s[scores={rr.system.BossTick=4020}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSUBody14] {interpolation_duration:90,transformation:{translation:[0.0f,1.7f,-3.0f],scale:[0.6f,0.1f,0.6f]}}

execute as @s[scores={rr.system.BossTick=4090..4210}] at @s run particle explosion_emitter ~ ~ ~ 1.5 1 1.5 0 1 force @a[distance=..50]


execute as @s[scores={rr.system.BossTick=4190}] as @a[distance=..60] at @s run summon experience_orb ~ ~ ~1.8 {Value:80}
execute as @s[scores={rr.system.BossTick=4191}] as @a[distance=..60] at @s run summon experience_orb ~ ~ ~1 {Value:80}
execute as @s[scores={rr.system.BossTick=4192}] as @a[distance=..60] at @s run summon experience_orb ~ ~ ~-1.8 {Value:80}
execute as @s[scores={rr.system.BossTick=4193}] as @a[distance=..60] at @s run summon experience_orb ~ ~ ~-1 {Value:80}
execute as @s[scores={rr.system.BossTick=4194}] as @a[distance=..60] at @s run summon experience_orb ~1.8 ~ ~ {Value:80}
execute as @s[scores={rr.system.BossTick=4195}] as @a[distance=..60] at @s run summon experience_orb ~1 ~ ~ {Value:80}
execute as @s[scores={rr.system.BossTick=4196}] as @a[distance=..60] at @s run summon experience_orb ~-1.8 ~ ~ {Value:80}
execute as @s[scores={rr.system.BossTick=4197}] as @a[distance=..60] at @s run summon experience_orb ~-1 ~ ~ {Value:80}
execute as @s[scores={rr.system.BossTick=4198}] as @a[distance=..60] at @s run summon experience_orb ~0.75 ~ ~0.75 {Value:80}
execute as @s[scores={rr.system.BossTick=4199}] as @a[distance=..60] at @s run summon experience_orb ~0.75 ~ ~-0.75 {Value:80}
execute as @s[scores={rr.system.BossTick=4200}] as @a[distance=..60] at @s run summon experience_orb ~-0.75 ~ ~0.75 {Value:80}
execute as @s[scores={rr.system.BossTick=4201}] as @a[distance=..60] at @s run summon experience_orb ~-0.75 ~ ~-0.75 {Value:80}
execute as @s[scores={rr.system.BossTick=4202}] as @a[distance=..60] at @s run summon experience_orb ~0.8 ~ ~ {Value:80}
execute as @s[scores={rr.system.BossTick=4203}] as @a[distance=..60] at @s run summon experience_orb ~0.7 ~ ~0.7 {Value:80}
execute as @s[scores={rr.system.BossTick=4204}] as @a[distance=..60] at @s run summon experience_orb ~ ~ ~0.8 {Value:80}
execute as @s[scores={rr.system.BossTick=4205}] as @a[distance=..60] at @s run summon experience_orb ~-0.7 ~ ~0.7 {Value:80}
execute as @s[scores={rr.system.BossTick=4206}] as @a[distance=..60] at @s run summon experience_orb ~-0.8 ~ ~ {Value:80}
execute as @s[scores={rr.system.BossTick=4207}] as @a[distance=..60] at @s run summon experience_orb ~-0.7 ~ ~-0.7 {Value:80}
execute as @s[scores={rr.system.BossTick=4208}] as @a[distance=..60] at @s run summon experience_orb ~ ~ ~-0.8 {Value:80}
execute as @s[scores={rr.system.BossTick=4209}] as @a[distance=..60] at @s run summon experience_orb ~0.7 ~ ~-0.7 {Value:80}

execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSUHead]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSUBody1]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSUBody2]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSUBody3]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSUBody4]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSUBody5]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSUBody6]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSUBody7]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSUBody8]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSUBody9]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSUBody10]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSUBody11]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSUBody12]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSUBody13]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSUBody14]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSURP,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSUTendrilStand,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSUTendril,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSUTendrilStand2,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=rr.boss.ns_void.ticking,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=rr.boss.ns_void.siphon_aura,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=rr.boss.ns_void.weakpoint,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=rr.boss.ns_void.tendril_wave,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSUTendrilWeakpoint,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSUTendrilWave,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSUTendrilDouble,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSUTendrilPulse,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSUTendrilRing,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSUTendrilSpiralA,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSUTendrilSpiralB,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSULaserB,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSULaserMB,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSULaserA,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSULaserATop,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSULaserABottom,distance=..50]

execute as @s[scores={rr.system.BossTick=4200}] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace barrier
execute as @s[scores={rr.system.BossTick=4200}] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace light
execute as @s[scores={rr.system.BossTick=4200}] at @s run setblock ~ ~-2 ~ reinforced_deepslate replace
execute as @s[scores={rr.system.BossTick=4200}] at @s if entity @e[type=marker,tag=rr.boss,distance=50..] run execute as @e[type=marker,tag=rr.boss,distance=50..] at @s run bossbar set rr.boss.necrosculker_ultimate players @a[distance=120..,tag=rr.player.in_boss_fight]
execute as @s[scores={rr.system.BossTick=4200}] at @s unless entity @e[type=marker,tag=rr.boss,distance=50..] run bossbar set rr.boss.necrosculker_ultimate players @a[tag=NoSelectTag]

execute as @s[scores={rr.system.BossTick=4210}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run function rr_recast:give/loot_bag/boss/necrosculker/void
execute as @s[scores={rr.system.BossTick=4210}] at @s run advancement grant @a[distance=..40,tag=rr.player.in_boss_fight] only rr_adv:mainline/boss/necrosculker/kill_necrosculker_ultimate
execute as @s[scores={rr.system.BossTick=4210}] at @s run execute as @a[distance=..60,tag=rr.player.in_boss_fight] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/check_drops
execute as @s[scores={rr.system.BossTick=4210}] at @s run scoreboard players add @a[distance=..40,tag=rr.player.in_boss_fight] rr.stats.NSUKills 1
execute as @s[scores={rr.system.BossTick=4210}] at @s run tag @a[distance=..80,tag=rr.player.in_boss_fight] remove rr.player.in_boss_fight
execute as @s[scores={rr.system.BossTick=4210}] at @s run kill @s