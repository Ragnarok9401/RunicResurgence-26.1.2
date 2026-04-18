execute as @s[scores={rr.system.BossTick=2040}] at @s run kill @e[tag=rr.boss.ns_nightmare.tendril_wave,distance=..45]

# At 1500, the boss will summon more lasers with the same 3-second warning up until 1280, after which the lasers will fire. These lasers will be tall and cannot be avoided through jumping or sneaking. They will move slower so as to not be impossible to avoid. On top of this, four more Ancient Sentinels will spawn and will be immune to the lasers. This attack will last for 10 seconds, after which the lasers will move the other direction for 10 seconds.
#region
execute as @s[scores={rr.system.BossTick=2040}] at @s run summon marker ~ ~ ~ {Tags:["RunicNSNLaserB1","RunicNSNLaserB","RunicNSNLaser",rr.boss.ns_nightmare.ticking]}
execute as @s[scores={rr.system.BossTick=2040}] at @s run summon marker ~ ~ ~ {Tags:["RunicNSNLaserB2","RunicNSNLaserB","RunicNSNLaser",rr.boss.ns_nightmare.ticking]}
execute as @s[scores={rr.system.BossTick=2040}] at @s run summon marker ~ ~ ~ {Tags:["RunicNSNLaserB3","RunicNSNLaserB","RunicNSNLaser",rr.boss.ns_nightmare.ticking]}
execute as @s[scores={rr.system.BossTick=2040}] at @s run summon marker ~ ~ ~ {Tags:["RunicNSNLaserB4","RunicNSNLaserB","RunicNSNLaser",rr.boss.ns_nightmare.ticking]}

execute as @s[scores={rr.system.BossTick=2040}] at @s run tp @e[type=marker,tag=RunicNSNLaserB1,distance=..4] ~ ~ ~ 0 0
execute as @s[scores={rr.system.BossTick=2040}] at @s run tp @e[type=marker,tag=RunicNSNLaserB2,distance=..4] ~ ~ ~ 90 0
execute as @s[scores={rr.system.BossTick=2040}] at @s run tp @e[type=marker,tag=RunicNSNLaserB3,distance=..4] ~ ~ ~ 180 0
execute as @s[scores={rr.system.BossTick=2040}] at @s run tp @e[type=marker,tag=RunicNSNLaserB4,distance=..4] ~ ~ ~ 270 0


## Warning 2 (second round and beyond)
execute as @s[scores={rr.system.BossTick=2520..2599}] at @s positioned ~ ~-0.75 ~3 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=2520..2599}] at @s positioned ~ ~-0.75 ~-3 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=2520..2599}] at @s positioned ~ ~-0.75 ~6 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=2520..2599}] at @s positioned ~ ~-0.75 ~-6 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=2520..2599}] at @s positioned ~6 ~-0.75 ~ run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=2520..2599}] at @s positioned ~-6 ~-0.75 ~ run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=2520..2599}] at @s positioned ~4 ~-0.75 ~4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=2520..2599}] at @s positioned ~-4 ~-0.75 ~4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=2520..2599}] at @s positioned ~4 ~-0.75 ~-4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=2520..2599}] at @s positioned ~-4 ~-0.75 ~-4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]

execute as @s[scores={rr.system.BossTick=2522}] at @s positioned ~ ~-0.75 ~3 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=2522}] at @s positioned ~ ~-0.75 ~-3 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=2522}] at @s positioned ~ ~-0.75 ~6 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=2522}] at @s positioned ~ ~-0.75 ~-6 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=2522}] at @s positioned ~6 ~-0.75 ~ run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=2522}] at @s positioned ~-6 ~-0.75 ~ run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=2522}] at @s positioned ~4 ~-0.75 ~4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=2522}] at @s positioned ~-4 ~-0.75 ~4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=2522}] at @s positioned ~4 ~-0.75 ~-4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=2522}] at @s positioned ~-4 ~-0.75 ~-4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0

execute as @s[scores={rr.system.BossTick=2522}] at @s positioned ~ ~-0.75 ~3 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=2522}] at @s positioned ~ ~-0.75 ~-3 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=2522}] at @s positioned ~ ~-0.75 ~6 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=2522}] at @s positioned ~ ~-0.75 ~-6 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=2522}] at @s positioned ~4 ~-0.75 ~4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=2522}] at @s positioned ~-4 ~-0.75 ~4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=2522}] at @s positioned ~4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=2522}] at @s positioned ~-4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0