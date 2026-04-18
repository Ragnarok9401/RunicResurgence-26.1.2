# At 1080, eight-and-a-half seconds after the boss is weakened, the boss will regain its strength and the roots will disappear. If the boss DOES NOT take 1/4 of its total health in damage in the time that it was weakened, it will just spawn more Ancient Sentinels from the ground to attack nearby players. As well as this, there will be 12 Massive Sculk Tendrills that fire toward players at intervals of 0.75 seconds, or 15 ticks.
#region
## Summoning Markers as the indicators, play a sound as each one summons
execute as @s[scores={rr.system.BossTick=1200}] at @e[type=item_display,tag=RunicNSHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSTendril"]}
execute as @s[scores={rr.system.BossTick=1200}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.2 1 0
execute as @s[scores={rr.system.BossTick=1215}] at @e[type=item_display,tag=RunicNSHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSTendril"]}
execute as @s[scores={rr.system.BossTick=1215}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.2 1 0
execute as @s[scores={rr.system.BossTick=1230}] at @e[type=item_display,tag=RunicNSHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSTendril"]}
execute as @s[scores={rr.system.BossTick=1230}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.2 1 0
execute as @s[scores={rr.system.BossTick=1245}] at @e[type=item_display,tag=RunicNSHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSTendril"]}
execute as @s[scores={rr.system.BossTick=1245}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.2 1 0
execute as @s[scores={rr.system.BossTick=1260}] at @e[type=item_display,tag=RunicNSHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSTendril"]}
execute as @s[scores={rr.system.BossTick=1260}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.2 1 0
execute as @s[scores={rr.system.BossTick=1275}] at @e[type=item_display,tag=RunicNSHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSTendril"]}
execute as @s[scores={rr.system.BossTick=1275}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.2 1 0
execute as @s[scores={rr.system.BossTick=1290}] at @e[type=item_display,tag=RunicNSHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSTendril"]}
execute as @s[scores={rr.system.BossTick=1290}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.2 1 0
execute as @s[scores={rr.system.BossTick=1305}] at @e[type=item_display,tag=RunicNSHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSTendril"]}
execute as @s[scores={rr.system.BossTick=1305}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.2 1 0
execute as @s[scores={rr.system.BossTick=1320}] at @e[type=item_display,tag=RunicNSHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSTendril"]}
execute as @s[scores={rr.system.BossTick=1320}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.2 1 0
execute as @s[scores={rr.system.BossTick=1335}] at @e[type=item_display,tag=RunicNSHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSTendril"]}
execute as @s[scores={rr.system.BossTick=1335}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.2 1 0
execute as @s[scores={rr.system.BossTick=1350}] at @e[type=item_display,tag=RunicNSHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSTendril"]}
execute as @s[scores={rr.system.BossTick=1350}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.2 1 0
execute as @s[scores={rr.system.BossTick=1365}] at @e[type=item_display,tag=RunicNSHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSTendril"]}
execute as @s[scores={rr.system.BossTick=1365}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.2 1 0
#endregion

# At 1400, summon 4 Ancient Sentinels with no drops around the Sculker
#region

## Warning
execute as @s[scores={rr.system.BossTick=1240..1300}] at @s positioned ~4 ~-0.75 ~4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1240..1300}] at @s positioned ~-4 ~-0.75 ~4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1240..1300}] at @s positioned ~4 ~-0.75 ~-4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1240..1300}] at @s positioned ~-4 ~-0.75 ~-4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]

execute as @s[scores={rr.system.BossTick=1242}] at @s positioned ~4 ~-0.75 ~4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=1242}] at @s positioned ~-4 ~-0.75 ~4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=1242}] at @s positioned ~4 ~-0.75 ~-4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=1242}] at @s positioned ~-4 ~-0.75 ~-4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0

execute as @s[scores={rr.system.BossTick=1242}] at @s positioned ~4 ~-0.75 ~4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=1242}] at @s positioned ~-4 ~-0.75 ~4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=1242}] at @s positioned ~4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=1242}] at @s positioned ~-4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0

## Summon two sets of two different Crypt Keepers
execute as @s[scores={rr.system.BossTick=1300}] at @s store result score @s rr.math.index run random value 0..5
execute as @s[scores={rr.system.BossTick=1301}] at @s positioned ~4 ~-1.45 ~4 run function rr_recast:boss/necrosculker_main/necrosculker/summon_keeper
execute as @s[scores={rr.system.BossTick=1305}] at @s positioned ~-4 ~-1.45 ~4 run function rr_recast:boss/necrosculker_main/necrosculker/summon_keeper
execute as @s[scores={rr.system.BossTick=1308}] at @s store result score @s rr.math.index run random value 0..5
execute as @s[scores={rr.system.BossTick=1309}] at @s positioned ~4 ~-1.45 ~-4 run function rr_recast:boss/necrosculker_main/necrosculker/summon_keeper
execute as @s[scores={rr.system.BossTick=1313}] at @s positioned ~-4 ~-1.45 ~-4 run function rr_recast:boss/necrosculker_main/necrosculker/summon_keeper

execute as @s[scores={rr.system.BossTick=1301}] at @s positioned ~4 ~-0.75 ~4 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=1305}] at @s positioned ~-4 ~-0.75 ~4 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=1309}] at @s positioned ~4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=1313}] at @s positioned ~-4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
#endregion

