execute as @s[scores={rr.system.BossHealth=..0},tag=!rr.boss.is_dead] at @s run tag @s add rr.boss.is_dead
#execute as @s[scores={rr.system.BossHealth=..0},tag=!rr.boss.is_dead] at @s run advancement grant @a[distance=..60,tag=rr.player.in_boss_fight] only rr_recast_advancements:goals/defeat_necrosculker
execute as @s[scores={rr.system.BossTick=3000}] at @s run stopsound @a[distance=..50] record
execute as @s[scores={rr.system.BossTick=3000}] at @s run kill @e[type=skeleton,tag=rr.boss.summon,distance=..40]
execute as @s[scores={rr.system.BossTick=3000}] at @s run tag @s add RunicNSLookOther
execute as @s[scores={rr.system.BossTick=3000}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..50] ~ ~ ~ 1.3 0.6
execute as @s[scores={rr.system.BossTick=3000}] at @s run playsound minecraft:entity.warden.listening_angry hostile @a[distance=..50] ~ ~ ~ 1.3 0.6
execute as @s[scores={rr.system.BossTick=3000}] at @s run execute as @a[distance=..40] at @s run playsound minecraft:entity.warden.attack_impact hostile @s ~ ~ ~ 1.3 0.6
execute as @s[scores={rr.system.BossTick=3000}] at @s run execute as @a[distance=..40] at @s run playsound minecraft:entity.warden.listening_angry hostile @s ~ ~ ~ 1.3 0.6
execute as @s[scores={rr.system.BossTick=3010..},tag=RunicNSLookOther] at @s run execute as @e[tag=RunicNSHead,limit=2,sort=nearest] at @s store result score @s rr.math.C run data get entity @s Rotation[1]
execute as @s[scores={rr.system.BossTick=3010..},tag=RunicNSLookOther] at @s run execute as @e[tag=RunicNSHead,limit=2,sort=nearest] at @s unless score @s rr.math.C matches -40 run tp @s ~ ~ ~ ~ ~-0.8
execute as @s[scores={rr.system.BossTick=3010}] at @s run execute as @a[distance=..40] at @s run playsound minecraft:entity.warden.death hostile @s ~ ~ ~ 1.3 0.6
execute as @s[scores={rr.system.BossTick=3010}] at @s run execute as @a[distance=..40] at @s run playsound minecraft:entity.ender_dragon.death hostile @s ~ ~ ~ 0.5 0.75
execute as @s[scores={rr.system.BossTick=3010..}] at @s run particle minecraft:explosion ~ ~ ~ 4 3 4 0 2 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=3010..}] at @s run particle minecraft:sculk_soul ~ ~ ~ 4 3 4 0 8 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=3010..}] at @s run particle minecraft:enchanted_hit ~ ~ ~ 4 3 4 0 8 force @a[distance=..50]

