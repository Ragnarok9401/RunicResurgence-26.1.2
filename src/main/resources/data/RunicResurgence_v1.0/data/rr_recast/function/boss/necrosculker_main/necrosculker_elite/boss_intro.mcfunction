
scoreboard players set @s[scores={rr.system.BossTick=1}] rr.system.BossHealth 2000
# execute as @s[scores={rr.system.BossTick=1..}] at @s run scoreboard players set @a[distance=..20.75,tag=!rr.player.in_boss_fight] runicMindStr 100
# execute as @s[scores={rr.system.BossTick=1..}] at @s run execute as @a[distance=20.751..80,tag=!rr.player.in_boss_fight] unless score @s runicMindStr matches -1 run scoreboard players set @s runicMindStr -1
#execute as @s[scores={rr.system.BossTick=2}] at @s run tellraw @a[distance=..80,tag=rr.player.in_boss_fight] [{"text":"[Runic Resurgence] ","color":"white","italic":false},{"text":"The Necrosculker","color":"#5387D6","italic":false,"bold":true},{"text":" awakens","color":"red","bold":false}]
# execute as @s[scores={rr.system.BossTick=2}] at @s run title @a[distance=..80,tag=rr.player.in_boss_fight] title [{"text":"Elite Necrosculker [","color":"#4875BA","italic":false},{"text":"⭐","color":"gold","italic":false},{"text":"]","color":"#4875BA","italic":false}]
# execute as @s[scores={rr.system.BossTick=2}] at @s run title @a[distance=..80,tag=rr.player.in_boss_fight] subtitle [{"text":"The Darker Defiler","color":"dark_aqua","italic":false}]
execute as @s[scores={rr.system.BossTick=10}] at @s as @a[distance=..80,tag=rr.player.in_boss_fight] run function rr_recast:cutscene/boss_intro/necrosculker_elite/title_start
execute as @s[scores={rr.system.BossTick=10}] at @s run function rr_recast:boss/summon_necrosculker_elite_body_temp
execute as @s[scores={rr.system.BossTick=10}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_elite/summon_weakpoints
execute as @s[scores={rr.system.BossTick=1}] at @s run playsound minecraft:block.end_portal.spawn hostile @a[distance=..80] ~ ~ ~ 1.6 0.3 0.35
execute as @s[scores={rr.system.BossTick=1..95}] at @s run particle explosion_emitter ~ ~ ~ 1.8 1.8 1.8 0 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1..95}] at @s run particle sculk_charge{roll:0} ~ ~ ~ 7.75 5 7.75 0 6 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1..95}] at @s run particle sculk_soul ~ ~ ~ 7.75 5 7.75 0 6 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1}] at @s run stopsound @a[distance=..40] record
execute as @s[scores={rr.system.BossTick=10}] at @s store result bossbar rr.boss.necrosculker_elite max run scoreboard players get @s rr.system.BossHealth
execute as @s[scores={rr.system.BossTick=1}] at @s run playsound minecraft:entity.warden.emerge hostile @a[distance=..80] ~ ~ ~ 1.8 0.4 0.35
execute as @s[scores={rr.system.BossTick=1}] at @s run playsound minecraft:entity.warden.roar hostile @a[distance=..80] ~ ~ ~ 2 0.4 0.35
execute as @s[scores={rr.system.BossTick=40}] at @s run playsound minecraft:entity.warden.death hostile @a[distance=..80] ~ ~ ~ 1.6 0.4 0.35


# At 100, summon 8 Ancient Sentinels with no drops around the Sculker
#region
## Warning
execute as @s[scores={rr.system.BossTick=40..99}] at @s positioned ~ ~-0.75 ~6 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=40..99}] at @s positioned ~6 ~-0.75 ~ run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=40..99}] at @s positioned ~ ~-0.75 ~-6 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=40..99}] at @s positioned ~-6 ~-0.75 ~ run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=40..99}] at @s positioned ~4 ~-0.75 ~4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=40..99}] at @s positioned ~-4 ~-0.75 ~4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=40..99}] at @s positioned ~4 ~-0.75 ~-4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=40..99}] at @s positioned ~-4 ~-0.75 ~-4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]

execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~ ~-0.75 ~6 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~ ~-0.75 ~-6 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~6 ~-0.75 ~ run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~-6 ~-0.75 ~ run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~4 ~-0.75 ~4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~-4 ~-0.75 ~4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~4 ~-0.75 ~-4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~-4 ~-0.75 ~-4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0

execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~ ~-0.75 ~6 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~ ~-0.75 ~-6 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~6 ~-0.75 ~ run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~-6 ~-0.75 ~ run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~4 ~-0.75 ~4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~-4 ~-0.75 ~4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~-4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0