## OLD ATTACK, NO LONGER PART OF FIGHT
# # At 1500, the boss will summon more lasers with the same 3-second warning up until 1280, after which the lasers will fire. These lasers will be tall and cannot be avoided through jumping or sneaking. They will move slower so as to not be impossible to avoid. On top of this, four more Ancient Sentinels will spawn and will be immune to the lasers. This attack will last for 10 seconds, after which the lasers will move the other direction for 10 seconds.
# #region
# execute as @s[scores={rr.system.BossTick=1440}] at @s run summon marker ~ ~ ~ {Tags:["rr.boss.ns.ticking","RunicNSLaserB1","RunicNSLaserB","RunicNSLaser"]}
# execute as @s[scores={rr.system.BossTick=1440}] at @s run summon marker ~ ~ ~ {Tags:["rr.boss.ns.ticking","RunicNSLaserB2","RunicNSLaserB","RunicNSLaser"]}
# execute as @s[scores={rr.system.BossTick=1440}] at @s run summon marker ~ ~ ~ {Tags:["rr.boss.ns.ticking","RunicNSLaserB3","RunicNSLaserB","RunicNSLaser"]}
# execute as @s[scores={rr.system.BossTick=1440}] at @s run summon marker ~ ~ ~ {Tags:["rr.boss.ns.ticking","RunicNSLaserB4","RunicNSLaserB","RunicNSLaser"]}
# execute as @s[scores={rr.system.BossTick=1440}] at @s run summon marker ~ ~ ~ {Tags:["rr.boss.ns.ticking","RunicNSLaserB5","RunicNSLaserB","RunicNSLaser"]}
# execute as @s[scores={rr.system.BossTick=1440}] at @s run summon marker ~ ~ ~ {Tags:["rr.boss.ns.ticking","RunicNSLaserB6","RunicNSLaserB","RunicNSLaser"]}
# 
# execute as @s[scores={rr.system.BossTick=1440}] at @s run tp @e[type=marker,tag=RunicNSLaserB1] ~ ~ ~ 0 0
# execute as @s[scores={rr.system.BossTick=1440}] at @s run tp @e[type=marker,tag=RunicNSLaserB2] ~ ~ ~ 60 0
# execute as @s[scores={rr.system.BossTick=1440}] at @s run tp @e[type=marker,tag=RunicNSLaserB3] ~ ~ ~ 120 0
# execute as @s[scores={rr.system.BossTick=1440}] at @s run tp @e[type=marker,tag=RunicNSLaserB4] ~ ~ ~ 180 0
# execute as @s[scores={rr.system.BossTick=1440}] at @s run tp @e[type=marker,tag=RunicNSLaserB5] ~ ~ ~ 240 0
# execute as @s[scores={rr.system.BossTick=1440}] at @s run tp @e[type=marker,tag=RunicNSLaserB6] ~ ~ ~ 300 0