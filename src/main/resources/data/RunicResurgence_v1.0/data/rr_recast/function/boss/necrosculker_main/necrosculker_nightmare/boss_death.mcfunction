
# execute as @s[scores={rr.system.BossHealth=..0},tag=!rr.boss.is_dead] at @s run advancement grant @a[distance=..60,tag=rr.player.in_boss_fight] only rr_recast_advancements:goals/defeat_necrosculker_nightmare
execute as @s[scores={rr.system.BossTick=4000}] at @s run stopsound @a[distance=..50] record
execute as @s[scores={rr.system.BossTick=4000}] at @s run kill @e[type=skeleton,tag=rr.boss.summon,distance=..40]
execute as @s[scores={rr.system.BossTick=4000}] at @s run tag @s add RunicNSNLookOther
execute as @s[scores={rr.system.BossTick=4000}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..50] ~ ~ ~ 1.6 0.4
execute as @s[scores={rr.system.BossTick=4000}] at @s run playsound minecraft:entity.warden.listening_angry hostile @a[distance=..50] ~ ~ ~ 1.6 0.4
execute as @s[scores={rr.system.BossTick=4000}] at @s run execute as @a[distance=..40] at @s run playsound minecraft:entity.warden.attack_impact hostile @s ~ ~ ~ 1.6 0.4
execute as @s[scores={rr.system.BossTick=4000}] at @s run execute as @a[distance=..40] at @s run playsound minecraft:entity.warden.listening_angry hostile @s ~ ~ ~ 1.6 0.4
execute as @s[scores={rr.system.BossTick=4010..},tag=RunicNSNLookOther] at @s run execute as @e[tag=RunicNSNHead,limit=2,sort=nearest] at @s store result score @s rr.math.C run data get entity @s Rotation[1]
execute as @s[scores={rr.system.BossTick=4010..},tag=RunicNSNLookOther] at @s run execute as @e[tag=RunicNSNHead,limit=2,sort=nearest] at @s unless score @s rr.math.C matches -40 run tp @s ~ ~ ~ ~ ~-0.8
execute as @s[scores={rr.system.BossTick=4010}] at @s run execute as @a[distance=..40] at @s run playsound minecraft:entity.warden.death hostile @s ~ ~ ~ 1.6 0.4
execute as @s[scores={rr.system.BossTick=4010}] at @s run execute as @a[distance=..40] at @s run playsound minecraft:entity.ender_dragon.death hostile @s ~ ~ ~ 0.6 1
execute as @s[scores={rr.system.BossTick=4010}] at @s run playsound minecraft:entity.warden.death hostile @a[distance=..50] ~ ~ ~ 1.6 0.4
execute as @s[scores={rr.system.BossTick=4010}] at @s run playsound minecraft:entity.ender_dragon.death hostile @a[distance=..50] ~ ~ ~ 0.6 0.9
execute as @s[scores={rr.system.BossTick=4010..}] at @s run particle minecraft:explosion ~ ~ ~ 4 3 4 0 2 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=4010..}] at @s run particle minecraft:sculk_soul ~ ~ ~ 4 3 4 0 8 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=4010..}] at @s run particle minecraft:enchanted_hit ~ ~ ~ 4 3 4 0 8 force @a[distance=..50]

