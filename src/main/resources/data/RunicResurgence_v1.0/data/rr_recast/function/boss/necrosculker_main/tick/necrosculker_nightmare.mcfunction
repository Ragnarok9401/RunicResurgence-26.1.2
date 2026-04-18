scoreboard players add @s rr.system.BossTick 1
scoreboard players add @s[tag=!rr.boss.is_dead] rr.system.BossSongTick 1
scoreboard players add @e[distance=..40,tag=rr.boss.ns_nightmare.ticking] rr.system.BossTick 1

# kill @e[type=marker,tag=RunicNSNTendril,scores={rr.system.BossSongTick=200..}]

execute as @s[scores={rr.system.BossTick=1..}] at @s if entity @e[type=item,distance=..26] run execute as @e[type=item,distance=..26,tag=!rr.boss.no_despawn_item] run data merge entity @s {Age:-32768,PickupDelay:0}
execute as @s at @s if entity @e[type=item,distance=..26] run execute as @e[type=item,distance=..26,tag=!rr.boss.no_despawn_item] run tag @s add rr.boss.no_despawn_item

# execute as @s[scores={rr.system.BossTick=100..}] at @s unless entity @p[distance=..120,tag=rr.player.in_boss_fight,tag=!RunicLeftNSNArea4] run function rr_recast:technical/kill/necrosculker_nightmare_local

execute as @e[type=marker,tag=rr.boss,tag=!rr.boss.is_dead] at @s run bossbar set rr.boss.necrosculker_nightmare players @a[distance=..120]
execute store result bossbar rr.boss.necrosculker_nightmare value run scoreboard players get @s rr.system.BossHealth

execute as @s[scores={rr.system.BossTick=1..},tag=!rr.boss.is_dead] at @s run execute as @a[distance=..26,tag=rr.player.in_boss_fight,predicate=rr_recast:misc/holding_tool] run effect give @s mining_fatigue 1 19 false

# Music
execute as @s[scores={rr.system.BossSongTick=4290}] at @s run scoreboard players set @s rr.system.BossSongTick 80
execute as @s[scores={rr.system.BossSongTick=80},tag=!rr.boss.is_dead] at @s run execute as @a[tag=rr.player.in_boss_fight,distance=..80] at @s run playsound rr_recast:boss_tracks.deep_trouble_hard record @s ~ ~ ~ 0.5 1 0

# VFX to take place throughout the arena as the fight goes on
execute as @s[scores={rr.system.BossTick=1..}] at @s run particle sculk_charge{roll:0} ~ ~-1.475 ~ 7.75 0 7.75 0 2 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1..}] at @s run particle sculk_soul ~ ~ ~ 7.75 2 7.75 0 2 force @a[distance=..60]

# Tag players with the in_boss_fight tag
tag @a[distance=..20.75,tag=!rr.player.in_boss_fight] add rr.player.in_boss_fight
stopsound @a[distance=..20.75,tag=rr.player.in_boss_fight] * rr_recast:sinking_feeling


