scoreboard players add @s rr.system.BossTick 1
scoreboard players add @s[tag=!rr.boss.is_dead] rr.system.BossSongTick 1
scoreboard players add @e[distance=..40,tag=rr.boss.ns_elite.ticking] rr.system.BossTick 1

# kill @e[type=marker,tag=RunicNSETendril,scores={rr.system.BossSongTick=200..}]

execute as @s[scores={rr.system.BossTick=1..}] at @s if entity @e[type=item,distance=..26] run execute as @e[type=item,distance=..26,tag=!rr.boss.no_despawn_item] run data merge entity @s {Age:-32768,PickupDelay:0}
execute as @s at @s if entity @e[type=item,distance=..26] run execute as @e[type=item,distance=..26,tag=!rr.boss.no_despawn_item] run tag @s add rr.boss.no_despawn_item

execute as @s[scores={rr.system.BossTick=100..}] at @s unless entity @p[distance=..120,tag=rr.player.in_boss_fight,tag=!RunicLeftNSEArea4] run function rr_recast:boss/necrosculker_main/necrosculker_elite/kill_local

execute as @e[type=marker,tag=rr.boss,tag=!rr.boss.is_dead] at @s run bossbar set rr.boss.necrosculker_elite players @a[distance=..120]
execute store result bossbar rr.boss.necrosculker_elite value run scoreboard players get @s rr.system.BossHealth

execute as @s[scores={rr.system.BossTick=1..},tag=!rr.boss.is_dead] at @s run execute as @a[distance=..26,tag=rr.player.in_boss_fight,predicate=rr_recast:misc/holding_tool] run effect give @s mining_fatigue 1 19 false

# Test the range of certain things from the position of the Necrosculker
# 20.75 is the range that the fight should take place within from the center of the boss, anything outside of it should be considered not in the fight
#execute as @n[type=item_display,tag=RunicNSEHead1] at @s run particle crit ^ ^ ^20.75 0 0 0 0 1 force @a

# VFX to take place throughout the arena as the fight goes on
execute as @s[scores={rr.system.BossTick=1..}] at @s run particle sculk_charge{roll:0} ~ ~-1.475 ~ 7.75 0 7.75 0 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1..}] at @s run particle sculk_soul ~ ~ ~ 7.75 2 7.75 0 1 force @a[distance=..60]

# Music
execute as @s[scores={rr.system.BossSongTick=4290}] at @s run scoreboard players set @s rr.system.BossSongTick 80
execute as @s[scores={rr.system.BossSongTick=80},tag=!rr.boss.is_dead] at @s run execute as @a[tag=rr.player.in_boss_fight,distance=..80] at @s run playsound rr_recast:boss_tracks.deep_trouble_hard record @s ~ ~ ~ 0.5 1 0
execute as @s at @s run stopsound @a[distance=..40,tag=rr.player.in_boss_fight] music


# Prevent players from going high above the boss so that attacks can't be avoided entirely
execute as @s at @s store result score @s rr.system.BossYCoord run data get entity @s Pos[1] 100.0
execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s store result score @s rr.system.BossYCoord run data get entity @s Pos[1] 100.0
execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run scoreboard players operation @s rr.system.BossYCStore = @s rr.system.BossYCoord
execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run scoreboard players operation @s rr.system.BossYCStore -= @e[type=marker,tag=rr.boss,tag=RunicNSECore,distance=..40,limit=1,sort=nearest] rr.system.BossYCoord
execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s if score @s rr.system.BossYCStore matches 375.. run tp @s ~ ~-1 ~
execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s if score @s rr.system.BossYCStore matches ..-200 run tp @s ~ ~1 ~


