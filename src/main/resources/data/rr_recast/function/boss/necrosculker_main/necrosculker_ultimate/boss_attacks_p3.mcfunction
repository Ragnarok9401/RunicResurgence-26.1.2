# At 1080, eight-and-a-half seconds after the boss is weakened, the boss will regain its strength and the roots will disappear. If the boss DOES NOT take 1/4 of its total health in damage in the time that it was weakened, it will just spawn more Ancient Sentinels from the ground to attack nearby players. As well as this, there will be 12 Massive Sculk Tendrills that fire toward players at intervals of 0.75 seconds, or 15 ticks.
#region
## Summoning Markers as the indicators, play a sound as each one summons
execute as @s[scores={rr.system.BossTick=1200}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1205}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1210}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1215}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1220}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1225}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1230}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1235}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1240}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1245}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1250}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1255}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1260}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1265}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1270}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1275}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1280}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1285}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1290}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1295}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1300}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1305}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1310}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1315}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1320}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1325}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1330}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1335}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1340}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1345}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1350}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=1355}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
#endregion

# At 1400, summon 12 Ancient Sentinels with no drops around the Sculker
#region

## Warning
execute as @s[scores={rr.system.BossTick=1340..1400}] at @s positioned ~3 ~-0.75 ~ run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1340..1400}] at @s positioned ~-3 ~-0.75 ~ run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1340..1400}] at @s positioned ~ ~-0.75 ~3 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1340..1400}] at @s positioned ~ ~-0.75 ~-3 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1340..1400}] at @s positioned ~6 ~-0.75 ~ run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1340..1400}] at @s positioned ~-6 ~-0.75 ~ run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1340..1400}] at @s positioned ~ ~-0.75 ~6 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1340..1400}] at @s positioned ~ ~-0.75 ~-6 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1340..1400}] at @s positioned ~4 ~-0.75 ~4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1340..1400}] at @s positioned ~-4 ~-0.75 ~4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1340..1400}] at @s positioned ~4 ~-0.75 ~-4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1340..1400}] at @s positioned ~-4 ~-0.75 ~-4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]

execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~3 ~-0.75 ~ run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~-3 ~-0.75 ~ run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~ ~-0.75 ~3 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~ ~-0.75 ~-3 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~4 ~-0.75 ~4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~-4 ~-0.75 ~4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~6 ~-0.75 ~ run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~-6 ~-0.75 ~ run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~ ~-0.75 ~6 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~ ~-0.75 ~-6 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~4 ~-0.75 ~-4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~-4 ~-0.75 ~-4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0

execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~3 ~-0.75 ~ run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~-3 ~-0.75 ~ run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~ ~-0.75 ~3 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~ ~-0.75 ~-3 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~6 ~-0.75 ~ run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~-6 ~-0.75 ~ run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~ ~-0.75 ~6 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~ ~-0.75 ~-6 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~4 ~-0.75 ~4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~-4 ~-0.75 ~4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~-4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0

## Summon three sets of four different Crypt Keepers
execute as @s[scores={rr.system.BossTick=1400}] at @s store result score @s rr.math.index run random value 0..5
execute as @s[scores={rr.system.BossTick=1400}] at @s positioned ~3 ~-1.45 ~ run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_keeper
execute as @s[scores={rr.system.BossTick=1401}] at @s positioned ~-3 ~-1.45 ~ run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_keeper
execute as @s[scores={rr.system.BossTick=1402}] at @s positioned ~ ~-1.45 ~3 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_keeper
execute as @s[scores={rr.system.BossTick=1403}] at @s positioned ~ ~-1.45 ~-3 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_keeper
execute as @s[scores={rr.system.BossTick=1404}] at @s store result score @s rr.math.index run random value 0..5
execute as @s[scores={rr.system.BossTick=1404}] at @s positioned ~ ~-1.45 ~6 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_keeper
execute as @s[scores={rr.system.BossTick=1405}] at @s positioned ~ ~-1.45 ~-6 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_keeper
execute as @s[scores={rr.system.BossTick=1406}] at @s positioned ~6 ~-1.45 ~ run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_keeper
execute as @s[scores={rr.system.BossTick=1407}] at @s positioned ~-6 ~-1.45 ~ run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_keeper
execute as @s[scores={rr.system.BossTick=1408}] at @s store result score @s rr.math.index run random value 0..5
execute as @s[scores={rr.system.BossTick=1408}] at @s positioned ~4 ~-1.45 ~4 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_keeper
execute as @s[scores={rr.system.BossTick=1409}] at @s positioned ~-4 ~-1.45 ~4 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_keeper
execute as @s[scores={rr.system.BossTick=1410}] at @s positioned ~4 ~-1.45 ~-4 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_keeper
execute as @s[scores={rr.system.BossTick=1411}] at @s positioned ~-4 ~-1.45 ~-4 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_keeper

execute as @s[scores={rr.system.BossTick=1400}] at @s positioned ~3 ~-0.75 ~ run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1401}] at @s positioned ~-3 ~-0.75 ~ run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1402}] at @s positioned ~ ~-0.75 ~3 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1403}] at @s positioned ~ ~-0.75 ~-3 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1404}] at @s positioned ~ ~-0.75 ~6 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1405}] at @s positioned ~ ~-0.75 ~-6 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1406}] at @s positioned ~6 ~-0.75 ~ run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1407}] at @s positioned ~-6 ~-0.75 ~ run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1408}] at @s positioned ~4 ~-0.75 ~4 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1409}] at @s positioned ~-4 ~-0.75 ~4 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1410}] at @s positioned ~4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1411}] at @s positioned ~-4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
#endregion

# Summon Tendril Wave Main marker
execute as @s[scores={rr.system.BossTick=1440}] at @s run summon marker ~ ~ ~ {Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.tendril_wave","rr.boss.ns_void.tendril_wave.main"]}