execute unless entity @s[tag=RunicNSNLookOther] as @e[type=item_display,limit=2,sort=nearest,tag=RunicNSNHead,distance=..4] at @s run tp @s ~ ~ ~ facing entity @e[distance=..35,limit=1,sort=nearest,type=!#rr_recast:spell_ignore,type=!skeleton,type=!zombie,type=!spider,type=!enderman,type=!bat,type=!witch,type=!creeper,type=!warden,gamemode=!spectator] eyes
execute unless entity @s[tag=RunicNSNLookOther] at @n[type=item_display,tag=RunicNSNHead1,distance=..4] as @a[distance=..3] run tp @p ^ ^-1.2 ^3

# Particles on Skeletons if one is about to be consumed
execute if score @s rr.boss.SkeletonCount matches 13.. at @n[distance=..22,tag=rr.necrosculker.summoned_skeleton,type=skeleton] run particle sculk_soul ~ ~1 ~ 0.25 0.6 0.25 0.01 4 normal @a[distance=..40]


# Prevent players from going high above the boss so that attacks can't be avoided entirely
execute as @s at @s store result score @s rr.system.BossYCoord run data get entity @s Pos[1] 100.0
execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s store result score @s rr.system.BossYCoord run data get entity @s Pos[1] 100.0
execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run scoreboard players operation @s rr.system.BossYCStore = @s rr.system.BossYCoord
execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s run scoreboard players operation @s rr.system.BossYCStore -= @e[type=marker,tag=rr.boss,tag=RunicNSNCore,distance=..40,limit=1,sort=nearest] rr.system.BossYCoord
execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s if score @s rr.system.BossYCStore matches 375.. run tp @s ~ ~-1 ~
execute as @a[distance=..40,tag=rr.player.in_boss_fight] at @s if score @s rr.system.BossYCStore matches ..-200 run tp @s ~ ~1 ~

# When at 0 or lower health, play death animations and stuff (a last-ditch swarm of tendrils and then it dies)
execute as @s[scores={rr.system.BossHealth=..0},tag=!rr.boss.is_dead] at @s run scoreboard players set @s rr.system.BossTick 4000
execute as @s[scores={rr.system.BossHealth=..0},tag=!rr.boss.is_dead] at @s run tag @s add rr.boss.is_dead
execute as @s[scores={rr.system.BossTick=4000..}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/boss_death
# Return 2 to mark that the boss is dead, so no further execution is necessary
execute as @s[scores={rr.system.BossTick=4000..}] at @s run return 2


# Siphon Aura
execute as @e[tag=rr.necrosculker.siphon_aura_main,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/siphon_aura_tick


# Some things to note:
# Boss is on a looping timer, reset to 100 instead of 0 because of letting the first 5 seconds be for summoning, setup, and other things
# If there are more than 10 Ancient Sentinels in total within the structure:
# Kill the nearest one, and add 80 Health to the boss. This is to prevent massive amounts of skeletons in the arena in a rare case that this would be able to happen.
# Also acts as a way to provide urgency for players to kill the skeletons

# Intro - Ticks 1 -> 99
execute as @s[scores={rr.system.BossTick=1..99}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/boss_intro
# Weakpoints
execute as @s[scores={rr.system.BossTick=1..}] at @s run execute as @e[tag=rr.boss.ns_nightmare.weakpoint,distance=..30] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/weakpoint_tick
# Part 1 - Ticks 40 -> 369
execute as @s[scores={rr.system.BossTick=40..369}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/boss_attacks_p1
# Part 2 - Ticks 370 -> 1179
execute as @s[scores={rr.system.BossTick=370..1179}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/boss_attacks_p2

# Check if the boss has taken sufficient damage during Pods phase
execute as @s[scores={rr.system.BossTick=1180,rr.system.BossDmg=225..},tag=!RunicNSNLookOther] at @s run tag @s add RunicNSNLookOther

# Part 3 - Ticks 1180 -> 1440 (base attacks)
execute as @s[scores={rr.system.BossTick=1180..1500}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/boss_attacks_p3
# Part 3 - Ticks 1180 -> 1440 (With extra summoned tendrils)
execute as @s[scores={rr.system.BossTick=1180..1520},tag=RunicNSNLookOther] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/boss_attacks_p3a
# Part 4 - Ticks 1441 -> 2010
execute as @s[scores={rr.system.BossTick=2040..2610}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/boss_attacks_p4


execute as @e[type=marker,tag=RunicNSNTendrilWeakpoint,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/teleport_weakpoint_tendrils


## Set UUID scores of each Marker to a random player's UUIDs, only first one set is random, each other one is based off of the first
## After UUID scores set, tag with Necrosculker Tendril Set tag
execute as @e[type=marker,distance=..4,tag=RunicNSNTendril,tag=!RunicNSNTendrilSet,tag=!RunicNSNTendrilWave,tag=!RunicNSNTendrilDouble,tag=!RunicNSNTendrilPulse,tag=!RunicNSNTendrilRing,tag=!RunicNSNTendrilSpiralA,tag=!RunicNSNTendrilSpiralB] at @s run scoreboard players operation @s rr.system.matchUUID1 = @r[distance=..28,tag=rr.player.in_boss_fight,limit=1] rr.system.playerUUID1
execute as @e[type=marker,distance=..4,tag=RunicNSNTendril,tag=!RunicNSNTendrilSet,tag=!RunicNSNTendrilWave,tag=!RunicNSNTendrilDouble,tag=!RunicNSNTendrilPulse,tag=!RunicNSNTendrilRing,tag=!RunicNSNTendrilSpiralA,tag=!RunicNSNTendrilSpiralB] at @s run execute as @a[distance=..28,tag=rr.player.in_boss_fight] if score @s rr.system.playerUUID1 = @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSNTendril,tag=!RunicNSNTendrilSet] rr.system.matchUUID1 run scoreboard players operation @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSNTendril,tag=!RunicNSNTendrilSet] rr.system.matchUUID2 = @s rr.system.playerUUID2
execute as @e[type=marker,distance=..4,tag=RunicNSNTendril,tag=!RunicNSNTendrilSet,tag=!RunicNSNTendrilWave,tag=!RunicNSNTendrilDouble,tag=!RunicNSNTendrilPulse,tag=!RunicNSNTendrilRing,tag=!RunicNSNTendrilSpiralA,tag=!RunicNSNTendrilSpiralB] at @s run execute as @a[distance=..28,tag=rr.player.in_boss_fight] if score @s rr.system.playerUUID1 = @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSNTendril,tag=!RunicNSNTendrilSet] rr.system.matchUUID1 run scoreboard players operation @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSNTendril,tag=!RunicNSNTendrilSet] rr.system.matchUUID3 = @s rr.system.playerUUID3
execute as @e[type=marker,distance=..4,tag=RunicNSNTendril,tag=!RunicNSNTendrilSet,tag=!RunicNSNTendrilWave,tag=!RunicNSNTendrilDouble,tag=!RunicNSNTendrilPulse,tag=!RunicNSNTendrilRing,tag=!RunicNSNTendrilSpiralA,tag=!RunicNSNTendrilSpiralB] at @s run execute as @a[distance=..28,tag=rr.player.in_boss_fight] if score @s rr.system.playerUUID1 = @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSNTendril,tag=!RunicNSNTendrilSet] rr.system.matchUUID1 run scoreboard players operation @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSNTendril,tag=!RunicNSNTendrilSet] rr.system.matchUUID4 = @s rr.system.playerUUID4
tag @e[type=marker,distance=..4,tag=RunicNSNTendril,tag=!RunicNSNTendrilSet,tag=!RunicNSNTendrilWave,tag=!RunicNSNTendrilDouble,tag=!RunicNSNTendrilPulse,tag=!RunicNSNTendrilRing,tag=!RunicNSNTendrilSpiralA,tag=!RunicNSNTendrilSpiralB] add RunicNSNTendrilSet

## Display particles and play a soft sound at the location of the markers
execute as @e[type=marker,tag=RunicNSNTendrilSet,distance=..40] at @s run particle sculk_charge{roll:0} ~ ~ ~ 0.02 0.02 0.02 0.004 1 force @a[distance=..40]
execute as @e[type=marker,tag=RunicNSNTendrilSet,tag=!RunicNSNTendrilReached,limit=10,distance=..40] at @s run playsound minecraft:entity.vex.death hostile @a[distance=..40] ~ ~ ~ 0.12 1.3 0

## Make the Marker face what player it targets and teleport forward to them
execute as @e[type=marker,tag=RunicNSNTendrilSet,tag=!RunicNSNTendrilWave,tag=!RunicNSNTendrilDouble,tag=!RunicNSNTendrilPulse,tag=!RunicNSNTendrilRing,distance=..40] at @s run execute as @a[distance=..24,tag=rr.player.in_boss_fight] if score @s rr.system.playerUUID1 = @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSNTendril,tag=RunicNSNTendrilSet,tag=!RunicNSNTendrilReached] rr.system.matchUUID1 if score @s rr.system.playerUUID2 = @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSNTendril,tag=RunicNSNTendrilSet] rr.system.matchUUID2 if score @s rr.system.playerUUID3 = @e[distance=..25,type=marker,limit=1,sort=nearest,tag=RunicNSNTendril,tag=RunicNSNTendrilSet] rr.system.matchUUID3 if score @s rr.system.playerUUID4 = @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSNTendril,tag=RunicNSNTendrilSet] rr.system.matchUUID4 run tp @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSNTendril,tag=RunicNSNTendrilSet,tag=!RunicNSNTendrilReached] ^ ^ ^0.7 facing entity @s feet