execute as @s[scores={rr.system.BossTick=4010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSNHead1] {interpolation_duration:90,transformation:{translation:[0f,0f,0f]}}
execute as @s[scores={rr.system.BossTick=4010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSNHead2] {interpolation_duration:90,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0.75f]}}
execute as @s[scores={rr.system.BossTick=4010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSNBody1] {interpolation_duration:90,transformation:{scale:[0f,0f,0f]}}
execute as @s[scores={rr.system.BossTick=4010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSNBody2] {interpolation_duration:90,transformation:{translation:[0.25f,0.5f,0.35f],scale:[0.1f,0.1f,0.1f]}}
execute as @s[scores={rr.system.BossTick=4010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSNBody3] {interpolation_duration:90,transformation:{translation:[-0.35f,0.5f,0.25f],scale:[0.1f,0.1f,0.1f]}}
execute as @s[scores={rr.system.BossTick=4010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSNBody4] {interpolation_duration:90,transformation:{translation:[-0.25f,0.5f,-0.25f],scale:[0.1f,0.1f,0.1f]}}
execute as @s[scores={rr.system.BossTick=4010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSNBody5] {interpolation_duration:90,transformation:{translation:[0.35f,0.5f,-0.35f],scale:[0.1f,0.1f,0.1f]}}
execute as @s[scores={rr.system.BossTick=4010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSNBody6] {interpolation_duration:90,transformation:{translation:[0.0f,1f,0.0f],scale:[0.6f,0.2f,0.6f]}}
execute as @s[scores={rr.system.BossTick=4010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSNBody7] {interpolation_duration:90,transformation:{translation:[0.0f,1.8f,1.5f],scale:[0.2f,0.2f,0.75f]}}
execute as @s[scores={rr.system.BossTick=4010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSNBody8] {interpolation_duration:90,transformation:{translation:[0.0f,1.8f,-1.5f],scale:[0.2f,0.2f,0.75f]}}
execute as @s[scores={rr.system.BossTick=4010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSNBody9] {interpolation_duration:90,transformation:{translation:[-1.5f,1.8f,0.0f],scale:[0.75f,0.2f,0.2f]}}
execute as @s[scores={rr.system.BossTick=4010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSNBody10] {interpolation_duration:90,transformation:{translation:[1.5f,1.8f,0.0f],scale:[0.75f,0.2f,0.2f]}}
execute as @s[scores={rr.system.BossTick=4010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSNBody11] {interpolation_duration:90,transformation:{translation:[3.0f,1.7f,0.0f],scale:[0.6f,0.1f,0.6f]}}
execute as @s[scores={rr.system.BossTick=4010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSNBody12] {interpolation_duration:90,transformation:{translation:[-3.0f,1.7f,0.0f],scale:[0.6f,0.1f,0.6f]}}
execute as @s[scores={rr.system.BossTick=4010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSNBody13] {interpolation_duration:90,transformation:{translation:[0.0f,1.7f,3.0f],scale:[0.6f,0.1f,0.6f]}}
execute as @s[scores={rr.system.BossTick=4010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSNBody14] {interpolation_duration:90,transformation:{translation:[0.0f,1.7f,-3.0f],scale:[0.6f,0.1f,0.6f]}}

execute as @s[scores={rr.system.BossTick=4090..4210}] at @s run particle explosion_emitter ~ ~ ~ 1.5 1 1.5 0 1 force @a[distance=..50]


execute as @s[scores={rr.system.BossTick=4190}] as @a[distance=..60] at @s run summon experience_orb ~ ~ ~1.8 {Value:55}
execute as @s[scores={rr.system.BossTick=4191}] as @a[distance=..60] at @s run summon experience_orb ~ ~ ~1 {Value:55}
execute as @s[scores={rr.system.BossTick=4192}] as @a[distance=..60] at @s run summon experience_orb ~ ~ ~-1.8 {Value:55}
execute as @s[scores={rr.system.BossTick=4193}] as @a[distance=..60] at @s run summon experience_orb ~ ~ ~-1 {Value:55}
execute as @s[scores={rr.system.BossTick=4194}] as @a[distance=..60] at @s run summon experience_orb ~1.8 ~ ~ {Value:55}
execute as @s[scores={rr.system.BossTick=4195}] as @a[distance=..60] at @s run summon experience_orb ~1 ~ ~ {Value:55}
execute as @s[scores={rr.system.BossTick=4196}] as @a[distance=..60] at @s run summon experience_orb ~-1.8 ~ ~ {Value:55}
execute as @s[scores={rr.system.BossTick=4197}] as @a[distance=..60] at @s run summon experience_orb ~-1 ~ ~ {Value:55}
execute as @s[scores={rr.system.BossTick=4198}] as @a[distance=..60] at @s run summon experience_orb ~0.75 ~ ~0.75 {Value:55}
execute as @s[scores={rr.system.BossTick=4199}] as @a[distance=..60] at @s run summon experience_orb ~0.75 ~ ~-0.75 {Value:55}
execute as @s[scores={rr.system.BossTick=4200}] as @a[distance=..60] at @s run summon experience_orb ~-0.75 ~ ~0.75 {Value:55}
execute as @s[scores={rr.system.BossTick=4201}] as @a[distance=..60] at @s run summon experience_orb ~-0.75 ~ ~-0.75 {Value:55}
execute as @s[scores={rr.system.BossTick=4202}] as @a[distance=..60] at @s run summon experience_orb ~0.95 ~ ~ {Value:55}
execute as @s[scores={rr.system.BossTick=4203}] as @a[distance=..60] at @s run summon experience_orb ~0.7 ~ ~0.7 {Value:55}
execute as @s[scores={rr.system.BossTick=4204}] as @a[distance=..60] at @s run summon experience_orb ~ ~ ~0.95 {Value:55}
execute as @s[scores={rr.system.BossTick=4205}] as @a[distance=..60] at @s run summon experience_orb ~-0.7 ~ ~0.7 {Value:55}
execute as @s[scores={rr.system.BossTick=4206}] as @a[distance=..60] at @s run summon experience_orb ~-0.8 ~ ~ {Value:55}
execute as @s[scores={rr.system.BossTick=4207}] as @a[distance=..60] at @s run summon experience_orb ~-0.7 ~ ~-0.7 {Value:55}
execute as @s[scores={rr.system.BossTick=4208}] as @a[distance=..60] at @s run summon experience_orb ~ ~ ~-0.8 {Value:55}
execute as @s[scores={rr.system.BossTick=4209}] as @a[distance=..60] at @s run summon experience_orb ~0.7 ~ ~-0.7 {Value:55}

execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSNHead]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSNBody1]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSNBody2]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSNBody3]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSNBody4]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSNBody5]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSNBody6]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSNBody7]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSNBody8]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSNBody9]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSNBody10]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSNBody11]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSNBody12]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSNBody13]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSNBody14]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSNRP,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSNTendrilStand,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSNTendril,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSNTendrilStand2,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=rr.boss.ns_nightmare.siphon_aura,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=rr.boss.ns_nightmare.weakpoint,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=rr.boss.ns_nightmare.tendril_wave,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSNTendrilWeakpoint,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSNTendrilWave,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSNTendrilDouble,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSNTendrilPulse,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSNTendrilRing,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSNTendrilSpiralA,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSNTendrilSpiralB,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=RunicNSNLaserB,distance=..50]
execute as @s[scores={rr.system.BossTick=4200}] at @s run kill @e[tag=rr.ns_nightmare.laser_2_main,distance=..50]