# When at 0 or lower health, play death animations and stuff (a last-ditch swarm of tendrils and then it dies)
execute as @s[scores={rr.system.BossHealth=..0},tag=!rr.boss.is_dead] at @s run scoreboard players set @s rr.system.BossTick 3000
execute as @s[scores={rr.system.BossHealth=..0},tag=!rr.boss.is_dead] at @s run tag @s add rr.boss.is_dead
execute as @s[scores={rr.system.BossTick=3000..}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_elite/boss_death
# Return 2 to mark that the boss is dead, so no further execution is necessary
execute as @s[scores={rr.system.BossTick=3000..}] at @s run return 2


tag @a[distance=..20.75,tag=!rr.player.in_boss_fight] add rr.player.in_boss_fight


execute unless entity @s[tag=RunicNSELookOther] as @e[type=item_display,limit=2,sort=nearest,tag=RunicNSEHead] at @s run tp @s ~ ~ ~ facing entity @e[distance=..35,limit=1,sort=nearest,type=!#rr_recast:spell_ignore,type=!skeleton,type=!zombie,type=!spider,type=!enderman,type=!bat,type=!witch,type=!creeper,type=!warden] eyes
execute unless entity @s[tag=RunicNSELookOther] at @n[type=item_display,tag=RunicNSEHead1] as @a[distance=..3] run tp @p ^ ^-1.2 ^3

# Particles on Skeletons if one is about to be consumed
execute if score @s rr.boss.SkeletonCount matches 11.. at @n[distance=..22,tag=rr.necrosculker.summoned_skeleton,type=skeleton] run particle sculk_soul ~ ~1 ~ 0.25 0.6 0.25 0.01 4 normal @a[distance=..40]


# Some things to note:
# Boss is on a looping timer, reset to 100 instead of 0 because of letting the first 5 seconds be for summoning, setup, and other things
# If there are more than 10 Ancient Sentinels in total within the structure:
# Kill the nearest one, and add 80 Health to the boss. This is to prevent massive amounts of skeletons in the arena in a rare case that this would be able to happen.
# Also acts as a way to provide urgency for players to kill the skeletons

# Intro - Ticks 1 -> 99
execute as @s[scores={rr.system.BossTick=1..99}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_elite/boss_intro
# Weakpoints
execute as @s[scores={rr.system.BossTick=1..}] at @s run execute as @e[tag=rr.boss.ns_elite.weakpoint,distance=..30] at @s run function rr_recast:boss/necrosculker_main/necrosculker_elite/weakpoint_tick
# Part 1 - Ticks 40 -> 369
execute as @s[scores={rr.system.BossTick=40..369}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_elite/boss_attacks_p1
# Part 2 - Ticks 370 -> 1179
execute as @s[scores={rr.system.BossTick=370..1179}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_elite/boss_attacks_p2

# Check if the boss has taken sufficient damage during Pods phase
execute as @s[scores={rr.system.BossTick=1180,rr.system.BossDmg=180..},tag=!RunicNSELookOther] at @s run tag @s add RunicNSELookOther

# Part 3 - Ticks 1180 -> 1440 (base attacks)
execute as @s[scores={rr.system.BossTick=1180..1500}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_elite/boss_attacks_p3
# Part 3 - Ticks 1180 -> 1440 (With extra summoned tendrils)
execute as @s[scores={rr.system.BossTick=1180..1520},tag=RunicNSELookOther] at @s run function rr_recast:boss/necrosculker_main/necrosculker_elite/boss_attacks_p3a
# Part 4 - Ticks 1441 -> 2010
execute as @s[scores={rr.system.BossTick=1460..2010}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_elite/boss_attacks_p4


execute as @e[type=marker,tag=RunicNSETendrilWeakpoint,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_elite/teleport_weakpoint_tendrils


## Set UUID scores of each Marker to a random player's UUIDs, only first one set is random, each other one is based off of the first
## After UUID scores set, tag with Necrosculker Tendril Set tag
execute as @e[type=marker,distance=..4,tag=RunicNSETendril,tag=!RunicNSETendrilSet,tag=!RunicNSETendrilWave,tag=!RunicNSETendrilDouble,tag=!RunicNSETendrilPulse,tag=!RunicNSETendrilRing] at @s run scoreboard players operation @s rr.system.matchUUID1 = @r[distance=..28,tag=rr.player.in_boss_fight,limit=1] rr.system.playerUUID1
execute as @e[type=marker,distance=..4,tag=RunicNSETendril,tag=!RunicNSETendrilSet,tag=!RunicNSETendrilWave,tag=!RunicNSETendrilDouble,tag=!RunicNSETendrilPulse,tag=!RunicNSETendrilRing] at @s run execute as @a[distance=..28,tag=rr.player.in_boss_fight] if score @s rr.system.playerUUID1 = @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSETendril,tag=!RunicNSETendrilSet] rr.system.matchUUID1 run scoreboard players operation @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSETendril,tag=!RunicNSETendrilSet] rr.system.matchUUID2 = @s rr.system.playerUUID2
execute as @e[type=marker,distance=..4,tag=RunicNSETendril,tag=!RunicNSETendrilSet,tag=!RunicNSETendrilWave,tag=!RunicNSETendrilDouble,tag=!RunicNSETendrilPulse,tag=!RunicNSETendrilRing] at @s run execute as @a[distance=..28,tag=rr.player.in_boss_fight] if score @s rr.system.playerUUID1 = @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSETendril,tag=!RunicNSETendrilSet] rr.system.matchUUID1 run scoreboard players operation @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSETendril,tag=!RunicNSETendrilSet] rr.system.matchUUID3 = @s rr.system.playerUUID3
execute as @e[type=marker,distance=..4,tag=RunicNSETendril,tag=!RunicNSETendrilSet,tag=!RunicNSETendrilWave,tag=!RunicNSETendrilDouble,tag=!RunicNSETendrilPulse,tag=!RunicNSETendrilRing] at @s run execute as @a[distance=..28,tag=rr.player.in_boss_fight] if score @s rr.system.playerUUID1 = @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSETendril,tag=!RunicNSETendrilSet] rr.system.matchUUID1 run scoreboard players operation @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSETendril,tag=!RunicNSETendrilSet] rr.system.matchUUID4 = @s rr.system.playerUUID4
tag @e[type=marker,distance=..4,tag=RunicNSETendril,tag=!RunicNSETendrilSet,tag=!RunicNSETendrilWave,tag=!RunicNSETendrilDouble] add RunicNSETendrilSet

## Display particles and play a soft sound at the location of the markers
execute as @e[type=marker,tag=RunicNSETendrilSet] at @s run particle sculk_charge{roll:0} ~ ~ ~ 0.02 0.02 0.02 0.004 1 force @a[distance=..40]
execute as @e[type=marker,tag=RunicNSETendrilSet,tag=!RunicNSETendrilReached,limit=10] at @s run playsound minecraft:entity.vex.death hostile @a[distance=..40] ~ ~ ~ 0.125 1.4 0

## Make the Marker face what player it targets and teleport forward to them
execute as @e[type=marker,tag=RunicNSETendrilSet,tag=!RunicNSETendrilWave,tag=!RunicNSETendrilDouble,tag=!RunicNSETendrilPulse,tag=!RunicNSETendrilRing,distance=..40] at @s run execute as @a[distance=..24,tag=rr.player.in_boss_fight] if score @s rr.system.playerUUID1 = @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSETendril,tag=RunicNSETendrilSet,tag=!RunicNSETendrilReached] rr.system.matchUUID1 if score @s rr.system.playerUUID2 = @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSETendril,tag=RunicNSETendrilSet] rr.system.matchUUID2 if score @s rr.system.playerUUID3 = @e[distance=..25,type=marker,limit=1,sort=nearest,tag=RunicNSETendril,tag=RunicNSETendrilSet] rr.system.matchUUID3 if score @s rr.system.playerUUID4 = @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSETendril,tag=RunicNSETendrilSet] rr.system.matchUUID4 run tp @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSETendril,tag=RunicNSETendrilSet,tag=!RunicNSETendrilReached] ^ ^ ^0.7 facing entity @s feet