## Upon reaching targeted player, summon an armor stand with a tendril on its head below to thrust up from the ground and stab at the player after a second
## Marker also dies upon reaching the player
execute as @e[type=marker,tag=RunicNSNTendrilSet,distance=..40,tag=!RunicNSNTendrilReached] at @s if entity @p[distance=..0.75] run tag @s add RunicNSNTendrilReached
execute as @e[type=marker,tag=RunicNSNTendrilSet,distance=..40,tag=RunicNSNTendrilReached] at @s if entity @p[distance=..0.75] run tag @s add rr.boss.ns_nightmare.ticking
execute as @e[type=marker,tag=RunicNSNTendrilSet,distance=..40,tag=RunicNSNTendrilReached,tag=!RunicNSNTendrilOther,scores={rr.system.BossTick=1}] at @s run summon item_display ~ ~ ~ {item_display:"head",Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSNTendrilSet,distance=..40,tag=RunicNSNTendrilReached,tag=!RunicNSNTendrilOther,scores={rr.system.BossTick=3}] at @s run summon item_display ~0.95 ~ ~ {item_display:"head",Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSNTendrilSet,distance=..40,tag=RunicNSNTendrilReached,tag=!RunicNSNTendrilOther,scores={rr.system.BossTick=5}] at @s run summon item_display ~ ~ ~0.95 {item_display:"head",Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSNTendrilSet,distance=..40,tag=RunicNSNTendrilReached,tag=!RunicNSNTendrilOther,scores={rr.system.BossTick=7}] at @s run summon item_display ~-0.95 ~ ~ {item_display:"head",Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSNTendrilSet,distance=..40,tag=RunicNSNTendrilReached,tag=!RunicNSNTendrilOther,scores={rr.system.BossTick=9}] at @s run summon item_display ~ ~ ~-0.95 {item_display:"head",Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSNTendrilSet,distance=..40,tag=RunicNSNTendrilReached,tag=!RunicNSNTendrilOther,scores={rr.system.BossTick=11}] at @s run summon item_display ~0.95 ~ ~0.95 {item_display:"head",Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSNTendrilSet,distance=..40,tag=RunicNSNTendrilReached,tag=!RunicNSNTendrilOther,scores={rr.system.BossTick=13}] at @s run summon item_display ~0.95 ~ ~-0.95 {item_display:"head",Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSNTendrilSet,distance=..40,tag=RunicNSNTendrilReached,tag=!RunicNSNTendrilOther,scores={rr.system.BossTick=15}] at @s run summon item_display ~-0.95 ~ ~0.95 {item_display:"head",Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSNTendrilSet,distance=..40,tag=RunicNSNTendrilReached,tag=!RunicNSNTendrilOther,scores={rr.system.BossTick=17}] at @s run summon item_display ~-0.95 ~ ~-0.95 {item_display:"head",Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSNTendrilSet,distance=..40,tag=RunicNSNTendrilReached,tag=!RunicNSNTendrilOther,scores={rr.system.BossTick=19}] at @s run summon item_display ~-1.4 ~ ~ {item_display:"head",Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSNTendrilSet,distance=..40,tag=RunicNSNTendrilReached,tag=!RunicNSNTendrilOther,scores={rr.system.BossTick=21}] at @s run summon item_display ~ ~ ~-1.4 {item_display:"head",Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSNTendrilSet,distance=..40,tag=RunicNSNTendrilReached,tag=!RunicNSNTendrilOther,scores={rr.system.BossTick=23}] at @s run summon item_display ~1.4 ~ ~ {item_display:"head",Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSNTendrilSet,distance=..40,tag=RunicNSNTendrilReached,tag=!RunicNSNTendrilOther,scores={rr.system.BossTick=25}] at @s run summon item_display ~ ~ ~1.4 {item_display:"head",Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}