execute as @s[scores={rr.system.BossTick=3010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSHead1] {interpolation_duration:90,transformation:{translation:[0f,0f,0f]}}
execute as @s[scores={rr.system.BossTick=3010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSHead2] {interpolation_duration:90,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0.75f]}}
execute as @s[scores={rr.system.BossTick=3010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSBody1] {interpolation_duration:90,transformation:{scale:[0f,0f,0f]}}
execute as @s[scores={rr.system.BossTick=3010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSBody2] {interpolation_duration:90,transformation:{translation:[0.25f,0.5f,0.35f],scale:[0.1f,0.1f,0.1f]}}
execute as @s[scores={rr.system.BossTick=3010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSBody3] {interpolation_duration:90,transformation:{translation:[-0.35f,0.5f,0.25f],scale:[0.1f,0.1f,0.1f]}}
execute as @s[scores={rr.system.BossTick=3010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSBody4] {interpolation_duration:90,transformation:{translation:[-0.25f,0.5f,-0.25f],scale:[0.1f,0.1f,0.1f]}}
execute as @s[scores={rr.system.BossTick=3010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSBody5] {interpolation_duration:90,transformation:{translation:[0.35f,0.5f,-0.35f],scale:[0.1f,0.1f,0.1f]}}
execute as @s[scores={rr.system.BossTick=3010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSBody6] {interpolation_duration:90,transformation:{translation:[0.0f,1f,0.0f],scale:[0.6f,0.2f,0.6f]}}
execute as @s[scores={rr.system.BossTick=3010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSBody7] {interpolation_duration:90,transformation:{translation:[0.0f,1.8f,1.5f],scale:[0.2f,0.2f,0.75f]}}
execute as @s[scores={rr.system.BossTick=3010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSBody8] {interpolation_duration:90,transformation:{translation:[0.0f,1.8f,-1.5f],scale:[0.2f,0.2f,0.75f]}}
execute as @s[scores={rr.system.BossTick=3010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSBody9] {interpolation_duration:90,transformation:{translation:[-1.5f,1.8f,0.0f],scale:[0.75f,0.2f,0.2f]}}
execute as @s[scores={rr.system.BossTick=3010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSBody10] {interpolation_duration:90,transformation:{translation:[1.5f,1.8f,0.0f],scale:[0.75f,0.2f,0.2f]}}
execute as @s[scores={rr.system.BossTick=3010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSBody11] {interpolation_duration:90,transformation:{translation:[3.0f,1.7f,0.0f],scale:[0.6f,0.1f,0.6f]}}
execute as @s[scores={rr.system.BossTick=3010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSBody12] {interpolation_duration:90,transformation:{translation:[-3.0f,1.7f,0.0f],scale:[0.6f,0.1f,0.6f]}}
execute as @s[scores={rr.system.BossTick=3010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSBody13] {interpolation_duration:90,transformation:{translation:[0.0f,1.7f,3.0f],scale:[0.6f,0.1f,0.6f]}}
execute as @s[scores={rr.system.BossTick=3010}] at @s run execute as @p run data merge entity @n[type=item_display,tag=RunicNSBody14] {interpolation_duration:90,transformation:{translation:[0.0f,1.7f,-3.0f],scale:[0.6f,0.1f,0.6f]}}

execute as @s[scores={rr.system.BossTick=3090..3210}] at @s run particle explosion_emitter ~ ~ ~ 1 1 1 0 1 force @a[distance=..50]


execute as @s[scores={rr.system.BossTick=3190}] as @a[distance=..60] at @s run summon experience_orb ~ ~ ~1.8 {Value:10}
execute as @s[scores={rr.system.BossTick=3191}] as @a[distance=..60] at @s run summon experience_orb ~ ~ ~1 {Value:10}
execute as @s[scores={rr.system.BossTick=3192}] as @a[distance=..60] at @s run summon experience_orb ~ ~ ~-1.8 {Value:10}
execute as @s[scores={rr.system.BossTick=3193}] as @a[distance=..60] at @s run summon experience_orb ~ ~ ~-1 {Value:10}
execute as @s[scores={rr.system.BossTick=3194}] as @a[distance=..60] at @s run summon experience_orb ~1.8 ~ ~ {Value:10}
execute as @s[scores={rr.system.BossTick=3195}] as @a[distance=..60] at @s run summon experience_orb ~1 ~ ~ {Value:10}
execute as @s[scores={rr.system.BossTick=3196}] as @a[distance=..60] at @s run summon experience_orb ~-1.8 ~ ~ {Value:10}
execute as @s[scores={rr.system.BossTick=3197}] as @a[distance=..60] at @s run summon experience_orb ~-1 ~ ~ {Value:10}
execute as @s[scores={rr.system.BossTick=3198}] as @a[distance=..60] at @s run summon experience_orb ~0.75 ~ ~0.75 {Value:10}
execute as @s[scores={rr.system.BossTick=3199}] as @a[distance=..60] at @s run summon experience_orb ~0.75 ~ ~-0.75 {Value:10}
execute as @s[scores={rr.system.BossTick=3200}] as @a[distance=..60] at @s run summon experience_orb ~-0.75 ~ ~0.75 {Value:10}
execute as @s[scores={rr.system.BossTick=3201}] as @a[distance=..60] at @s run summon experience_orb ~-0.75 ~ ~-0.75 {Value:10}
execute as @s[scores={rr.system.BossTick=3202}] as @a[distance=..60] at @s run summon experience_orb ~0.8 ~ ~ {Value:10}
execute as @s[scores={rr.system.BossTick=3203}] as @a[distance=..60] at @s run summon experience_orb ~0.7 ~ ~0.7 {Value:10}
execute as @s[scores={rr.system.BossTick=3204}] as @a[distance=..60] at @s run summon experience_orb ~ ~ ~0.8 {Value:10}
execute as @s[scores={rr.system.BossTick=3205}] as @a[distance=..60] at @s run summon experience_orb ~-0.7 ~ ~0.7 {Value:10}
execute as @s[scores={rr.system.BossTick=3206}] as @a[distance=..60] at @s run summon experience_orb ~-0.8 ~ ~ {Value:10}
execute as @s[scores={rr.system.BossTick=3207}] as @a[distance=..60] at @s run summon experience_orb ~-0.7 ~ ~-0.7 {Value:10}
execute as @s[scores={rr.system.BossTick=3208}] as @a[distance=..60] at @s run summon experience_orb ~ ~ ~-0.8 {Value:10}
execute as @s[scores={rr.system.BossTick=3209}] as @a[distance=..60] at @s run summon experience_orb ~0.7 ~ ~-0.7 {Value:10}

execute as @s[scores={rr.system.BossTick=3200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSHead]
execute as @s[scores={rr.system.BossTick=3200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSBody1]
execute as @s[scores={rr.system.BossTick=3200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSBody2]
execute as @s[scores={rr.system.BossTick=3200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSBody3]
execute as @s[scores={rr.system.BossTick=3200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSBody4]
execute as @s[scores={rr.system.BossTick=3200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSBody5]
execute as @s[scores={rr.system.BossTick=3200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSBody6]
execute as @s[scores={rr.system.BossTick=3200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSBody7]
execute as @s[scores={rr.system.BossTick=3200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSBody8]
execute as @s[scores={rr.system.BossTick=3200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSBody9]
execute as @s[scores={rr.system.BossTick=3200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSBody10]
execute as @s[scores={rr.system.BossTick=3200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSBody11]
execute as @s[scores={rr.system.BossTick=3200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSBody12]
execute as @s[scores={rr.system.BossTick=3200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSBody13]
execute as @s[scores={rr.system.BossTick=3200}] at @s run kill @e[type=item_display,limit=2,sort=nearest,tag=RunicNSBody14]
execute as @s[scores={rr.system.BossTick=3200}] at @s run kill @e[tag=RunicNSRP,distance=..50]
execute as @s[scores={rr.system.BossTick=3200}] at @s run kill @e[tag=rr.boss.ns.weakpoint,distance=..50]
execute as @s[scores={rr.system.BossTick=3200}] at @s run kill @e[tag=RunicNSTendrilStand,distance=..50]
execute as @s[scores={rr.system.BossTick=3200}] at @s run kill @e[tag=RunicNSTendril,distance=..50]
execute as @s[scores={rr.system.BossTick=3200}] at @s run kill @e[tag=RunicNSTendril2,distance=..50]

execute as @s[scores={rr.system.BossTick=3200}] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace barrier
execute as @s[scores={rr.system.BossTick=3200}] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace light
execute as @s[scores={rr.system.BossTick=3200}] at @s run setblock ~ ~-2 ~ reinforced_deepslate replace
execute as @s[scores={rr.system.BossTick=3200}] at @s if entity @e[type=marker,tag=rr.boss,distance=50..] run execute as @e[type=marker,tag=rr.boss,distance=50..] at @s run bossbar set rr.boss.necrosculker players @a[distance=120..,tag=rr.player.in_boss_fight]
execute as @s[scores={rr.system.BossTick=3200}] at @s unless entity @e[type=marker,tag=rr.boss,distance=50..] run bossbar set rr.boss.necrosculker players @a[tag=NoSelectTag]

execute as @s[scores={rr.system.BossTick=3210}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run function rr_recast:give/loot_bag/boss/necrosculker/base
execute as @s[scores={rr.system.BossTick=3210}] at @s run advancement grant @a[distance=..40,tag=rr.player.in_boss_fight] only rr_adv:mainline/boss/necrosculker/kill_necrosculker
execute as @s[scores={rr.system.BossTick=3210}] at @s run execute as @a[distance=..60,tag=rr.player.in_boss_fight] at @s run function rr_recast:boss/necrosculker_main/necrosculker/check_drops
execute as @s[scores={rr.system.BossTick=3210}] at @s run scoreboard players add @a[distance=..40,tag=rr.player.in_boss_fight] rr.stats.NSKills 1
execute as @s[scores={rr.system.BossTick=3210}] at @s run tag @a[distance=..40,tag=rr.player.in_boss_fight] remove rr.player.in_boss_fight
execute as @s[scores={rr.system.BossTick=3210}] at @s run kill @s