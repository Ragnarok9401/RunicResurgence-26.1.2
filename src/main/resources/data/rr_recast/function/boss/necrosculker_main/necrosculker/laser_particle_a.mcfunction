execute as @s unless score @s rr.system.BossTick matches 0.. run scoreboard players set @s rr.system.BossTick 0
execute as @s[scores={rr.system.BossTick=0}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 0.6 0
execute as @s[scores={rr.system.BossTick=5}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 0.7 0
execute as @s[scores={rr.system.BossTick=10}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 0.8 0
execute as @s[scores={rr.system.BossTick=15}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 0.9 0
execute as @s[scores={rr.system.BossTick=20}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 1 0
execute as @s[scores={rr.system.BossTick=25}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 1.1 0
execute as @s[scores={rr.system.BossTick=30}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 1.2 0
execute as @s[scores={rr.system.BossTick=35}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 1.3 0
execute as @s[scores={rr.system.BossTick=40}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 1.4 0
execute as @s[scores={rr.system.BossTick=45}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 1.5 0
execute as @s[scores={rr.system.BossTick=50}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 1.6 0
execute as @s[scores={rr.system.BossTick=55}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 1.7 0
execute as @s[scores={rr.system.BossTick=60}] at @s positioned ^ ^ ^8 run playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..60] ~ ~ ~ 1.2 0.6 0
execute as @s[scores={rr.system.BossTick=60..}] at @s positioned ^ ^ ^8 run playsound minecraft:entity.evoker.cast_spell hostile @a[distance=..60] ~ ~ ~ 0.15 1.75 0

execute as @s[scores={rr.system.BossTick=60..}] at @s positioned ^ ^ ^2.5 run particle electric_spark ~ ~ ~ 0.2 0.2 0.2 0 2 force @a[distance=..50]

execute as @s[scores={rr.system.BossTick=60..},tag=RunicNSLaserATop] positioned ^ ^ ^-0.1 run summon marker ~ ~ ~ {Tags:["rr.boss.ns.ticking","RunicNSLaserMTop"]}
execute as @s[scores={rr.system.BossTick=60..},tag=RunicNSLaserABottom] positioned ^ ^ ^-0.1 run summon marker ~ ~ ~ {Tags:["rr.boss.ns.ticking","RunicNSLaserMBot"]}
execute as @s[scores={rr.system.BossTick=60..},tag=RunicNSLaserATop] positioned ^ ^ ^-0.1 at @n[type=marker,tag=RunicNSLaserMTop,tag=!RunicNSLaserSet] run tp @n[type=marker,tag=RunicNSLaserMTop] ~ ~ ~ facing entity @s
execute as @s[scores={rr.system.BossTick=60..},tag=RunicNSLaserABottom] positioned ^ ^ ^-0.1 at @n[type=marker,tag=RunicNSLaserMBot,tag=!RunicNSLaserSet] run tp @n[type=marker,tag=RunicNSLaserMBot] ~ ~ ~ facing entity @s
execute as @s[scores={rr.system.BossTick=60..},tag=RunicNSLaserATop] positioned ^ ^ ^-0.1 at @n[type=marker,tag=RunicNSLaserMTop,tag=!RunicNSLaserSet] run tp @n[type=marker,tag=RunicNSLaserMTop] ^ ^ ^1.3
execute as @s[scores={rr.system.BossTick=60..},tag=RunicNSLaserABottom] positioned ^ ^ ^-0.1 at @n[type=marker,tag=RunicNSLaserMBot,tag=!RunicNSLaserSet] run tp @n[type=marker,tag=RunicNSLaserMBot] ^ ^ ^1.3

execute as @s[scores={rr.system.BossTick=..60}] at @s run particle electric_spark ^ ^ ^3 0.01 0.01 0.01 0 1 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=..60}] at @s run particle electric_spark ^ ^ ^5 0.01 0.01 0.01 0 1 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=..60}] at @s run particle electric_spark ^ ^ ^7 0.01 0.01 0.01 0 1 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=..60}] at @s run particle electric_spark ^ ^ ^9 0.01 0.01 0.01 0 1 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=..60}] at @s run particle electric_spark ^ ^ ^11 0.01 0.01 0.01 0 1 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=..60}] at @s run particle electric_spark ^ ^ ^13 0.01 0.01 0.01 0 1 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=..60}] at @s run particle electric_spark ^ ^ ^15 0.01 0.01 0.01 0 1 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=..60}] at @s run particle electric_spark ^ ^ ^17 0.01 0.01 0.01 0 1 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=..60}] at @s run particle electric_spark ^ ^ ^19 0.01 0.01 0.01 0 1 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=..60}] at @s run particle electric_spark ^ ^ ^21 0.01 0.01 0.01 0 1 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=60..}] at @s run tp @s ~ ~ ~ ~2 ~

tag @e[type=marker,tag=RunicNSLaserMTop,tag=!RunicNSLaserSet] add RunicNSLaserSet
tag @e[type=marker,tag=RunicNSLaserMBot,tag=!RunicNSLaserSet] add RunicNSLaserSet

execute as @s[scores={rr.system.BossTick=510}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..50] ~ ~ ~ 0.85 0.8 0
execute as @s[scores={rr.system.BossTick=530}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..50] ~ ~ ~ 0.85 0.65 0

kill @s[scores={rr.system.BossTick=550..}]