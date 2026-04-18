

# Clear any old Siphon Auras from the arena
execute as @s[scores={rr.system.BossTick=100}] at @s run kill @e[type=item_display,tag=rr.boss.ns_void.siphon_aura]

# Create a Soul Siphon Aura at a random position in the arena each cycle
execute as @s[scores={rr.system.BossTick=100}] at @s store result entity @s data.rr_recast.aura.x float 0.1 run random value -140..140
execute as @s[scores={rr.system.BossTick=100}] at @s store result entity @s data.rr_recast.aura.z float 0.1 run random value -140..140
execute as @s[scores={rr.system.BossTick=101}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_siphon_aura_macro with entity @s data.rr_recast.aura
execute as @s[scores={rr.system.BossTick=102}] at @s store result entity @s data.rr_recast.aura.x float 0.1 run random value -140..140
execute as @s[scores={rr.system.BossTick=102}] at @s store result entity @s data.rr_recast.aura.z float 0.1 run random value -140..140
execute as @s[scores={rr.system.BossTick=103}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_siphon_aura_macro with entity @s data.rr_recast.aura

execute as @e[type=marker,distance=..40,tag=rr.boss.ns_void.siphon_aura_summon] at @s run tp @s ~ ~-0.1 ~
execute as @e[type=marker,distance=..40,tag=rr.boss.ns_void.siphon_aura_summon] at @s run particle entity_effect{color:-510749465} ~ ~ ~ 0 0 0 0.01 1 force @a[distance=..40]
execute as @e[type=marker,distance=..40,tag=rr.boss.ns_void.siphon_aura_summon] at @s unless block ~ ~ ~ #rr_recast:spell_passable run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_siphon_aura


# At 100, summon 12 Ancient Sentinels with no drops around the Sculker
#region
## Warning
execute as @s[scores={rr.system.BossTick=40..99}] at @s positioned ~3 ~-0.75 ~ run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=40..99}] at @s positioned ~-3 ~-0.75 ~ run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=40..99}] at @s positioned ~ ~-0.75 ~3 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=40..99}] at @s positioned ~ ~-0.75 ~-3 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=40..99}] at @s positioned ~ ~-0.75 ~6 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=40..99}] at @s positioned ~6 ~-0.75 ~ run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=40..99}] at @s positioned ~ ~-0.75 ~-6 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=40..99}] at @s positioned ~-6 ~-0.75 ~ run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=40..99}] at @s positioned ~4 ~-0.75 ~4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=40..99}] at @s positioned ~-4 ~-0.75 ~4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=40..99}] at @s positioned ~4 ~-0.75 ~-4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=40..99}] at @s positioned ~-4 ~-0.75 ~-4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]

execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~3 ~-0.75 ~ run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~-3 ~-0.75 ~ run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~ ~-0.75 ~3 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~ ~-0.75 ~-3 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~ ~-0.75 ~6 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~ ~-0.75 ~-6 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~6 ~-0.75 ~ run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~-6 ~-0.75 ~ run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~4 ~-0.75 ~4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~-4 ~-0.75 ~4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~4 ~-0.75 ~-4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~-4 ~-0.75 ~-4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0

execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~3 ~-0.75 ~ run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~-3 ~-0.75 ~ run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~ ~-0.75 ~3 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~ ~-0.75 ~-3 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~ ~-0.75 ~6 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~ ~-0.75 ~-6 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~6 ~-0.75 ~ run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~-6 ~-0.75 ~ run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~4 ~-0.75 ~4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~-4 ~-0.75 ~4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=42}] at @s positioned ~-4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0


## Summon three sets of four different Crypt Keepers
execute as @s[scores={rr.system.BossTick=100}] at @s store result score @s rr.math.index run random value 0..5
execute as @s[scores={rr.system.BossTick=100}] at @s positioned ~3 ~-1.45 ~ run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_keeper
execute as @s[scores={rr.system.BossTick=101}] at @s positioned ~-3 ~-1.45 ~ run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_keeper
execute as @s[scores={rr.system.BossTick=102}] at @s positioned ~ ~-1.45 ~3 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_keeper
execute as @s[scores={rr.system.BossTick=103}] at @s positioned ~ ~-1.45 ~-3 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_keeper
execute as @s[scores={rr.system.BossTick=104}] at @s store result score @s rr.math.index run random value 0..5
execute as @s[scores={rr.system.BossTick=104}] at @s positioned ~ ~-1.45 ~6 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_keeper
execute as @s[scores={rr.system.BossTick=105}] at @s positioned ~ ~-1.45 ~-6 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_keeper
execute as @s[scores={rr.system.BossTick=106}] at @s positioned ~6 ~-1.45 ~ run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_keeper
execute as @s[scores={rr.system.BossTick=107}] at @s positioned ~-6 ~-1.45 ~ run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_keeper
execute as @s[scores={rr.system.BossTick=108}] at @s store result score @s rr.math.index run random value 0..5
execute as @s[scores={rr.system.BossTick=108}] at @s positioned ~4 ~-1.45 ~4 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_keeper
execute as @s[scores={rr.system.BossTick=109}] at @s positioned ~-4 ~-1.45 ~4 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_keeper
execute as @s[scores={rr.system.BossTick=110}] at @s positioned ~4 ~-1.45 ~-4 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_keeper
execute as @s[scores={rr.system.BossTick=111}] at @s positioned ~-4 ~-1.45 ~-4 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_keeper

execute as @s[scores={rr.system.BossTick=100}] at @s positioned ~3 ~-0.75 ~ run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=101}] at @s positioned ~-3 ~-0.75 ~ run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=102}] at @s positioned ~ ~-0.75 ~3 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=103}] at @s positioned ~ ~-0.75 ~-3 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=104}] at @s positioned ~ ~-0.75 ~6 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=105}] at @s positioned ~ ~-0.75 ~-6 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=106}] at @s positioned ~6 ~-0.75 ~ run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=107}] at @s positioned ~-6 ~-0.75 ~ run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=108}] at @s positioned ~4 ~-0.75 ~4 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=109}] at @s positioned ~-4 ~-0.75 ~4 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=110}] at @s positioned ~4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=111}] at @s positioned ~-4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
#endregion

# At 200, send 16 Supermassive Sculk Tendril Clusters toward random players at 0.5 second intervals (so this would be 200, 210, 220, 230, 240, 250, 260, 270, 280, 290, 300, 310, 320, 330, 340, 350). Upon reaching players, these tendrils wind up and lash out, slowing down players that are hit by its attack and weakening their Mind Health, which is another sort of life bar to keep track of.
#region
## Summoning Markers as the indicators, play a sound as each one summons
execute as @s[scores={rr.system.BossTick=200}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=220}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=240}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=260}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=280}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=300}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=320}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=340}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=210}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=230}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=250}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=270}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=290}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=310}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=330}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster
execute as @s[scores={rr.system.BossTick=350}] at @e[type=item_display,tag=RunicNSUHead1,limit=1,sort=nearest] positioned ^ ^-0.3 ^2 run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_tendril_cluster