## Functions for Tendril Wave Main Marker
execute as @n[type=marker,tag=rr.boss.ns_nightmare.tendril_wave.main,distance=..4,scores={rr.system.BossTick=1}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/tendril_wave
execute as @n[type=marker,tag=rr.boss.ns_nightmare.tendril_wave.main,distance=..4,scores={rr.system.BossTick=130..}] run scoreboard players set @s rr.system.BossTick 0
## Tendril Summons for Tendril Wave Markers
execute as @e[type=marker,tag=RunicNSNTendrilWave,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/teleport_tendril_waves with entity @s data.rr_recast.tendril_wave
execute as @e[type=marker,tag=RunicNSNTendrilDouble,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/teleport_tendril_doubles with entity @s data.rr_recast.tendril_wave
execute as @e[type=marker,tag=RunicNSNTendrilPulse,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/teleport_tendril_pulse with entity @s data.rr_recast.tendril_wave
execute as @e[type=marker,tag=RunicNSNTendrilRing,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/teleport_tendril_ring with entity @s data.rr_recast.tendril_wave
execute as @e[type=marker,tag=RunicNSNTendrilSpiralA,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/teleport_tendril_spiral_a with entity @s data.rr_recast.tendril_wave
execute as @e[type=marker,tag=RunicNSNTendrilSpiralB,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/teleport_tendril_spiral_b with entity @s data.rr_recast.tendril_wave
execute as @e[type=marker,tag=RunicNSNTendrilWave,distance=30..40] at @s run kill @s
execute as @e[type=marker,tag=RunicNSNTendrilDouble,distance=30..40] at @s run kill @s
execute as @e[type=marker,tag=RunicNSNTendrilPulse,distance=22..40] at @s run kill @s
execute as @e[type=marker,tag=RunicNSNTendrilRing,distance=..2.5] at @s run kill @s
execute as @e[type=marker,tag=RunicNSNTendrilSpiralA,distance=22..40] at @s run kill @s
execute as @e[type=marker,tag=RunicNSNTendrilSpiralA,distance=4..40] at @s run tag @s add rr.boss.ns_nightmare.kill_when_close
execute as @e[type=marker,tag=RunicNSNTendrilSpiralA,tag=rr.boss.ns_nightmare.kill_when_close,distance=..2.8] at @s run kill @s
execute as @e[type=marker,tag=RunicNSNTendrilSpiralB,distance=..2.8] at @s run kill @s
execute as @e[type=marker,tag=RunicNSNTendrilSpiralB,distance=..19.7] at @s run tag @s add rr.boss.ns_nightmare.kill_when_far
execute as @e[type=marker,tag=RunicNSNTendrilSpiralB,tag=rr.boss.ns_nightmare.kill_when_far,distance=20..] at @s run kill @s
execute as @e[type=marker,tag=RunicNSNTendrilWeakpoint,distance=30..40] at @s run kill @s

# All Tendrils NOT from Tendril Wave
execute as @e[type=item_display,tag=RunicNSNTendrilStand,scores={rr.system.BossTick=..15},distance=..40] at @s run particle crit ~ ~0.25 ~ 0.2 0 0.2 0.002 1 force @a[distance=..80]
execute as @e[type=item_display,tag=RunicNSNTendrilStand,scores={rr.system.BossTick=25},distance=..40] at @s run playsound minecraft:entity.player.hurt_sweet_berry_bush hostile @a[distance=..50] ~ ~1 ~ 0.7 0.75 0
execute as @e[type=item_display,tag=RunicNSNTendrilStand,scores={rr.system.BossTick=26},distance=..40] at @s run tp @s ~ ~1.8 ~
execute as @e[type=item_display,tag=RunicNSNTendrilStand,scores={rr.system.BossTick=25..27},distance=..40] at @s positioned ~ ~0.1 ~ run execute as @e[type=!#rr_recast:spell_ignore,distance=..1,tag=!rr.boss.summon] run damage @s 42 minecraft:mob_projectile by @e[type=item_display,limit=1,sort=nearest,tag=RunicNSNTendrilStand] from @e[type=marker,tag=rr.boss,limit=1,sort=nearest]
execute as @e[type=item_display,tag=RunicNSNTendrilStand,scores={rr.system.BossTick=25..27},distance=..40] at @s positioned ~ ~0.1 ~ run execute as @e[type=!#rr_recast:spell_ignore,distance=..1,tag=!rr.boss.summon] run effect give @s slowness 3 0 true
execute as @e[type=item_display,tag=RunicNSNTendrilStand,scores={rr.system.BossTick=33..39},distance=..40] at @s run tp @s ~ ~-0.45 ~
execute as @e[type=item_display,tag=RunicNSNTendrilStand,scores={rr.system.BossTick=40},distance=..40] at @s run kill @s

execute as @e[type=marker,tag=RunicNSNTendrilSet,tag=RunicNSNTendrilReached,distance=..40] unless score @s rr.system.BossTick matches 1.. at @s if entity @p[distance=..0.3] run playsound minecraft:entity.warden.sonic_charge hostile @a[distance=..40] ~ ~ ~ 0.625 1.25 0
execute as @e[type=marker,tag=RunicNSNTendrilSet,tag=RunicNSNTendrilReached,scores={rr.system.BossTick=30..},distance=..45] at @s run kill @s

# Tendril Waves for Non-Jump-Avoidable Tendrils
execute as @e[type=item_display,tag=RunicNSNTendrilStand2,distance=..40,scores={rr.system.BossTick=..15}] at @s run particle crit ~ ~0.25 ~ 0.2 0 0.2 0.002 1 force @a[distance=..80]
execute as @e[type=item_display,tag=RunicNSNTendrilStand2,distance=..40,scores={rr.system.BossTick=15}] at @s run playsound minecraft:entity.player.hurt_sweet_berry_bush hostile @a[distance=..50] ~ ~ ~ 0.2 0.65 0
execute as @e[type=item_display,tag=RunicNSNTendrilStand2,distance=..40,scores={rr.system.BossTick=16}] at @s run tp @s ~ ~1.8 ~
execute as @e[type=item_display,tag=RunicNSNTendrilStand2,distance=..40,scores={rr.system.BossTick=15..17}] at @s positioned ~ ~0.1 ~ run execute as @e[type=!#rr_recast:spell_ignore,distance=..1,tag=!rr.boss.summon] run damage @s 50 minecraft:mob_projectile by @n[type=item_display,tag=RunicNSNTendrilStand2,distance=..4] from @n[type=marker,tag=rr.boss,distance=..45]
execute as @e[type=item_display,tag=RunicNSNTendrilStand2,distance=..40,scores={rr.system.BossTick=15..17}] at @s positioned ~ ~0.1 ~ run execute as @e[type=!#rr_recast:spell_ignore,distance=..1,tag=!rr.boss.summon] run effect give @s slowness 3 0 true
execute as @e[type=item_display,tag=RunicNSNTendrilStand2,distance=..40,scores={rr.system.BossTick=20..24}] at @s run tp @s ~ ~-0.45 ~
execute as @e[type=item_display,tag=RunicNSNTendrilStand2,distance=..40,scores={rr.system.BossTick=25}] at @s run kill @s

# Tendril Waves for Jump-Avoidable Tendrils
execute as @e[type=item_display,tag=RunicNSNTendrilStand3,distance=..40,scores={rr.system.BossTick=10..25}] at @s run particle crit ~ ~0.25 ~ 0.2 0 0.2 0.002 1 force @a[distance=..80]
execute as @e[type=item_display,tag=RunicNSNTendrilStand3,distance=..40,scores={rr.system.BossTick=25}] at @s run playsound minecraft:entity.player.hurt_sweet_berry_bush hostile @a[distance=..50] ~ ~ ~ 0.2 0.65 0
execute as @e[type=item_display,tag=RunicNSNTendrilStand3,distance=..40,scores={rr.system.BossTick=26}] at @s run tp @s ~ ~1.5 ~
execute as @e[type=item_display,tag=RunicNSNTendrilStand3,distance=..40,scores={rr.system.BossTick=25..27}] at @s positioned ~ ~-0.1 ~ run execute as @e[type=!#rr_recast:spell_ignore,distance=..1,nbt={OnGround:true},tag=!rr.boss.summon] run damage @s 50 minecraft:mob_projectile by @n[type=item_display,tag=RunicNSNTendrilStand3,distance=..4] from @n[type=marker,tag=rr.boss,distance=..45]
execute as @e[type=item_display,tag=RunicNSNTendrilStand3,distance=..40,scores={rr.system.BossTick=25..27}] at @s positioned ~ ~0.1 ~ run execute as @e[type=!#rr_recast:spell_ignore,distance=..1,nbt={OnGround:true},tag=!rr.boss.summon] run effect give @s slowness 3 0 true
execute as @e[type=item_display,tag=RunicNSNTendrilStand3,distance=..40,scores={rr.system.BossTick=30..34}] at @s run tp @s ~ ~-0.45 ~
execute as @e[type=item_display,tag=RunicNSNTendrilStand3,distance=..40,scores={rr.system.BossTick=35}] at @s run kill @s
#endregion


## Warning
## Separate function
execute as @e[type=marker,tag=RunicNSNLaserA,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/laser_particle_a

## Firing
## Separate functions
execute as @e[type=marker,tag=rr.boss,distance=..4] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/laser_function_a_top
execute as @e[type=marker,tag=rr.boss,distance=..4] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/laser_function_a_bottom

kill @e[type=marker,tag=rr.ns_nightmare.laser_main_top,scores={rr.system.BossTick=4..},distance=..40]
kill @e[type=marker,tag=rr.ns_nightmare.laser_main_bot,scores={rr.system.BossTick=4..},distance=..40]

#endregion


## Scoreboard management for health removal
execute as @e[tag=RunicNSNRootPodZ] store result score @s rr.system.NSRootHP run data get entity @s Health
execute as @e[tag=RunicNSNRootPodZ] at @s if score @s rr.math.A matches 1.. if score @s rr.system.NSRootHP < @s rr.math.A run scoreboard players operation @s rr.math.B = @s rr.math.A
execute as @e[tag=RunicNSNRootPodZ] at @s if score @s rr.math.B matches 1.. run scoreboard players operation @s rr.math.B -= @s rr.system.NSRootHP
execute as @e[tag=RunicNSNRootPodZ] store result score @s rr.math.A run data get entity @s Health
execute as @e[tag=RunicNSNRootPodZ,scores={rr.math.B=1..}] at @s run scoreboard players operation @e[tag=rr.boss,tag=RunicNSNCore,scores={rr.system.BossHealth=1..},limit=1,sort=nearest] rr.system.BossHealth -= @s rr.math.B
execute as @e[tag=RunicNSNRootPodZ,scores={rr.math.B=1..}] at @s run scoreboard players operation @e[tag=rr.boss,tag=RunicNSNCore,scores={rr.system.BossHealth=1..},limit=1,sort=nearest,tag=RunicNSNLookOther] rr.system.BossDmg += @s rr.math.B
execute as @e[tag=RunicNSNRootPodZ,scores={rr.math.B=1..}] at @s run playsound minecraft:entity.warden.hurt hostile @a[distance=..50] ~ ~1 ~ 1.3 0.5 0
execute as @e[tag=RunicNSNRootPodZ,scores={rr.math.B=1..}] at @s run playsound minecraft:block.honey_block.place hostile @a[distance=..50] ~ ~1 ~ 1.4 0.8 0
execute as @e[tag=RunicNSNRootPodZ,scores={rr.math.B=1..}] at @s run particle sculk_soul ~ ~1.5 ~ 1 1 1 0.08 10 force @a[distance=..80]
execute as @e[tag=RunicNSNRootPodZ,scores={rr.math.B=1..}] at @s run execute as @p unless entity @s[predicate=!rr_recast:armor_items/mending_helmet,predicate=!rr_recast:armor_items/mending_chestplate,predicate=!rr_recast:armor_items/mending_leggings,predicate=!rr_recast:armor_items/mending_boots] run summon experience_orb ~ ~1.125 ~ {Value:2}
execute as @e[tag=RunicNSNRootPodZ,scores={rr.math.B=1..,rr.system.BossTick=20..210},tag=!rr.boss.necrosculker_dmg_cooldown] at @s run tag @s add rr.boss.necrosculker_dmg_cooldown
execute as @e[tag=RunicNSNRootPodZ,scores={rr.math.B=1..}] at @s run scoreboard players set @s rr.math.B 0


execute as @e[type=marker,tag=RunicNSNTendrilSet2,tag=RunicNSNTendrilReached2,distance=..40,scores={rr.system.BossTick=1}] at @s run summon item_display ~ ~ ~ {item_display:"head",Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSNTendrilSet2,tag=RunicNSNTendrilReached2,distance=..40,scores={rr.system.BossTick=11}] at @s run summon item_display ~1.2 ~ ~ {item_display:"head",Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSNTendrilSet2,tag=RunicNSNTendrilReached2,distance=..40,scores={rr.system.BossTick=21}] at @s run summon item_display ~ ~ ~1.2 {item_display:"head",Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSNTendrilSet2,tag=RunicNSNTendrilReached2,distance=..40,scores={rr.system.BossTick=31}] at @s run summon item_display ~-1.2 ~ ~ {item_display:"head",Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSNTendrilSet2,tag=RunicNSNTendrilReached2,distance=..40,scores={rr.system.BossTick=41}] at @s run summon item_display ~ ~ ~-1.2 {item_display:"head",Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSNTendrilSet2,tag=RunicNSNTendrilReached2,distance=..40,scores={rr.system.BossTick=51}] at @s run summon item_display ~1.2 ~ ~-1.2 {item_display:"head",Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSNTendrilSet2,tag=RunicNSNTendrilReached2,distance=..40,scores={rr.system.BossTick=61}] at @s run summon item_display ~-1.2 ~ ~-1.2 {item_display:"head",Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSNTendrilSet2,tag=RunicNSNTendrilReached2,distance=..40,scores={rr.system.BossTick=71}] at @s run summon item_display ~1.2 ~ ~1.2 {item_display:"head",Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSNTendrilSet2,tag=RunicNSNTendrilReached2,distance=..40,scores={rr.system.BossTick=81}] at @s run summon item_display ~-1.2 ~ ~1.2 {item_display:"head",Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSNTendrilSet2,tag=RunicNSNTendrilReached2,distance=..40,scores={rr.system.BossTick=91}] at @s run summon item_display ~1.65 ~ ~ {item_display:"head",Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSNTendrilSet2,tag=RunicNSNTendrilReached2,distance=..40,scores={rr.system.BossTick=101}] at @s run summon item_display ~ ~ ~1.65 {item_display:"head",Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSNTendrilSet2,tag=RunicNSNTendrilReached2,distance=..40,scores={rr.system.BossTick=111}] at @s run summon item_display ~-1.65 ~ ~ {item_display:"head",Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSNTendrilSet2,tag=RunicNSNTendrilReached2,distance=..40,scores={rr.system.BossTick=121}] at @s run summon item_display ~ ~ ~-1.65 {item_display:"head",Tags:["rr.boss.ns_nightmare.ticking","RunicNSNTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}

execute as @e[type=marker,tag=RunicNSNTendrilSet2,tag=RunicNSNTendrilReached2,distance=..40] unless score @s rr.system.BossTick matches 1.. at @s run playsound minecraft:entity.warden.sonic_charge hostile @a[distance=..40] ~ ~ ~ 0.6 1.2 0
execute as @e[type=marker,tag=RunicNSNTendrilSet2,tag=RunicNSNTendrilReached2,distance=..40,scores={rr.system.BossTick=121..}] at @s run kill @s

## Reset the Head position of the boss and remove the LookOther tag
execute as @s[scores={rr.system.BossTick=1380..1400},tag=RunicNSNLookOther] at @s run execute as @e[tag=RunicNSNHead,limit=2,sort=nearest] at @s store result score @s rr.math.C run data get entity @s Rotation[1]
execute as @s[scores={rr.system.BossTick=1380..1400},tag=RunicNSNLookOther] at @s run execute as @e[tag=RunicNSNHead,limit=2,sort=nearest] at @s unless score @s rr.math.C matches 0 run tp @s ~ ~ ~ ~ ~0.95
execute as @s[scores={rr.system.BossTick=1400},tag=RunicNSNLookOther] at @s run tag @s remove RunicNSNLookOther

#endregion

## Warning
execute as @e[type=marker,tag=RunicNSNLaserB,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/laser_particle_b

## Firing
execute as @e[type=marker,tag=rr.boss] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/laser_function_b

kill @e[type=marker,tag=rr.ns_nightmare.laser_2_main,scores={rr.system.BossTick=3..}]

#endregion

# At 2600, after the second volley of lasers complete, the boss will reset its patterns and return to 100. (99 here because it ticks up at the top of the function)
execute as @s[scores={rr.system.BossTick=2600..2610}] at @s run scoreboard players set @s rr.system.BossTick 99