## Upon reaching targeted player, summon an armor stand with a tendril on its head below to thrust up from the ground and stab at the player after a second
## Marker also dies upon reaching the player
execute as @e[type=marker,tag=RunicNSETendrilSet,distance=..40,tag=!RunicNSETendrilReached] at @s if entity @p[distance=..0.75] run tag @s add RunicNSETendrilReached
execute as @e[type=marker,tag=RunicNSETendrilSet,distance=..40,tag=RunicNSETendrilReached] run tag @s add rr.boss.ns_elite.ticking
execute as @e[type=marker,tag=RunicNSETendrilSet,distance=..40,tag=RunicNSETendrilReached,tag=!RunicNSETendrilOther,scores={rr.system.BossTick=1}] at @s run summon item_display ~ ~ ~ {item_display:"head",Tags:["rr.boss.ns_elite.ticking","RunicNSETendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSETendrilSet,distance=..40,tag=RunicNSETendrilReached,tag=!RunicNSETendrilOther,scores={rr.system.BossTick=5}] at @s run summon item_display ~0.9 ~ ~ {item_display:"head",Tags:["rr.boss.ns_elite.ticking","RunicNSETendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSETendrilSet,distance=..40,tag=RunicNSETendrilReached,tag=!RunicNSETendrilOther,scores={rr.system.BossTick=9}] at @s run summon item_display ~ ~ ~0.9 {item_display:"head",Tags:["rr.boss.ns_elite.ticking","RunicNSETendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSETendrilSet,distance=..40,tag=RunicNSETendrilReached,tag=!RunicNSETendrilOther,scores={rr.system.BossTick=13}] at @s run summon item_display ~-0.9 ~ ~ {item_display:"head",Tags:["rr.boss.ns_elite.ticking","RunicNSETendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSETendrilSet,distance=..40,tag=RunicNSETendrilReached,tag=!RunicNSETendrilOther,scores={rr.system.BossTick=17}] at @s run summon item_display ~ ~ ~-0.9 {item_display:"head",Tags:["rr.boss.ns_elite.ticking","RunicNSETendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSETendrilSet,distance=..40,tag=RunicNSETendrilReached,tag=!RunicNSETendrilOther,scores={rr.system.BossTick=21}] at @s run summon item_display ~0.8 ~ ~0.8 {item_display:"head",Tags:["rr.boss.ns_elite.ticking","RunicNSETendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSETendrilSet,distance=..40,tag=RunicNSETendrilReached,tag=!RunicNSETendrilOther,scores={rr.system.BossTick=25}] at @s run summon item_display ~0.8 ~ ~-0.8 {item_display:"head",Tags:["rr.boss.ns_elite.ticking","RunicNSETendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSETendrilSet,distance=..40,tag=RunicNSETendrilReached,tag=!RunicNSETendrilOther,scores={rr.system.BossTick=29}] at @s run summon item_display ~-0.8 ~ ~0.8 {item_display:"head",Tags:["rr.boss.ns_elite.ticking","RunicNSETendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSETendrilSet,distance=..40,tag=RunicNSETendrilReached,tag=!RunicNSETendrilOther,scores={rr.system.BossTick=33}] at @s run summon item_display ~-0.8 ~ ~-0.8 {item_display:"head",Tags:["rr.boss.ns_elite.ticking","RunicNSETendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
#endregion


## Functions for Tendril Wave Main Marker
execute as @n[type=marker,tag=rr.boss.ns_elite.tendril_wave.main,distance=..4,scores={rr.system.BossTick=1}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_elite/tendril_wave
execute as @n[type=marker,tag=rr.boss.ns_elite.tendril_wave.main,distance=..4,scores={rr.system.BossTick=150..}] run scoreboard players set @s rr.system.BossTick 0
## Tendril Summons for Tendril Wave Markers
execute as @e[type=marker,tag=RunicNSETendrilWave,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_elite/teleport_tendril_waves with entity @s data.rr_recast.tendril_wave
execute as @e[type=marker,tag=RunicNSETendrilDouble,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_elite/teleport_tendril_doubles with entity @s data.rr_recast.tendril_wave
execute as @e[type=marker,tag=RunicNSETendrilPulse,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_elite/teleport_tendril_pulse with entity @s data.rr_recast.tendril_wave
execute as @e[type=marker,tag=RunicNSETendrilRing,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_elite/teleport_tendril_ring with entity @s data.rr_recast.tendril_wave
execute as @e[type=marker,tag=RunicNSETendrilWave,distance=30..40] at @s run kill @s
execute as @e[type=marker,tag=RunicNSETendrilDouble,distance=30..40] at @s run kill @s
execute as @e[type=marker,tag=RunicNSETendrilPulse,distance=22..40] at @s run kill @s
execute as @e[type=marker,tag=RunicNSETendrilRing,distance=..2.5] at @s run kill @s
execute as @e[type=marker,tag=RunicNSETendrilWeakpoint,distance=30..40] at @s run kill @s

# All Tendrils NOT from Tendril Wave
execute as @e[type=item_display,tag=RunicNSETendrilStand,distance=..40,scores={rr.system.BossTick=..25}] at @s run particle crit ~ ~0.25 ~ 0.2 0 0.2 0.002 1 force @a[distance=..80]
execute as @e[type=item_display,tag=RunicNSETendrilStand,distance=..40,scores={rr.system.BossTick=25}] at @s run playsound minecraft:entity.player.hurt_sweet_berry_bush hostile @a[distance=..50] ~ ~ ~ 0.8 0.75 0
execute as @e[type=item_display,tag=RunicNSETendrilStand,distance=..40,scores={rr.system.BossTick=26}] at @s run tp @s ~ ~1.8 ~
execute as @e[type=item_display,tag=RunicNSETendrilStand,distance=..40,scores={rr.system.BossTick=25..27}] at @s positioned ~ ~0.1 ~ run execute as @e[type=!#rr_recast:spell_ignore,distance=..1,tag=!rr.boss.summon] run damage @s 32 minecraft:mob_projectile by @n[type=item_display,tag=RunicNSETendrilStand,distance=..4] from @n[type=marker,tag=rr.boss,distance=..45]
execute as @e[type=item_display,tag=RunicNSETendrilStand,distance=..40,scores={rr.system.BossTick=33..37}] at @s run tp @s ~ ~-0.45 ~
execute as @e[type=item_display,tag=RunicNSETendrilStand,distance=..40,scores={rr.system.BossTick=37}] at @s run kill @s

execute as @e[type=marker,distance=..40,tag=RunicNSETendrilSet,tag=RunicNSETendrilReached] unless score @s rr.system.BossTick matches 1.. at @s if entity @p[distance=..0.3] run playsound minecraft:entity.warden.sonic_charge hostile @a[distance=..40] ~ ~ ~ 0.6 1.3 0
execute as @e[type=marker,distance=..40,tag=RunicNSETendrilSet,tag=RunicNSETendrilReached,scores={rr.system.BossTick=33..}] at @s run kill @s

# Tendril Waves for Non-Jump-Avoidable Tendrils
execute as @e[type=item_display,tag=RunicNSETendrilStand2,distance=..40,scores={rr.system.BossTick=..15}] at @s run particle crit ~ ~0.25 ~ 0.2 0 0.2 0.002 1 force @a[distance=..80]
execute as @e[type=item_display,tag=RunicNSETendrilStand2,distance=..40,scores={rr.system.BossTick=15}] at @s run playsound minecraft:entity.player.hurt_sweet_berry_bush hostile @a[distance=..50] ~ ~ ~ 0.2 0.65 0
execute as @e[type=item_display,tag=RunicNSETendrilStand2,distance=..40,scores={rr.system.BossTick=16}] at @s run tp @s ~ ~1.8 ~
execute as @e[type=item_display,tag=RunicNSETendrilStand2,distance=..40,scores={rr.system.BossTick=15..17}] at @s positioned ~ ~0.1 ~ run execute as @e[type=!#rr_recast:spell_ignore,distance=..1,tag=!rr.boss.summon] run damage @s 45 minecraft:mob_projectile by @n[type=item_display,tag=RunicNSETendrilStand2,distance=..4] from @n[type=marker,tag=rr.boss,distance=..45]
execute as @e[type=item_display,tag=RunicNSETendrilStand2,distance=..40,scores={rr.system.BossTick=20..24}] at @s run tp @s ~ ~-0.45 ~
execute as @e[type=item_display,tag=RunicNSETendrilStand2,distance=..40,scores={rr.system.BossTick=25}] at @s run kill @s

# Tendril Waves for Jump-Avoidable Tendrils
execute as @e[type=item_display,tag=RunicNSETendrilStand3,distance=..40,scores={rr.system.BossTick=10..25}] at @s run particle crit ~ ~0.25 ~ 0.2 0 0.2 0.002 1 force @a[distance=..80]
execute as @e[type=item_display,tag=RunicNSETendrilStand3,distance=..40,scores={rr.system.BossTick=25}] at @s run playsound minecraft:entity.player.hurt_sweet_berry_bush hostile @a[distance=..50] ~ ~ ~ 0.2 0.65 0
execute as @e[type=item_display,tag=RunicNSETendrilStand3,distance=..40,scores={rr.system.BossTick=26}] at @s run tp @s ~ ~1.5 ~
execute as @e[type=item_display,tag=RunicNSETendrilStand3,distance=..40,scores={rr.system.BossTick=25..27}] at @s positioned ~ ~-0.1 ~ run execute as @e[type=!#rr_recast:spell_ignore,distance=..1,nbt={OnGround:true},tag=!rr.boss.summon] run damage @s 45 minecraft:mob_projectile by @n[type=item_display,tag=RunicNSETendrilStand3,distance=..4] from @n[type=marker,tag=rr.boss,distance=..45]
execute as @e[type=item_display,tag=RunicNSETendrilStand3,distance=..40,scores={rr.system.BossTick=30..34}] at @s run tp @s ~ ~-0.45 ~
execute as @e[type=item_display,tag=RunicNSETendrilStand3,distance=..40,scores={rr.system.BossTick=35}] at @s run kill @s


# ## Warning
# execute as @e[type=marker,tag=RunicNSELaserB,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_elite/laser_particle_b
# 
# ## Firing
# execute as @e[type=marker,tag=rr.boss,distance=..4] at @s run function rr_recast:boss/necrosculker_main/necrosculker_elite/laser_function_b
# 
# kill @e[type=marker,tag=RunicNSELaserMB,scores={rr.system.BossTick=3..}]

#endregion

# At 1680, after the two volleys of lasers complete, the boss will reset its patterns and return to 100. (99 here because it ticks up at the top of the function)
execute as @s[scores={rr.system.BossTick=2000..3010}] at @s run kill @e[tag=rr.boss.ns_elite.tendril_wave,distance=..45]
execute as @s[scores={rr.system.BossTick=2000..2010}] at @s run scoreboard players set @s rr.system.BossTick 99