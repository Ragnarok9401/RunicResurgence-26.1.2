execute as @s unless score @s rr.system.BossTick matches 0.. run scoreboard players set @s rr.system.BossTick 0
execute as @s[scores={rr.system.BossTick=0}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 0.6 0.2
execute as @s[scores={rr.system.BossTick=5}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 0.7 0.2
execute as @s[scores={rr.system.BossTick=10}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 0.8 0.2
execute as @s[scores={rr.system.BossTick=15}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 0.9 0.2
execute as @s[scores={rr.system.BossTick=20}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 1 0.2
execute as @s[scores={rr.system.BossTick=25}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 1.1 0.2
execute as @s[scores={rr.system.BossTick=30}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 1.2 0.2
execute as @s[scores={rr.system.BossTick=35}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.85 1.3 0.2
execute as @s[scores={rr.system.BossTick=40}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.9 1.45 0.2
execute as @s[scores={rr.system.BossTick=45}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 0.95 1.6 0.2
execute as @s[scores={rr.system.BossTick=50}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 1.1 1.75 0.2
execute as @s[scores={rr.system.BossTick=55}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..60] ~ ~ ~ 1.25 1.95 0.2
execute as @s[scores={rr.system.BossTick=60}] at @s positioned ^ ^ ^8 run playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..60] ~ ~ ~ 1.2 0.6 0
execute as @s[scores={rr.system.BossTick=60..}] at @s positioned ^ ^ ^8 run playsound minecraft:entity.evoker.cast_spell hostile @a[distance=..60] ~ ~ ~ 0.15 1.75 0

execute as @s[scores={rr.system.BossTick=60..}] at @s positioned ^ ^ ^2.5 run particle electric_spark ~ ~ ~ 0.2 0.2 0.2 0 2 force @a[distance=..50]

execute as @s[scores={rr.system.BossTick=60..},tag=RunicNSULaserATop] positioned ^ ^ ^-0.1 run summon marker ~ ~ ~ {Tags:[rr.boss.ns_void.ticking,"RunicNSULaserMTop"]}
execute as @s[scores={rr.system.BossTick=60..},tag=RunicNSULaserABottom] positioned ^ ^ ^-0.1 run summon marker ~ ~ ~ {Tags:[rr.boss.ns_void.ticking,"RunicNSULaserMBot"]}
execute as @s[scores={rr.system.BossTick=60..},tag=RunicNSULaserATop] positioned ^ ^ ^-0.1 at @n[type=marker,tag=RunicNSULaserMTop,tag=!RunicNSULaserSet,distance=..40] run tp @n[type=marker,tag=RunicNSULaserMTop,distance=..40] ~ ~ ~ facing entity @s
execute as @s[scores={rr.system.BossTick=60..},tag=RunicNSULaserABottom] positioned ^ ^ ^-0.1 at @n[type=marker,tag=RunicNSULaserMBot,tag=!RunicNSULaserSet,distance=..40] run tp @n[type=marker,tag=RunicNSULaserMBot,distance=..40] ~ ~ ~ facing entity @s
execute as @s[scores={rr.system.BossTick=60..},tag=RunicNSULaserATop] positioned ^ ^ ^-0.1 at @n[type=marker,tag=RunicNSULaserMTop,tag=!RunicNSULaserSet,distance=..40] run tp @n[type=marker,tag=RunicNSULaserMTop,distance=..40] ^ ^ ^1.3
execute as @s[scores={rr.system.BossTick=60..},tag=RunicNSULaserABottom] positioned ^ ^ ^-0.1 at @n[type=marker,tag=RunicNSULaserMBot,tag=!RunicNSULaserSet,distance=..40] run tp @n[type=marker,tag=RunicNSULaserMBot,distance=..40] ^ ^ ^1.3

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
execute as @s[scores={rr.system.BossTick=60..},tag=RunicNSULaserATop] at @s run tp @s ~ ~ ~ ~3.5 ~
execute as @s[scores={rr.system.BossTick=60..},tag=RunicNSULaserABottom] at @s run tp @s ~ ~ ~ ~-3.5 ~

tag @e[type=marker,tag=RunicNSULaserMTop,tag=!RunicNSULaserSet] add RunicNSULaserSet
tag @e[type=marker,tag=RunicNSULaserMBot,tag=!RunicNSULaserSet] add RunicNSULaserSet

execute as @s[scores={rr.system.BossTick=510}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..50] ~ ~ ~ 0.85 0.8 0
execute as @s[scores={rr.system.BossTick=530}] at @s run execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run playsound minecraft:block.end_portal_frame.fill hostile @s[distance=..50] ~ ~ ~ 0.85 0.65 0

kill @s[scores={rr.system.BossTick=550..}]