execute as @s[scores={rr.system.BossTick=4200}] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace barrier
execute as @s[scores={rr.system.BossTick=4200}] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace light
execute as @s[scores={rr.system.BossTick=4200}] at @s run setblock ~ ~-2 ~ reinforced_deepslate replace
execute as @s[scores={rr.system.BossTick=4200}] at @s if entity @e[type=marker,tag=rr.boss,distance=50..] run execute as @e[type=marker,tag=rr.boss,distance=50..] at @s run bossbar set rr.boss.necrosculker_nightmare players @a[distance=120..,tag=rr.player.in_boss_fight]
execute as @s[scores={rr.system.BossTick=4200}] at @s unless entity @e[type=marker,tag=rr.boss,distance=50..] run bossbar set rr.boss.necrosculker_nightmare players @a[tag=NoSelectTag]

execute as @s[scores={rr.system.BossTick=4210}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run function rr_recast:give/loot_bag/boss/necrosculker/nightmare
execute as @s[scores={rr.system.BossTick=4210}] at @s run advancement grant @a[distance=..40,tag=rr.player.in_boss_fight] only rr_adv:mainline/boss/necrosculker/kill_necrosculker_nightmare
execute as @s[scores={rr.system.BossTick=4210}] at @s run execute as @a[distance=..60,tag=rr.player.in_boss_fight] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/check_drops
execute as @s[scores={rr.system.BossTick=4210}] at @s run scoreboard players add @a[distance=..40,tag=rr.player.in_boss_fight] rr.stats.NSNKills 1
execute as @s[scores={rr.system.BossTick=4210}] at @s run tag @a[distance=..60,tag=rr.player.in_boss_fight] remove rr.player.in_boss_fight
execute as @s[scores={rr.system.BossTick=4210}] at @s run kill @s