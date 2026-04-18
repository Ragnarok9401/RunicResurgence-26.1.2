scoreboard players add @s rr.system.BossTick 1
scoreboard players add @s[tag=!rr.boss.is_dead] rr.system.BossSongTick 1
scoreboard players add @e[distance=..40,tag=rr.boss.ns_void.ticking] rr.system.BossTick 1

# Test the range of certain things from the position of the Necrosculker
# 20.75 is the range that the fight should take place within from the center of the boss, anything outside of it should be considered not in the fight
#execute as @n[type=item_display,tag=RunicNSUHead1] at @s run particle crit ^ ^ ^20.75 0 0 0 0 1 force @a
#execute as @s[scores={rr.system.BossTick=1..}] at @s run scoreboard players set @a[distance=..20.75,tag=!rr.player.in_boss_fight] runicMindStr 100
#execute as @s[scores={rr.system.BossTick=1..}] at @s run execute as @a[distance=20.751..80,tag=!rr.player.in_boss_fight] unless score @s runicMindStr matches -1 run scoreboard players set @s runicMindStr -1
#execute as @s[scores={rr.system.BossTick=2}] at @s run tellraw @a[distance=..80,tag=rr.player.in_boss_fight] [{"text":"[Runic Resurgence] ","color":"white","italic":false},{"text":"The Necrosculker","color":"#5387D6","italic":false,"bold":true},{"text":" awakens","color":"red","bold":false}]
# execute as @s[scores={rr.system.BossTick=2}] at @s run title @a[distance=..80,tag=rr.player.in_boss_fight] title [{"text":"Void Necrosculker [","color":"#4875BA","italic":false},{"text":"⭐⭐⭐","color":"gold","italic":false},{"text":"]","color":"#4875BA","italic":false}]
# execute as @s[scores={rr.system.BossTick=2}] at @s run title @a[distance=..80,tag=rr.player.in_boss_fight] subtitle [{"text":"The Desolate Destroyer","color":"dark_aqua","italic":false}]

kill @e[distance=..50,tag=RunicNSUTendril,scores={rr.system.BossSongTick=200..},type=marker]

execute as @s[scores={rr.system.BossTick=1..}] at @s if entity @e[type=item,distance=..26] run execute as @e[type=item,distance=..26,tag=!rr.boss.no_despawn_item] run data merge entity @s {Age:-32768,PickupDelay:0}
execute as @s at @s if entity @e[type=item,distance=..26] run execute as @e[type=item,distance=..26,tag=!rr.boss.no_despawn_item] run tag @s add rr.boss.no_despawn_item

# execute as @s[scores={rr.system.BossTick=100..}] at @s unless entity @p[distance=..120,tag=rr.player.in_boss_fight,tag=!RunicLeftNSUArea4] run function rr_recast:technical/kill/necrosculker_ultimate_local

execute as @e[type=marker,tag=rr.boss,tag=!rr.boss.is_dead] at @s run bossbar set rr.boss.necrosculker_ultimate players @a[distance=..120]
execute store result bossbar rr.boss.necrosculker_ultimate value run scoreboard players get @s rr.system.BossHealth

execute as @s[scores={rr.system.BossTick=1..},tag=!rr.boss.is_dead] at @s run execute as @a[distance=..26,tag=rr.player.in_boss_fight,predicate=rr_recast:misc/holding_tool] run effect give @s mining_fatigue 1 19 false

execute at @s run stopsound @a[distance=..40,tag=rr.player.in_boss_fight] music

# Music
# Start at 80 ticks
# Plays until 
# Loop at 80 + 6427 - 977 = 5530
execute as @s[scores={rr.system.BossSongTick=5531}] at @s run scoreboard players set @s rr.system.BossSongTick 80
execute as @s[scores={rr.system.BossSongTick=80},tag=!rr.boss.is_dead] at @s run execute as @a[tag=rr.player.in_boss_fight,distance=..80] at @s run playsound rr_recast:boss_tracks.deep_trouble_void record @s ~ ~ ~ 0.5 1 0

tag @a[distance=..20.75,tag=!rr.player.in_boss_fight] add rr.player.in_boss_fight
execute as @s[scores={rr.system.BossTick=120..280}] at @s run effect give @a[distance=..40,tag=rr.player.in_boss_fight,gamemode=!creative] blindness 15 0 true

