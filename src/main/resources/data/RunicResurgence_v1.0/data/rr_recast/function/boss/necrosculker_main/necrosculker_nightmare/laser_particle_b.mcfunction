execute as @s unless score @s rr.system.BossTick matches 0.. run scoreboard players set @s rr.system.BossTick 0
execute as @s[scores={rr.system.BossTick=0}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 0.5 0
execute as @s[scores={rr.system.BossTick=5}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 0.55 0
execute as @s[scores={rr.system.BossTick=10}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 0.6 0
execute as @s[scores={rr.system.BossTick=15}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 0.65 0
execute as @s[scores={rr.system.BossTick=20}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 0.7 0
execute as @s[scores={rr.system.BossTick=25}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 0.8 0
execute as @s[scores={rr.system.BossTick=30}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 0.9 0
execute as @s[scores={rr.system.BossTick=35}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 1.0 0
execute as @s[scores={rr.system.BossTick=40}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.9 1.2 0
execute as @s[scores={rr.system.BossTick=45}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.95 1.4 0
execute as @s[scores={rr.system.BossTick=50}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 1 1.625 0
execute as @s[scores={rr.system.BossTick=55}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 1.05 1.95 0
execute as @s[scores={rr.system.BossTick=60}] at @s positioned ^ ^ ^8 run playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..60] ~ ~ ~ 1.4 0.5 0
execute as @s[scores={rr.system.BossTick=60..}] at @s positioned ^ ^ ^8 run playsound minecraft:entity.evoker.cast_spell hostile @a[distance=..60] ~ ~ ~ 0.125 1.2 0

execute as @s[scores={rr.system.BossTick=60..99}] at @s positioned ^ ^0.75 ^2.5 run particle glow ~ ~ ~ 0.2 1.25 0.2 0 3 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=260..300}] at @s positioned ^ ^0.75 ^2.5 run particle glow ~ ~ ~ 0.2 1.25 0.2 0 3 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=310..344}] at @s positioned ^ ^0.75 ^2.5 run particle glow ~ ~ ~ 0.2 1.25 0.2 0 3 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=450..}] at @s positioned ^ ^0.75 ^2.5 run particle glow ~ ~ ~ 0.2 1.25 0.2 0 3 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=100..259}] at @s positioned ^ ^0.75 ^2.5 run particle composter ~ ~ ~ 0.2 1.25 0.2 0 3 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=345..449}] at @s positioned ^ ^0.75 ^2.5 run particle composter ~ ~ ~ 0.2 1.25 0.2 0 3 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=301..309}] at @s positioned ^ ^0.75 ^2.5 run particle electric_spark ~ ~ ~ 0.2 1.25 0.2 0 3 force @a[distance=..50]

execute as @s[scores={rr.system.BossTick=60..},tag=RunicNSNLaserB] positioned ^ ^ ^-0.1 run summon marker ~ ~ ~ {Tags:["rr.ns_nightmare.laser_2_main",rr.boss.ns_nightmare.ticking]}
execute as @s[scores={rr.system.BossTick=60..},tag=RunicNSNLaserB] positioned ^ ^ ^-0.1 at @n[type=marker,tag=rr.ns_nightmare.laser_2_main,tag=!RunicNSNLaserSet] run tp @n[type=marker,tag=rr.ns_nightmare.laser_2_main] ~ ~ ~ facing entity @s
execute as @s[scores={rr.system.BossTick=60..},tag=RunicNSNLaserB] positioned ^ ^ ^-0.1 at @n[type=marker,tag=rr.ns_nightmare.laser_2_main,tag=!RunicNSNLaserSet] run tp @n[type=marker,tag=rr.ns_nightmare.laser_2_main] ^ ^ ^1.3

execute as @s[scores={rr.system.BossTick=..60}] at @s run particle electric_spark ^ ^-1 ^3 0.01 0.01 0.01 0 1 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=..60}] at @s run particle electric_spark ^ ^-1 ^5 0.01 0.01 0.01 0 1 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=..60}] at @s run particle electric_spark ^ ^-1 ^7 0.01 0.01 0.01 0 1 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=..60}] at @s run particle electric_spark ^ ^-1 ^9 0.01 0.01 0.01 0 1 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=..60}] at @s run particle electric_spark ^ ^-1 ^11 0.01 0.01 0.01 0 1 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=..60}] at @s run particle electric_spark ^ ^-1 ^13 0.01 0.01 0.01 0 1 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=..60}] at @s run particle electric_spark ^ ^-1 ^15 0.01 0.01 0.01 0 1 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=..60}] at @s run particle electric_spark ^ ^-1 ^17 0.01 0.01 0.01 0 1 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=..60}] at @s run particle electric_spark ^ ^-1 ^19 0.01 0.01 0.01 0 1 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=..60}] at @s run particle electric_spark ^ ^-1 ^21 0.01 0.01 0.01 0 1 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=60..99}] at @s run tp @s ~ ~ ~ ~1.1 ~
execute as @s[scores={rr.system.BossTick=100..259}] at @s run tp @s ~ ~ ~ ~1.45 ~
execute as @s[scores={rr.system.BossTick=260..300}] at @s run tp @s ~ ~ ~ ~1.1 ~
execute as @s[scores={rr.system.BossTick=310..344}] at @s run tp @s ~ ~ ~ ~-1.1 ~
execute as @s[scores={rr.system.BossTick=345..449}] at @s run tp @s ~ ~ ~ ~-1.45 ~
execute as @s[scores={rr.system.BossTick=450..}] at @s run tp @s ~ ~ ~ ~-1.1 ~

tag @e[type=marker,tag=rr.ns_nightmare.laser_2_main,tag=!RunicNSNLaserSet] add RunicNSNLaserSet

execute as @s[scores={rr.system.BossTick=100}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:entity.warden.attack_impact hostile @s ~ ~ ~ 0.85 1.4 0
execute as @s[scores={rr.system.BossTick=260}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:entity.warden.attack_impact hostile @s ~ ~ ~ 0.85 1.1 0
execute as @s[scores={rr.system.BossTick=345}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:entity.warden.attack_impact hostile @s ~ ~ ~ 0.85 1.4 0
execute as @s[scores={rr.system.BossTick=450}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:entity.warden.attack_impact hostile @s ~ ~ ~ 0.85 1.1 0

execute as @s[scores={rr.system.BossTick=270}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s ~ ~ ~ 0.85 0.7 0
execute as @s[scores={rr.system.BossTick=280}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s ~ ~ ~ 0.85 0.85 0
execute as @s[scores={rr.system.BossTick=290}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s ~ ~ ~ 0.85 1 0
execute as @s[scores={rr.system.BossTick=300}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s ~ ~ ~ 0.85 1.5 0
execute as @s[scores={rr.system.BossTick=510}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s ~ ~ ~ 0.85 0.7 0
execute as @s[scores={rr.system.BossTick=530}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s ~ ~ ~ 0.85 0.6 0

kill @s[scores={rr.system.BossTick=550..}]