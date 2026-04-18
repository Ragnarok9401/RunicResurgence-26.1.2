execute as @s[scores={rr.system.BossTick=2040}] at @s run kill @e[tag=rr.boss.ns_void.tendril_wave.main,distance=..45]

# At 1500, the boss will summon four more lasers with the same 3-second warning up until 1280, after which the lasers will fire.
# These lasers will be tall and cannot be avoided through jumping or sneaking. They will move slower so as to not be impossible to avoid.
# This attack will last for 10 seconds, after which the lasers will move the other direction for 10 seconds.
#region
execute as @s[scores={rr.system.BossTick=2040}] at @s run summon marker ~ ~ ~ {Tags:[rr.boss.ns_void.ticking,"RunicNSULaserB1","RunicNSULaserB","RunicNSULaser"]}
execute as @s[scores={rr.system.BossTick=2040}] at @s run summon marker ~ ~ ~ {Tags:[rr.boss.ns_void.ticking,"RunicNSULaserB2","RunicNSULaserB","RunicNSULaser"]}
execute as @s[scores={rr.system.BossTick=2040}] at @s run summon marker ~ ~ ~ {Tags:[rr.boss.ns_void.ticking,"RunicNSULaserB3","RunicNSULaserB","RunicNSULaser"]}
execute as @s[scores={rr.system.BossTick=2040}] at @s run summon marker ~ ~ ~ {Tags:[rr.boss.ns_void.ticking,"RunicNSULaserB4","RunicNSULaserB","RunicNSULaser"]}

execute as @s[scores={rr.system.BossTick=2040}] at @s run tp @e[type=marker,tag=RunicNSULaserB1,distance=..4] ~ ~ ~ 0 0
execute as @s[scores={rr.system.BossTick=2040}] at @s run tp @e[type=marker,tag=RunicNSULaserB2,distance=..4] ~ ~ ~ 90 0
execute as @s[scores={rr.system.BossTick=2040}] at @s run tp @e[type=marker,tag=RunicNSULaserB3,distance=..4] ~ ~ ~ 180 0
execute as @s[scores={rr.system.BossTick=2040}] at @s run tp @e[type=marker,tag=RunicNSULaserB4,distance=..4] ~ ~ ~ 270 0


## Warning 2 (second round and beyond)
execute as @s[scores={rr.system.BossTick=1940..1999}] at @s positioned ~3 ~-0.75 ~ run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1940..1999}] at @s positioned ~-3 ~-0.75 ~ run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1940..1999}] at @s positioned ~ ~-0.75 ~3 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1940..1999}] at @s positioned ~ ~-0.75 ~-3 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1940..1999}] at @s positioned ~ ~-0.75 ~6 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1940..1999}] at @s positioned ~ ~-0.75 ~-6 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1940..1999}] at @s positioned ~6 ~-0.75 ~ run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1940..1999}] at @s positioned ~-6 ~-0.75 ~ run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1940..1999}] at @s positioned ~4 ~-0.75 ~4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1940..1999}] at @s positioned ~-4 ~-0.75 ~4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1940..1999}] at @s positioned ~4 ~-0.75 ~-4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1940..1999}] at @s positioned ~-4 ~-0.75 ~-4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]

execute as @s[scores={rr.system.BossTick=1942}] at @s positioned ~3 ~-0.75 ~ run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1942}] at @s positioned ~-3 ~-0.75 ~ run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1942}] at @s positioned ~ ~-0.75 ~3 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1942}] at @s positioned ~ ~-0.75 ~-3 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1942}] at @s positioned ~ ~-0.75 ~6 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1942}] at @s positioned ~ ~-0.75 ~-6 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1942}] at @s positioned ~6 ~-0.75 ~ run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1942}] at @s positioned ~-6 ~-0.75 ~ run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1942}] at @s positioned ~4 ~-0.75 ~4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1942}] at @s positioned ~-4 ~-0.75 ~4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1942}] at @s positioned ~4 ~-0.75 ~-4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1942}] at @s positioned ~-4 ~-0.75 ~-4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0

execute as @s[scores={rr.system.BossTick=1942}] at @s positioned ~3 ~-0.75 ~ run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1942}] at @s positioned ~-3 ~-0.75 ~ run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1942}] at @s positioned ~ ~-0.75 ~3 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1942}] at @s positioned ~ ~-0.75 ~-3 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1942}] at @s positioned ~ ~-0.75 ~6 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1942}] at @s positioned ~ ~-0.75 ~-6 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1942}] at @s positioned ~4 ~-0.75 ~4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1942}] at @s positioned ~-4 ~-0.75 ~4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1942}] at @s positioned ~4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1942}] at @s positioned ~-4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