execute as @e[type=item_display,limit=2,sort=nearest,tag=RunicNSUHead] at @s run tp @s[tag=!RunicNSULookOther] ~ ~ ~ facing entity @e[distance=..35,limit=1,sort=nearest,type=!#rr_recast:spell_ignore,type=!skeleton,type=!zombie,type=!spider,type=!enderman,type=!bat,type=!witch,type=!creeper,type=!warden] eyes
execute as @s[tag=!RunicNSULookOther] at @n[distance=..2,tag=RunicNSUHead1,type=item_display] as @a[distance=..3] run tp @p ^ ^-1.2 ^3

# Particles on Skeletons if one is about to be consumed
execute if score @s rr.boss.SkeletonCount matches 13.. at @n[distance=..22,tag=rr.necrosculker.summoned_skeleton,type=skeleton] run particle sculk_soul ~ ~1 ~ 0.25 0.6 0.25 0.01 4 normal @a[distance=..40]


# Prevent players from going high above the boss so that attacks can't be avoided entirely
execute as @s at @s store result score @s rr.system.BossYCoord run data get entity @s Pos[1] 100.0
execute as @a[distance=..40,tag=rr.player.in_boss_fight,gamemode=!creative,gamemode=!spectator] at @s store result score @s rr.system.BossYCoord run data get entity @s Pos[1] 100.0
execute as @a[distance=..40,tag=rr.player.in_boss_fight,gamemode=!creative,gamemode=!spectator] at @s run scoreboard players operation @s rr.system.BossYCStore = @s rr.system.BossYCoord
execute as @a[distance=..40,tag=rr.player.in_boss_fight,gamemode=!creative,gamemode=!spectator] at @s run scoreboard players operation @s rr.system.BossYCStore -= @e[type=marker,tag=rr.boss,tag=RunicNSUCore,distance=..40,limit=1,sort=nearest] rr.system.BossYCoord
execute as @a[distance=..40,tag=rr.player.in_boss_fight,gamemode=!creative,gamemode=!spectator] at @s if score @s rr.system.BossYCStore matches 375.. run tp @s ~ ~-1 ~
execute as @a[distance=..40,tag=rr.player.in_boss_fight,gamemode=!creative,gamemode=!spectator] at @s if score @s rr.system.BossYCStore matches ..-200 run tp @s ~ ~1 ~


# When at 0 or lower health, play death animations and stuff (a last-ditch swarm of tendrils and then it dies)
execute as @s[scores={rr.system.BossHealth=..0},tag=!rr.boss.is_dead] at @s run scoreboard players set @s rr.system.BossTick 4000
execute as @s[scores={rr.system.BossHealth=..0},tag=!rr.boss.is_dead] at @s run tag @s add rr.boss.is_dead
execute as @s[scores={rr.system.BossTick=4000..}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/boss_death
execute as @s[scores={rr.system.BossTick=4000..}] at @s run return 2


# Siphon Aura
execute as @e[tag=rr.necrosculker.siphon_aura_main,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/siphon_aura_tick


# Some things to note:
# Boss is on a looping timer, reset to 100 instead of 0 because of letting the first 5 seconds be for summoning, setup, and other things
# If there are more than 10 Ancient Sentinels in total within the structure:
# Kill the nearest one, and add 80 Health to the boss. This is to prevent massive amounts of skeletons in the arena in a rare case that this would be able to happen.
# Also acts as a way to provide urgency for players to kill the skeletons

# Intro - Ticks 1 -> 99
execute as @s[scores={rr.system.BossTick=1..99}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/boss_intro
# Weakpoints
execute as @s[scores={rr.system.BossTick=1..}] at @s run execute as @e[tag=rr.boss.ns_void.weakpoint,distance=..30] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/weakpoint_tick
# Part 1 - Ticks 40 -> 369
execute as @s[scores={rr.system.BossTick=40..369}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/boss_attacks_p1
# Part 2 - Ticks 370 -> 1179
execute as @s[scores={rr.system.BossTick=370..1179}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/boss_attacks_p2

# Check if the boss has taken sufficient damage during Pods phase
execute as @s[scores={rr.system.BossTick=1180,rr.system.BossDmg=275..},tag=!RunicNSULookOther] at @s run tag @s add RunicNSULookOther

# Part 3 - Ticks 1180 -> 1440 (base attacks)
execute as @s[scores={rr.system.BossTick=1180..1500}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/boss_attacks_p3
# Part 3 - Ticks 1180 -> 1440 (With extra summoned tendrils)
execute as @s[scores={rr.system.BossTick=1180..1520},tag=RunicNSULookOther] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/boss_attacks_p3a
# Part 4 - Ticks 1441 -> 2010
execute as @s[scores={rr.system.BossTick=2040..2610}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/boss_attacks_p4

execute as @e[type=marker,tag=RunicNSUTendrilWeakpoint,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/teleport_weakpoint_tendrils


## Set UUID scores of each Marker to a random player's UUIDs, only first one set is random, each other one is based off of the first
## After UUID scores set, tag with Necrosculker Tendril Set tag
execute as @e[type=marker,tag=RunicNSUTendril,tag=!RunicNSUTendrilSet,tag=!RunicNSUTendrilWave,tag=!RunicNSUTendrilDouble,tag=!RunicNSUTendrilPulse,tag=!RunicNSUTendrilRing,tag=!RunicNSUTendrilSpiralA,tag=!RunicNSUTendrilSpiralB,tag=!RunicNSUTendrilSuper,tag=!RunicNSUTendrilSuperSpiral,distance=..4] at @s run scoreboard players operation @s rr.system.matchUUID1 = @r[distance=..28,tag=rr.player.in_boss_fight,limit=1] rr.system.playerUUID1
execute as @e[type=marker,tag=RunicNSUTendril,tag=!RunicNSUTendrilSet,tag=!RunicNSUTendrilWave,tag=!RunicNSUTendrilDouble,tag=!RunicNSUTendrilPulse,tag=!RunicNSUTendrilRing,tag=!RunicNSUTendrilSpiralA,tag=!RunicNSUTendrilSpiralB,tag=!RunicNSUTendrilSuper,tag=!RunicNSUTendrilSuperSpiral,distance=..4] at @s run execute as @a[distance=..28,tag=rr.player.in_boss_fight] if score @s rr.system.playerUUID1 = @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSUTendril,tag=!RunicNSUTendrilSet] rr.system.matchUUID1 run scoreboard players operation @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSUTendril,tag=!RunicNSUTendrilSet] rr.system.matchUUID2 = @s rr.system.playerUUID2
execute as @e[type=marker,tag=RunicNSUTendril,tag=!RunicNSUTendrilSet,tag=!RunicNSUTendrilWave,tag=!RunicNSUTendrilDouble,tag=!RunicNSUTendrilPulse,tag=!RunicNSUTendrilRing,tag=!RunicNSUTendrilSpiralA,tag=!RunicNSUTendrilSpiralB,tag=!RunicNSUTendrilSuper,tag=!RunicNSUTendrilSuperSpiral,distance=..4] at @s run execute as @a[distance=..28,tag=rr.player.in_boss_fight] if score @s rr.system.playerUUID1 = @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSUTendril,tag=!RunicNSUTendrilSet] rr.system.matchUUID1 run scoreboard players operation @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSUTendril,tag=!RunicNSUTendrilSet] rr.system.matchUUID3 = @s rr.system.playerUUID3
execute as @e[type=marker,tag=RunicNSUTendril,tag=!RunicNSUTendrilSet,tag=!RunicNSUTendrilWave,tag=!RunicNSUTendrilDouble,tag=!RunicNSUTendrilPulse,tag=!RunicNSUTendrilRing,tag=!RunicNSUTendrilSpiralA,tag=!RunicNSUTendrilSpiralB,tag=!RunicNSUTendrilSuper,tag=!RunicNSUTendrilSuperSpiral,distance=..4] at @s run execute as @a[distance=..28,tag=rr.player.in_boss_fight] if score @s rr.system.playerUUID1 = @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSUTendril,tag=!RunicNSUTendrilSet] rr.system.matchUUID1 run scoreboard players operation @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSUTendril,tag=!RunicNSUTendrilSet] rr.system.matchUUID4 = @s rr.system.playerUUID4
tag @e[type=marker,tag=RunicNSUTendril,tag=!RunicNSUTendrilSet,tag=!RunicNSUTendrilWave,tag=!RunicNSUTendrilDouble,tag=!RunicNSUTendrilPulse,tag=!RunicNSUTendrilRing,tag=!RunicNSUTendrilSpiralA,tag=!RunicNSUTendrilSpiralB,tag=!RunicNSUTendrilSuper,tag=!RunicNSUTendrilSuperSpiral,distance=..4] add RunicNSUTendrilSet


## Warning
execute as @e[type=marker,tag=RunicNSULaserB,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/laser_particle_b

## Firing
execute as @e[type=marker,tag=rr.boss] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/laser_function_b

kill @e[type=marker,tag=RunicNSULaserMB,scores={rr.system.BossTick=3..}]

#endregion

## Display particles and play a soft sound at the location of the markers
execute as @e[type=marker,tag=RunicNSUTendrilSet] at @s run particle sculk_charge{roll:0} ~ ~ ~ 0.02 0.02 0.02 0.004 1 force @a[distance=..40]
execute as @e[type=marker,tag=RunicNSUTendrilSet,tag=!RunicNSUTendrilReached,limit=10] at @s run playsound minecraft:entity.vex.death hostile @a[distance=..40] ~ ~ ~ 0.12 1.3 0

## Make the Marker face what player it targets and teleport forward to them
execute as @e[type=marker,tag=RunicNSUTendrilSet] at @s run execute as @a[distance=..24,tag=rr.player.in_boss_fight] if score @s rr.system.playerUUID1 = @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSUTendril,tag=RunicNSUTendrilSet,tag=!RunicNSUTendrilReached] rr.system.matchUUID1 if score @s rr.system.playerUUID2 = @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSUTendril,tag=RunicNSUTendrilSet] rr.system.matchUUID2 if score @s rr.system.playerUUID3 = @e[distance=..25,type=marker,limit=1,sort=nearest,tag=RunicNSUTendril,tag=RunicNSUTendrilSet] rr.system.matchUUID3 if score @s rr.system.playerUUID4 = @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSUTendril,tag=RunicNSUTendrilSet] rr.system.matchUUID4 run tp @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSUTendril,tag=RunicNSUTendrilSet,tag=!RunicNSUTendrilReached] ^ ^ ^0.7 facing entity @s feet


