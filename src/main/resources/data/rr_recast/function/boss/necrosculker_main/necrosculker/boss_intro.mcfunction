
execute as @s[scores={rr.system.BossSongTick=80},tag=!rr.boss.is_dead] at @s run execute as @a[tag=rr.player.in_boss_fight,distance=..80] at @s run playsound rr_recast:boss_tracks.deep_trouble record @s ~ ~ ~ 0.5 1 0

execute as @s[scores={rr.system.BossTick=1..95}] at @s run particle explosion_emitter ~ ~ ~ 1.8 1.8 1.8 0 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1..95}] at @s run particle sculk_charge{roll:0} ~ ~ ~ 7.75 5 7.75 0 6 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1..95}] at @s run particle sculk_soul ~ ~ ~ 7.75 5 7.75 0 6 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1}] at @s run playsound minecraft:entity.warden.emerge hostile @a[distance=..80] ~ ~ ~ 1.5 0.4 0.35
execute as @s[scores={rr.system.BossTick=1}] at @s run playsound minecraft:entity.warden.roar hostile @a[distance=..80] ~ ~ ~ 2 0.4 0.35
execute as @s[scores={rr.system.BossTick=40}] at @s run playsound minecraft:entity.warden.death hostile @a[distance=..80] ~ ~ ~ 1.6 0.4 0.35

scoreboard players set @s[scores={rr.system.BossTick=1}] rr.system.BossHealth 1000
execute as @s[scores={rr.system.BossTick=10}] at @s run execute as @a[distance=..80,tag=rr.player.in_boss_fight] at @s run function rr_recast:cutscene/boss_intro/necrosculker/title_start
execute as @s[scores={rr.system.BossTick=10}] at @s run function rr_recast:boss/summon_necrosculker_body_temp
execute as @s[scores={rr.system.BossTick=10}] at @s run function rr_recast:boss/necrosculker_main/necrosculker/summon_weakpoints
execute as @s[scores={rr.system.BossTick=1}] at @s run playsound minecraft:block.end_portal.spawn hostile @a[distance=..80] ~ ~ ~ 1.4 0.4 0.35
execute as @s at @s run stopsound @a[distance=..40,tag=rr.player.in_boss_fight] music
execute as @s[scores={rr.system.BossTick=1}] at @s run stopsound @a[distance=..40] record
execute as @s[scores={rr.system.BossTick=10}] at @s store result bossbar rr.boss.necrosculker max run scoreboard players get @s rr.system.BossHealth


# At 100, summon 6 Ancient Sentinels with no drops around the Sculker
#region
## Warning
execute as @s[scores={rr.system.BossTick=40..99}] at @s positioned ~ ~-0.75 ~6 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=40..99}] at @s positioned ~ ~-0.75 ~-6 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=40..99}] at @s positioned ~4 ~-0.75 ~4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=40..99}] at @s positioned ~-4 ~-0.75 ~4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=40..99}] at @s positioned ~4 ~-0.75 ~-4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=40..99}] at @s positioned ~-4 ~-0.75 ~-4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]

execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~ ~-0.75 ~6 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~ ~-0.75 ~-6 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~4 ~-0.75 ~4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~-4 ~-0.75 ~4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~4 ~-0.75 ~-4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~-4 ~-0.75 ~-4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0

execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~ ~-0.75 ~6 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~ ~-0.75 ~-6 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~4 ~-0.75 ~4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~-4 ~-0.75 ~4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~-4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0