scoreboard players set @s[scores={rr.system.BossTick=1}] rr.system.BossHealth 3500
execute as @s[scores={rr.system.BossTick=10}] at @s as @a[distance=..80,tag=rr.player.in_boss_fight] run function rr_recast:cutscene/boss_intro/necrosculker_ultimate/title_start
execute as @s[scores={rr.system.BossTick=10}] at @s run function rr_recast:boss/summon_necrosculker_ultimate_body_temp
execute as @s[scores={rr.system.BossTick=10}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_weakpoints
execute as @s[scores={rr.system.BossTick=1}] at @s run playsound minecraft:block.end_portal.spawn hostile @a[distance=..80] ~ ~ ~ 1.7 0.25 0.35
execute as @s[scores={rr.system.BossTick=1}] at @s run stopsound @a[distance=..40] record
execute as @s[scores={rr.system.BossTick=10}] at @s store result bossbar rr.boss.necrosculker_ultimate max run scoreboard players get @s rr.system.BossHealth

execute as @s[scores={rr.system.BossTick=1..95}] at @s run particle explosion_emitter ~ ~ ~ 2.5 2.5 2.5 0 3 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1..95}] at @s run particle sculk_charge{roll:0} ~ ~ ~ 7.75 5 7.75 0 10 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1..95}] at @s run particle sculk_soul ~ ~ ~ 7.75 5 7.75 0 10 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1..}] at @s run particle sculk_charge{roll:0} ~ ~-1.475 ~ 7.75 0 7.75 0 2 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1..}] at @s run particle sculk_soul ~ ~ ~ 7.75 2 7.75 0 2 force @a[distance=..60]

execute as @s[scores={rr.system.BossTick=1}] at @s run playsound minecraft:entity.warden.emerge hostile @a[distance=..80] ~ ~ ~ 1.8 0.3 0.35
execute as @s[scores={rr.system.BossTick=1}] at @s run playsound minecraft:entity.warden.roar hostile @a[distance=..80] ~ ~ ~ 2 0.3 0.35
execute as @s[scores={rr.system.BossTick=40}] at @s run playsound minecraft:entity.warden.death hostile @a[distance=..80] ~ ~ ~ 1.6 0.3 0.35

# Summon Tendril Wave Secondary marker
execute as @s[scores={rr.system.BossTick=99}] at @s run summon marker ~ ~ ~ {Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.tendril_wave","rr.boss.ns_void.tendril_wave.secondary"]}