## Functions for Tendril Wave Main Marker
execute as @n[type=marker,tag=rr.boss.ns_void.tendril_wave.main,distance=..4,scores={rr.system.BossTick=1}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/tendril_wave
execute as @n[type=marker,tag=rr.boss.ns_void.tendril_wave.main,distance=..4,scores={rr.system.BossTick=100..}] run scoreboard players set @s rr.system.BossTick 0
execute as @n[type=marker,tag=rr.boss.ns_void.tendril_wave.secondary,distance=..4,scores={rr.system.BossTick=1}] at @s unless entity @n[type=marker,tag=rr.boss.ns_void.tendril_wave.main,distance=..4] run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/tendril_wave_limited
execute as @n[type=marker,tag=rr.boss.ns_void.tendril_wave.secondary,distance=..4,scores={rr.system.BossTick=320..}] at @s unless entity @n[type=marker,tag=rr.boss.ns_void.tendril_wave.main,distance=..4] run scoreboard players set @s rr.system.BossTick 0
## Tendril Summons for Tendril Wave Markers
execute as @e[type=marker,tag=RunicNSUTendrilWave,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/teleport_tendril_waves with entity @s data.rr_recast.tendril_wave
execute as @e[type=marker,tag=RunicNSUTendrilDouble,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/teleport_tendril_doubles with entity @s data.rr_recast.tendril_wave
execute as @e[type=marker,tag=RunicNSUTendrilPulse,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/teleport_tendril_pulse with entity @s data.rr_recast.tendril_wave
execute as @e[type=marker,tag=RunicNSUTendrilRing,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/teleport_tendril_ring with entity @s data.rr_recast.tendril_wave
execute as @e[type=marker,tag=RunicNSUTendrilSpiralA,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/teleport_tendril_spiral_a with entity @s data.rr_recast.tendril_wave
execute as @e[type=marker,tag=RunicNSUTendrilSpiralB,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/teleport_tendril_spiral_b with entity @s data.rr_recast.tendril_wave
execute as @e[type=item_display,tag=RunicNSUTendrilSuperMain,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/super_tendril_tick with entity @s data.rr_recast.tendril_wave
execute as @e[type=marker,tag=RunicNSUTendrilSuperSpiral,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/super_spiral_tick with entity @s data.rr_recast.tendril_wave
execute as @e[type=marker,tag=RunicNSUTendrilWave,distance=30..40] at @s run kill @s
execute as @e[type=marker,tag=RunicNSUTendrilDouble,distance=30..40] at @s run kill @s
execute as @e[type=marker,tag=RunicNSUTendrilPulse,distance=22..40] at @s run kill @s
execute as @e[type=marker,tag=RunicNSUTendrilRing,distance=..2.5] at @s run kill @s
execute as @e[type=marker,tag=RunicNSUTendrilSpiralA,distance=22..40] at @s run kill @s
execute as @e[type=marker,tag=RunicNSUTendrilSpiralA,distance=4..40] at @s run tag @s add rr.boss.ns_void.kill_when_close
execute as @e[type=marker,tag=RunicNSUTendrilSpiralA,tag=rr.boss.ns_void.kill_when_close,distance=..2.8] at @s run kill @s
execute as @e[type=marker,tag=RunicNSUTendrilSpiralB,distance=..2.8] at @s run kill @s
execute as @e[type=marker,tag=RunicNSUTendrilSpiralB,distance=..19.7] at @s run tag @s add rr.boss.ns_void.kill_when_far
execute as @e[type=marker,tag=RunicNSUTendrilSpiralB,tag=rr.boss.ns_void.kill_when_far,distance=20..] at @s run kill @s
execute as @e[type=marker,tag=RunicNSUTendrilWeakpoint,distance=30..40] at @s run kill @s


## Upon reaching targeted player, summon an armor stand with a tendril on its head below to thrust up from the ground and stab at the player after a second
## Marker also dies upon reaching the player
execute as @e[type=marker,tag=RunicNSUTendrilSet,tag=!RunicNSUTendrilReached] at @s if entity @p[distance=..0.75] run tag @s add RunicNSUTendrilReached
execute as @e[type=marker,tag=RunicNSUTendrilSet,tag=RunicNSUTendrilReached,tag=!RunicNSUTendrilOther,scores={rr.system.BossTick=1}] at @s run summon item_display ~ ~ ~ {item_display:"head",Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.ticking","RunicNSUTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSUTendrilSet,tag=RunicNSUTendrilReached,tag=!RunicNSUTendrilOther,scores={rr.system.BossTick=4}] at @s run summon item_display ~0.8 ~ ~ {item_display:"head",Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.ticking","RunicNSUTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSUTendrilSet,tag=RunicNSUTendrilReached,tag=!RunicNSUTendrilOther,scores={rr.system.BossTick=7}] at @s run summon item_display ~ ~ ~0.8 {item_display:"head",Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.ticking","RunicNSUTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSUTendrilSet,tag=RunicNSUTendrilReached,tag=!RunicNSUTendrilOther,scores={rr.system.BossTick=10}] at @s run summon item_display ~-0.8 ~ ~ {item_display:"head",Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.ticking","RunicNSUTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSUTendrilSet,tag=RunicNSUTendrilReached,tag=!RunicNSUTendrilOther,scores={rr.system.BossTick=13}] at @s run summon item_display ~ ~ ~-0.8 {item_display:"head",Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.ticking","RunicNSUTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSUTendrilSet,tag=RunicNSUTendrilReached,tag=!RunicNSUTendrilOther,scores={rr.system.BossTick=16}] at @s run summon item_display ~0.8 ~ ~0.8 {item_display:"head",Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.ticking","RunicNSUTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSUTendrilSet,tag=RunicNSUTendrilReached,tag=!RunicNSUTendrilOther,scores={rr.system.BossTick=19}] at @s run summon item_display ~0.8 ~ ~-0.8 {item_display:"head",Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.ticking","RunicNSUTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSUTendrilSet,tag=RunicNSUTendrilReached,tag=!RunicNSUTendrilOther,scores={rr.system.BossTick=22}] at @s run summon item_display ~-0.8 ~ ~0.8 {item_display:"head",Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.ticking","RunicNSUTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSUTendrilSet,tag=RunicNSUTendrilReached,tag=!RunicNSUTendrilOther,scores={rr.system.BossTick=25}] at @s run summon item_display ~-0.8 ~ ~-0.8 {item_display:"head",Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.ticking","RunicNSUTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSUTendrilSet,tag=RunicNSUTendrilReached,tag=!RunicNSUTendrilOther,scores={rr.system.BossTick=28}] at @s run summon item_display ~-1.4 ~ ~ {item_display:"head",Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.ticking","RunicNSUTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSUTendrilSet,tag=RunicNSUTendrilReached,tag=!RunicNSUTendrilOther,scores={rr.system.BossTick=31}] at @s run summon item_display ~ ~ ~-1.4 {item_display:"head",Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.ticking","RunicNSUTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSUTendrilSet,tag=RunicNSUTendrilReached,tag=!RunicNSUTendrilOther,scores={rr.system.BossTick=34}] at @s run summon item_display ~1.4 ~ ~ {item_display:"head",Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.ticking","RunicNSUTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSUTendrilSet,tag=RunicNSUTendrilReached,tag=!RunicNSUTendrilOther,scores={rr.system.BossTick=37}] at @s run summon item_display ~ ~ ~1.4 {item_display:"head",Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.ticking","RunicNSUTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}

execute as @e[type=marker,tag=RunicNSUTendrilSet,tag=RunicNSUTendrilReached,distance=..40] unless score @s rr.system.BossTick matches 1.. at @s if entity @p[distance=..0.3] run playsound minecraft:entity.warden.sonic_charge hostile @a[distance=..40] ~ ~ ~ 0.625 1.25 0
execute as @e[type=marker,tag=RunicNSUTendrilSet,tag=RunicNSUTendrilReached,scores={rr.system.BossTick=37..},distance=..40] at @s run kill @s

# Angered Tendril Summons
execute as @e[type=marker,tag=RunicNSUTendrilSet2,tag=RunicNSUTendrilReached2,distance=..40,scores={rr.system.BossTick=1}] at @s run summon item_display ~ ~ ~ {item_display:"head",Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.ticking","RunicNSUTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSUTendrilSet2,tag=RunicNSUTendrilReached2,distance=..40,scores={rr.system.BossTick=12}] at @s run summon item_display ~1.2 ~ ~ {item_display:"head",Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.ticking","RunicNSUTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSUTendrilSet2,tag=RunicNSUTendrilReached2,distance=..40,scores={rr.system.BossTick=23}] at @s run summon item_display ~ ~ ~1.2 {item_display:"head",Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.ticking","RunicNSUTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSUTendrilSet2,tag=RunicNSUTendrilReached2,distance=..40,scores={rr.system.BossTick=34}] at @s run summon item_display ~-1.2 ~ ~ {item_display:"head",Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.ticking","RunicNSUTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSUTendrilSet2,tag=RunicNSUTendrilReached2,distance=..40,scores={rr.system.BossTick=45}] at @s run summon item_display ~ ~ ~-1.2 {item_display:"head",Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.ticking","RunicNSUTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSUTendrilSet2,tag=RunicNSUTendrilReached2,distance=..40,scores={rr.system.BossTick=56}] at @s run summon item_display ~1.2 ~ ~-1.2 {item_display:"head",Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.ticking","RunicNSUTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSUTendrilSet2,tag=RunicNSUTendrilReached2,distance=..40,scores={rr.system.BossTick=67}] at @s run summon item_display ~-1.2 ~ ~-1.2 {item_display:"head",Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.ticking","RunicNSUTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSUTendrilSet2,tag=RunicNSUTendrilReached2,distance=..40,scores={rr.system.BossTick=78}] at @s run summon item_display ~1.2 ~ ~1.2 {item_display:"head",Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.ticking","RunicNSUTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSUTendrilSet2,tag=RunicNSUTendrilReached2,distance=..40,scores={rr.system.BossTick=89}] at @s run summon item_display ~-1.2 ~ ~1.2 {item_display:"head",Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.ticking","RunicNSUTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSUTendrilSet2,tag=RunicNSUTendrilReached2,distance=..40,scores={rr.system.BossTick=100}] at @s run summon item_display ~1.65 ~ ~ {item_display:"head",Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.ticking","RunicNSUTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSUTendrilSet2,tag=RunicNSUTendrilReached2,distance=..40,scores={rr.system.BossTick=111}] at @s run summon item_display ~ ~ ~1.65 {item_display:"head",Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.ticking","RunicNSUTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSUTendrilSet2,tag=RunicNSUTendrilReached2,distance=..40,scores={rr.system.BossTick=122}] at @s run summon item_display ~-1.65 ~ ~ {item_display:"head",Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.ticking","RunicNSUTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSUTendrilSet2,tag=RunicNSUTendrilReached2,distance=..40,scores={rr.system.BossTick=133}] at @s run summon item_display ~ ~ ~-1.65 {item_display:"head",Tags:[rr.boss.ns_void.ticking,"rr.boss.ns_void.ticking","RunicNSUTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}

execute as @e[type=marker,tag=RunicNSUTendrilSet2,distance=..40,tag=RunicNSUTendrilReached2] unless score @s rr.system.BossTick matches 1.. at @s run playsound minecraft:entity.warden.sonic_charge hostile @a[distance=..40] ~ ~ ~ 0.6 1.2 0
execute as @e[type=marker,tag=RunicNSUTendrilSet2,distance=..40,tag=RunicNSUTendrilReached2,scores={rr.system.BossTick=133..}] at @s run kill @s

# Tendril Functions for Non-Tendril-Wave
execute as @e[type=item_display,tag=RunicNSUTendrilStand,scores={rr.system.BossTick=..10},distance=..40] at @s run particle crit ~ ~0.25 ~ 0.2 0 0.2 0.002 1 force @a[distance=..80]
execute as @e[type=item_display,tag=RunicNSUTendrilStand,scores={rr.system.BossTick=18},distance=..40] at @s run playsound minecraft:entity.player.hurt_sweet_berry_bush hostile @a[distance=..50] ~ ~1 ~ 0.7 0.75 0
execute as @e[type=item_display,tag=RunicNSUTendrilStand,scores={rr.system.BossTick=19},distance=..40] at @s run tp @s ~ ~1.8 ~
execute as @e[type=item_display,tag=RunicNSUTendrilStand,scores={rr.system.BossTick=18..20},distance=..40] at @s positioned ~ ~0.1 ~ run execute as @e[type=!#rr_recast:spell_ignore,distance=..1.05,tag=!rr.boss.summon] run damage @s 50 minecraft:mob_projectile by @e[type=item_display,limit=1,sort=nearest,tag=RunicNSUTendrilStand,distance=..4] from @n[type=marker,tag=rr.boss,distance=..40]
execute as @e[type=item_display,tag=RunicNSUTendrilStand,scores={rr.system.BossTick=18..20},distance=..40] at @s positioned ~ ~0.1 ~ run execute as @e[type=!#rr_recast:spell_ignore,distance=..1.05,tag=!rr.boss.summon] run effect give @s slowness 4 1 true
execute as @e[type=item_display,tag=RunicNSUTendrilStand,scores={rr.system.BossTick=22..28},distance=..40] at @s run tp @s ~ ~-0.45 ~
execute as @e[type=item_display,tag=RunicNSUTendrilStand,scores={rr.system.BossTick=32},distance=..40] at @s run kill @s

# Tendril Waves for Non-Jump-Avoidable Tendrils
execute as @e[type=item_display,tag=RunicNSUTendrilStand2,distance=..40,scores={rr.system.BossTick=..15}] at @s run particle crit ~ ~0.25 ~ 0.2 0 0.2 0.002 1 force @a[distance=..80]
execute as @e[type=item_display,tag=RunicNSUTendrilStand2,distance=..40,scores={rr.system.BossTick=15}] at @s run playsound minecraft:entity.player.hurt_sweet_berry_bush hostile @a[distance=..50] ~ ~ ~ 0.2 0.65 0
execute as @e[type=item_display,tag=RunicNSUTendrilStand2,distance=..40,scores={rr.system.BossTick=16}] at @s run tp @s ~ ~1.8 ~
execute as @e[type=item_display,tag=RunicNSUTendrilStand2,distance=..40,scores={rr.system.BossTick=15..17}] at @s positioned ~ ~0.1 ~ run execute as @e[type=!#rr_recast:spell_ignore,distance=..1,tag=!rr.boss.summon] run damage @s 60 minecraft:mob_projectile by @n[type=item_display,tag=RunicNSUTendrilStand2,distance=..4] from @n[type=marker,tag=rr.boss,distance=..45]
execute as @e[type=item_display,tag=RunicNSUTendrilStand2,distance=..40,scores={rr.system.BossTick=15..17}] at @s positioned ~ ~0.1 ~ run execute as @e[type=!#rr_recast:spell_ignore,distance=..1,tag=!rr.boss.summon] run effect give @s slowness 4 1 true
execute as @e[type=item_display,tag=RunicNSUTendrilStand2,distance=..40,scores={rr.system.BossTick=20..24}] at @s run tp @s ~ ~-0.45 ~
execute as @e[type=item_display,tag=RunicNSUTendrilStand2,distance=..40,scores={rr.system.BossTick=25}] at @s run kill @s

# Tendril Waves for Jump-Avoidable Tendrils
execute as @e[type=item_display,tag=RunicNSUTendrilStand3,distance=..40,scores={rr.system.BossTick=10..25}] at @s run particle crit ~ ~0.25 ~ 0.2 0 0.2 0.002 1 force @a[distance=..80]
execute as @e[type=item_display,tag=RunicNSUTendrilStand3,distance=..40,scores={rr.system.BossTick=25}] at @s run playsound minecraft:entity.player.hurt_sweet_berry_bush hostile @a[distance=..50] ~ ~ ~ 0.2 0.65 0
execute as @e[type=item_display,tag=RunicNSUTendrilStand3,distance=..40,scores={rr.system.BossTick=26}] at @s run tp @s ~ ~1.5 ~
execute as @e[type=item_display,tag=RunicNSUTendrilStand3,distance=..40,scores={rr.system.BossTick=25..27}] at @s positioned ~ ~-0.1 ~ run execute as @e[type=!#rr_recast:spell_ignore,distance=..1,nbt={OnGround:true},tag=!rr.boss.summon] run damage @s 60 minecraft:mob_projectile by @n[type=item_display,tag=RunicNSUTendrilStand3,distance=..4] from @n[type=marker,tag=rr.boss,distance=..45]
execute as @e[type=item_display,tag=RunicNSUTendrilStand3,distance=..40,scores={rr.system.BossTick=25..27}] at @s positioned ~ ~-0.1 ~ run execute as @e[type=!#rr_recast:spell_ignore,distance=..1,nbt={OnGround:true},tag=!rr.boss.summon] run effect give @s slowness 4 1 true
execute as @e[type=item_display,tag=RunicNSUTendrilStand3,distance=..40,scores={rr.system.BossTick=30..34}] at @s run tp @s ~ ~-0.45 ~
execute as @e[type=item_display,tag=RunicNSUTendrilStand3,distance=..40,scores={rr.system.BossTick=35}] at @s run kill @s
#endregion

# At 1680, after the two volleys of lasers complete, the boss will reset its patterns and return to 100. (99 here because it ticks up at the top of the function)
execute as @s[scores={rr.system.BossTick=2600..2610}] at @s run scoreboard players set @s rr.system.BossTick 99

# At 1720 (only reached if a player has a very low Mind Strength stat), face the player with the lowest Mind Strength stat and deal catastrophic damage to them, turning them into a Lost Soul


## # If a player who is tagged with rr.player.in_boss_fight and is near the Necrosculker leaves the structure or goes outside of a specific range of the boss, then the Necrosculker will teleport the player toward the arena, lower their Mind Strength stat, and summon three Ancient Sentinels to punish them. If the player attempts to leave 3 times, then the Necrosculker will despawn and a failure message will display. The boss will also despawn when there are no players nearby at all, which could happen if a player in the arena dies or if the player is outside of the structure when the boss finishes spawning.
## # Final Warning - 30 seconds
## execute as @s[tag=!rr.boss.is_dead,scores={rr.system.BossTick=100..2999}] at @s if entity @p[distance=21..40,tag=rr.player.in_boss_fight] run execute as @a[distance=21..40,tag=rr.player.in_boss_fight,scores={rr.system.BossTick=600},tag=RunicLeftNSUArea1,tag=RunicLeftNSUArea2,tag=RunicLeftNSUArea3,tag=!RunicLeftNSUArea4] run tag @s add RunicLeftNSUArea4
## execute as @s[tag=!rr.boss.is_dead,scores={rr.system.BossTick=100..2999}] at @s if entity @p[distance=21..40,tag=rr.player.in_boss_fight] run execute as @a[distance=21..40,tag=rr.player.in_boss_fight,scores={rr.system.BossTick=600},tag=RunicLeftNSUArea1,tag=RunicLeftNSUArea2,tag=RunicLeftNSUArea3,tag=RunicLeftNSUArea4] run tellraw @s [{"text":"[Runic Resurgence] ","color":"white","italic":false},{"text":"You have left the area of the Necrosculker for too long.","color":"red"}]
## execute as @s[tag=!rr.boss.is_dead,scores={rr.system.BossTick=100..2999}] at @s if entity @p[distance=21..40,tag=rr.player.in_boss_fight] run execute as @a[distance=21..40,tag=rr.player.in_boss_fight,scores={rr.system.BossTick=600},tag=RunicLeftNSUArea1,tag=RunicLeftNSUArea2,tag=RunicLeftNSUArea3,tag=RunicLeftNSUArea4] run stopsound @s record
## execute as @s[tag=!rr.boss.is_dead,scores={rr.system.BossTick=100..2999}] at @s if entity @p[distance=21..40,tag=rr.player.in_boss_fight] run execute as @a[distance=21..40,tag=rr.player.in_boss_fight,scores={rr.system.BossTick=600},tag=RunicLeftNSUArea1,tag=RunicLeftNSUArea2,tag=RunicLeftNSUArea3,tag=RunicLeftNSUArea4] run scoreboard players set @s rr.system.BossTick 0
## execute as @s[tag=!rr.boss.is_dead,scores={rr.system.BossTick=100..2999}] at @s if entity @p[distance=21..40,tag=rr.player.in_boss_fight] run execute as @a[distance=21..40,tag=rr.player.in_boss_fight,scores={rr.system.BossTick=0},tag=RunicLeftNSUArea4] run tag @s remove RunicLeftNSUArea1
## execute as @s[tag=!rr.boss.is_dead,scores={rr.system.BossTick=100..2999}] at @s if entity @p[distance=21..40,tag=rr.player.in_boss_fight] run execute as @a[distance=21..40,tag=rr.player.in_boss_fight,scores={rr.system.BossTick=0},tag=RunicLeftNSUArea4] run tag @s remove RunicLeftNSUArea2
## execute as @s[tag=!rr.boss.is_dead,scores={rr.system.BossTick=100..2999}] at @s if entity @p[distance=21..40,tag=rr.player.in_boss_fight] run execute as @a[distance=21..40,tag=rr.player.in_boss_fight,scores={rr.system.BossTick=0},tag=RunicLeftNSUArea4] run tag @s remove RunicLeftNSUArea3
## execute as @s[tag=!rr.boss.is_dead,scores={rr.system.BossTick=100..2999}] at @s if entity @p[distance=21..40,tag=rr.player.in_boss_fight] run execute as @a[distance=21..40,tag=rr.player.in_boss_fight,scores={rr.system.BossTick=0},tag=RunicLeftNSUArea4] run tag @s remove rr.player.in_boss_fight
## 
## # Final Warning - 20 seconds
## execute as @s[tag=!rr.boss.is_dead,scores={rr.system.BossTick=100..2999}] at @s if entity @p[distance=21..40,tag=rr.player.in_boss_fight] run execute as @a[distance=21..40,tag=rr.player.in_boss_fight,tag=RunicLeftNSUArea1,tag=RunicLeftNSUArea2,tag=RunicLeftNSUArea3] run scoreboard players add @s rr.system.BossTick 1
## execute as @s[tag=!rr.boss.is_dead,scores={rr.system.BossTick=100..2999}] at @s if entity @p[distance=21..40,tag=rr.player.in_boss_fight] run execute as @a[distance=21..40,tag=rr.player.in_boss_fight,scores={rr.system.BossTick=400},tag=RunicLeftNSUArea1,tag=RunicLeftNSUArea2,tag=!RunicLeftNSUArea3,tag=!RunicLeftNSUArea4] run tag @s add RunicLeftNSUArea3
## execute as @s[tag=!rr.boss.is_dead,scores={rr.system.BossTick=100..2999}] at @s if entity @p[distance=21..40,tag=rr.player.in_boss_fight] run execute as @a[distance=21..40,tag=rr.player.in_boss_fight,scores={rr.system.BossTick=400},tag=RunicLeftNSUArea1,tag=RunicLeftNSUArea2,tag=RunicLeftNSUArea3] run tellraw @s [{"text":"[Runic Resurgence] ","color":"white","italic":false},{"text":"You are leaving the range of the Necrosculker! Do not leave the area for too long, or it may despawn. ","color":"red"},{"text":"This is your final warning!","color":"dark_red"}]
## 
## # Second Warning - 10 seconds
## execute as @s[tag=!rr.boss.is_dead,scores={rr.system.BossTick=100..2999}] at @s if entity @p[distance=21..40,tag=rr.player.in_boss_fight] run execute as @a[distance=21..40,tag=rr.player.in_boss_fight,tag=RunicLeftNSUArea1,tag=RunicLeftNSUArea2,tag=!RunicLeftNSUArea3,tag=!RunicLeftNSUArea4] run scoreboard players add @s rr.system.BossTick 1
## execute as @s[tag=!rr.boss.is_dead,scores={rr.system.BossTick=100..2999}] at @s if entity @p[distance=21..40,tag=rr.player.in_boss_fight] run execute as @a[distance=21..40,tag=rr.player.in_boss_fight,scores={rr.system.BossTick=200},tag=RunicLeftNSUArea1,tag=!RunicLeftNSUArea2,tag=!RunicLeftNSUArea3,tag=!RunicLeftNSUArea4] run tag @s add RunicLeftNSUArea2
## execute as @s[tag=!rr.boss.is_dead,scores={rr.system.BossTick=100..2999}] at @s if entity @p[distance=21..40,tag=rr.player.in_boss_fight] run execute as @a[distance=21..40,tag=rr.player.in_boss_fight,scores={rr.system.BossTick=200},tag=RunicLeftNSUArea1,tag=RunicLeftNSUArea2,tag=!RunicLeftNSUArea3,tag=!RunicLeftNSUArea4] run tellraw @s [{"text":"[Runic Resurgence] ","color":"white","italic":false},{"text":"You are leaving the range of the Necrosculker! Do not leave the area for too long, or it may despawn. This is your second-to-last warning!","color":"red"}]
## 
## # First Warning - Immediate
## execute as @s[tag=!rr.boss.is_dead,scores={rr.system.BossTick=100..2999}] at @s if entity @p[distance=21..40,tag=rr.player.in_boss_fight] run execute as @a[distance=21..40,tag=rr.player.in_boss_fight,tag=!RunicLeftNSUArea1,tag=!RunicLeftNSUArea2,tag=!RunicLeftNSUArea3,tag=!RunicLeftNSUArea4] run scoreboard players add @s rr.system.BossTick 1
## execute as @s[tag=!rr.boss.is_dead,scores={rr.system.BossTick=100..2999}] at @s if entity @p[distance=21..40,tag=rr.player.in_boss_fight] run execute as @a[distance=21..40,tag=rr.player.in_boss_fight,tag=RunicLeftNSUArea1,tag=!RunicLeftNSUArea2,tag=!RunicLeftNSUArea3,tag=!RunicLeftNSUArea4] run scoreboard players add @s rr.system.BossTick 1
## execute as @s[tag=!rr.boss.is_dead,scores={rr.system.BossTick=100..2999}] at @s if entity @p[distance=21..40,tag=rr.player.in_boss_fight] run execute as @a[distance=21..40,tag=rr.player.in_boss_fight,scores={rr.system.BossTick=1},tag=!RunicLeftNSUArea1,tag=!RunicLeftNSUArea2,tag=!RunicLeftNSUArea3,tag=!RunicLeftNSUArea4] run tag @s add RunicLeftNSUArea1
## execute as @s[tag=!rr.boss.is_dead,scores={rr.system.BossTick=100..2999}] at @s if entity @p[distance=21..40,tag=rr.player.in_boss_fight] run execute as @a[distance=21..40,tag=rr.player.in_boss_fight,scores={rr.system.BossTick=1},tag=RunicLeftNSUArea1,tag=!RunicLeftNSUArea2,tag=!RunicLeftNSUArea3,tag=!RunicLeftNSUArea4] run tellraw @s [{"text":"[Runic Resurgence] ","color":"white","italic":false},{"text":"You are leaving the range of the Necrosculker! Do not leave the area for too long, or it may despawn.","color":"red"}]