scoreboard players add @s rr.system.BossTick 1
scoreboard players add @s[tag=!rr.boss.is_dead] rr.system.BossSongTick 1
scoreboard players add @e[distance=..50,tag=rr.boss.ns.ticking] rr.system.BossTick 1

#kill @e[type=marker,tag=RunicNSTendril,scores={rr.system.BossSongTick=200..}]

execute as @s[scores={rr.system.BossTick=1..}] at @s if entity @e[type=item,distance=..26] run execute as @e[type=item,distance=..30,tag=!rr.boss.no_despawn_item] run data merge entity @s {Age:-32768,PickupDelay:0}
execute as @s at @s if entity @e[type=item,distance=..30] run execute as @e[type=item,distance=..26,tag=!rr.boss.no_despawn_item] run tag @s add rr.boss.no_despawn_item

execute as @s[scores={rr.system.BossTick=100..},tag=!rr.boss.is_dead] at @s unless entity @p[distance=..120,tag=rr.player.in_boss_fight,tag=!RunicLeftNSArea4] run function rr_recast:boss/necrosculker_main/necrosculker/kill_local

execute as @e[type=marker,tag=rr.boss,tag=!rr.boss.is_dead] at @s run bossbar set rr.boss.necrosculker players @a[distance=..120]
execute store result bossbar rr.boss.necrosculker value run scoreboard players get @s rr.system.BossHealth

execute as @s[scores={rr.system.BossTick=1..},tag=!rr.boss.is_dead] at @s run execute as @a[distance=..26,tag=rr.player.in_boss_fight,predicate=rr_recast:misc/holding_tool] run effect give @s mining_fatigue 1 19 false


# Prevent players from going high above the boss so that attacks can't be avoided entirely
execute as @s at @s store result score @s rr.system.BossYCoord run data get entity @s Pos[1] 100.0
execute as @a[distance=..40,tag=rr.player.in_boss_fight,gamemode=!creative,gamemode=!spectator] at @s store result score @s rr.system.BossYCoord run data get entity @s Pos[1] 100.0
execute as @a[distance=..40,tag=rr.player.in_boss_fight,gamemode=!creative,gamemode=!spectator] at @s run scoreboard players operation @s rr.system.BossYCStore = @s rr.system.BossYCoord
execute as @a[distance=..40,tag=rr.player.in_boss_fight,gamemode=!creative,gamemode=!spectator] at @s run scoreboard players operation @s rr.system.BossYCStore -= @e[type=marker,tag=rr.boss,tag=RunicNSCore,distance=..40,limit=1,sort=nearest] rr.system.BossYCoord
execute as @a[distance=..40,tag=rr.player.in_boss_fight,gamemode=!creative,gamemode=!spectator] at @s if score @s rr.system.BossYCStore matches 375.. run tp @s ~ ~-1 ~
execute as @a[distance=..40,tag=rr.player.in_boss_fight,gamemode=!creative,gamemode=!spectator] at @s if score @s rr.system.BossYCStore matches ..-200 run tp @s ~ ~1 ~


# When at 0 or lower health, play death animations and stuff (a last-ditch swarm of tendrils and then it dies)
execute as @s[scores={rr.system.BossHealth=..0},tag=!rr.boss.is_dead] at @s run scoreboard players set @s rr.system.BossTick 3000
execute as @s[scores={rr.system.BossTick=3000..}] at @s run function rr_recast:boss/necrosculker_main/necrosculker/boss_death
# Return 2 to mark that the boss is dead, so no further execution is necessary
execute as @s[scores={rr.system.BossTick=3000..}] at @s run return 2

# VFX to take place throughout the arena as the fight goes on
execute as @s[scores={rr.system.BossTick=1..}] at @s run particle sculk_charge{roll:0} ~ ~-1.475 ~ 7.75 0 7.75 0 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1..}] at @s run particle sculk_soul ~ ~ ~ 7.75 2 7.75 0 1 force @a[distance=..60]

# Music
execute as @s[scores={rr.system.BossSongTick=4441}] at @s run scoreboard players set @s rr.system.BossSongTick 80

tag @a[distance=..20.75,tag=!rr.player.in_boss_fight] add rr.player.in_boss_fight

execute unless entity @s[tag=RunicNSLookOther] as @e[type=item_display,limit=2,sort=nearest,tag=RunicNSHead] at @s run tp @s ~ ~ ~ facing entity @e[distance=..35,limit=1,sort=nearest,type=!#rr_recast:spell_ignore,type=!skeleton,type=!zombie,type=!spider,type=!enderman,type=!bat,type=!witch,type=!creeper,type=!warden] eyes
execute unless entity @s[tag=RunicNSLookOther] at @n[type=item_display,tag=RunicNSHead1] as @a[distance=..3] run tp @p ^ ^-1.2 ^3

# Particles on Skeletons if one is about to be consumed
execute if score @s rr.boss.SkeletonCount matches 10.. at @n[distance=..22,tag=rr.necrosculker.summoned_skeleton,type=skeleton] run particle sculk_soul ~ ~1 ~ 0.25 0.6 0.25 0.01 3 force @a[distance=..40]


# Some things to note:
# Boss is on a looping timer, reset to 100 instead of 0 because of letting the first 5 seconds be for summoning, setup, and other things
# If there are more than 10 Ancient Sentinels in total within an area:
# Kill the nearest one, and add 80 Health to the boss. This is to prevent
# massive amounts of skeletons in the arena and acts as a way to provide
# urgency for players to kill the skeletons

# Intro - Ticks 1 -> 99
execute as @s[scores={rr.system.BossTick=1..99}] at @s run function rr_recast:boss/necrosculker_main/necrosculker/boss_intro
# Weakpoints
execute as @s[scores={rr.system.BossTick=1..}] at @s run execute as @e[tag=rr.boss.ns.weakpoint,distance=..30] at @s run function rr_recast:boss/necrosculker_main/necrosculker/weakpoint_tick
# Part 1 - Ticks 40 -> 369
execute as @s[scores={rr.system.BossTick=40..369}] at @s run function rr_recast:boss/necrosculker_main/necrosculker/boss_attacks_p1
# Part 2 - Ticks 370 -> 1179
execute as @s[scores={rr.system.BossTick=370..1179}] at @s run function rr_recast:boss/necrosculker_main/necrosculker/boss_attacks_p2

# Check if the boss has taken sufficient damage during Pods phase
execute as @s[scores={rr.system.BossTick=1180,rr.system.BossDmg=100..},tag=!RunicNSLookOther] at @s run tag @s add RunicNSLookOther

# Part 3 - Ticks 1180 -> 1440 (base attacks)
execute as @s[scores={rr.system.BossTick=1180..1440}] at @s run function rr_recast:boss/necrosculker_main/necrosculker/boss_attacks_p3
# Part 3 - Ticks 1180 -> 1440 (With extra summoned tendrils)
execute as @s[scores={rr.system.BossTick=1180..1520},tag=RunicNSLookOther] at @s run function rr_recast:boss/necrosculker_main/necrosculker/boss_attacks_p3a
# Part 4 - Ticks 1441 -> 2010
execute as @s[scores={rr.system.BossTick=1460..1530}] at @s run function rr_recast:boss/necrosculker_main/necrosculker/boss_attacks_p4

## Set UUID scores of each Marker to a random player's UUIDs, only first one set is random, each other one is based off of the first
## After UUID scores set, tag with Necrosculker Tendril Set tag
execute at @s as @e[type=marker,tag=RunicNSTendril,tag=!RunicNSTendrilSet,distance=..4] at @s run scoreboard players operation @s rr.system.matchUUID1 = @r[distance=..28,tag=rr.player.in_boss_fight,limit=1] rr.system.playerUUID1
execute at @s as @e[type=marker,tag=RunicNSTendril,tag=!RunicNSTendrilSet,distance=..4] at @s run execute as @a[distance=..28,tag=rr.player.in_boss_fight] if score @s rr.system.playerUUID1 = @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSTendril,tag=!RunicNSTendrilSet] rr.system.matchUUID1 run scoreboard players operation @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSTendril,tag=!RunicNSTendrilSet] rr.system.matchUUID2 = @s rr.system.playerUUID2
execute at @s as @e[type=marker,tag=RunicNSTendril,tag=!RunicNSTendrilSet,distance=..4] at @s run execute as @a[distance=..28,tag=rr.player.in_boss_fight] if score @s rr.system.playerUUID1 = @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSTendril,tag=!RunicNSTendrilSet] rr.system.matchUUID1 run scoreboard players operation @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSTendril,tag=!RunicNSTendrilSet] rr.system.matchUUID3 = @s rr.system.playerUUID3
execute at @s as @e[type=marker,tag=RunicNSTendril,tag=!RunicNSTendrilSet,distance=..4] at @s run execute as @a[distance=..28,tag=rr.player.in_boss_fight] if score @s rr.system.playerUUID1 = @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSTendril,tag=!RunicNSTendrilSet] rr.system.matchUUID1 run scoreboard players operation @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSTendril,tag=!RunicNSTendrilSet] rr.system.matchUUID4 = @s rr.system.playerUUID4
execute at @s run tag @e[type=marker,tag=RunicNSTendril,tag=!RunicNSTendrilSet,distance=..4] add RunicNSTendrilSet

## Display particles and play a soft sound at the location of the markers
execute as @e[type=marker,tag=RunicNSTendrilSet,distance=..40] at @s run particle sculk_charge{roll:0} ~ ~ ~ 0.02 0.02 0.02 0.004 1 force @a[distance=..40]
execute as @e[type=marker,tag=RunicNSTendrilSet,distance=..40,tag=!RunicNSTendrilReached] at @s run playsound minecraft:entity.vex.death hostile @a[distance=..40] ~ ~ ~ 0.15 1.5 0

## Make the Marker face what player it targets and teleport forward to them
execute as @e[type=marker,tag=RunicNSTendrilSet,distance=..40] at @s run execute as @a[distance=..28,tag=rr.player.in_boss_fight] if score @s rr.system.playerUUID1 = @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSTendril,tag=RunicNSTendrilSet,tag=!RunicNSTendrilReached] rr.system.matchUUID1 if score @s rr.system.playerUUID2 = @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSTendril,tag=RunicNSTendrilSet] rr.system.matchUUID2 if score @s rr.system.playerUUID3 = @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSTendril,tag=RunicNSTendrilSet] rr.system.matchUUID3 if score @s rr.system.playerUUID4 = @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSTendril,tag=RunicNSTendrilSet] rr.system.matchUUID4 run tp @e[distance=..28,type=marker,limit=1,sort=nearest,tag=RunicNSTendril,tag=RunicNSTendrilSet,tag=!RunicNSTendrilReached] ^ ^ ^0.45 facing entity @s feet

## Upon reaching targeted player, summon an armor stand with a tendril on its head below to thrust up from the ground and stab at the player after a second
## Marker also dies upon reaching the player
execute as @e[type=marker,distance=..40,tag=RunicNSTendrilSet,tag=!RunicNSTendrilReached] at @s if entity @p[distance=..0.5] run tag @s add RunicNSTendrilReached
execute as @e[type=marker,distance=..40,tag=RunicNSTendrilSet,tag=RunicNSTendrilReached] at @s run tag @s add rr.boss.ns.ticking
execute as @e[type=marker,distance=..40,tag=RunicNSTendrilSet,tag=RunicNSTendrilReached,scores={rr.system.BossTick=1}] at @s run summon item_display ~ ~ ~ {item_display:"head",Tags:["rr.boss.ns.ticking","RunicNSTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,distance=..40,tag=RunicNSTendrilSet,tag=RunicNSTendrilReached,scores={rr.system.BossTick=6}] at @s run summon item_display ~0.9 ~ ~ {item_display:"head",Tags:["rr.boss.ns.ticking","RunicNSTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,distance=..40,tag=RunicNSTendrilSet,tag=RunicNSTendrilReached,scores={rr.system.BossTick=11}] at @s run summon item_display ~ ~ ~0.9 {item_display:"head",Tags:["rr.boss.ns.ticking","RunicNSTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,distance=..40,tag=RunicNSTendrilSet,tag=RunicNSTendrilReached,scores={rr.system.BossTick=16}] at @s run summon item_display ~-0.9 ~ ~ {item_display:"head",Tags:["rr.boss.ns.ticking","RunicNSTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,distance=..40,tag=RunicNSTendrilSet,tag=RunicNSTendrilReached,scores={rr.system.BossTick=21}] at @s run summon item_display ~ ~ ~-0.9 {item_display:"head",Tags:["rr.boss.ns.ticking","RunicNSTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}

execute as @e[type=item_display,distance=..45,tag=RunicNSTendrilStand,scores={rr.system.BossTick=..30}] at @s run particle crit ~ ~0.25 ~ 0.2 0 0.2 0.002 1 force @a[distance=..80]
execute as @e[type=item_display,distance=..45,tag=RunicNSTendrilStand,scores={rr.system.BossTick=30}] at @s run playsound minecraft:entity.player.hurt_sweet_berry_bush hostile @a[distance=..50] ~ ~ ~ 0.8 0.8 0
execute as @e[type=item_display,distance=..45,tag=RunicNSTendrilStand,scores={rr.system.BossTick=31}] at @s run tp @s ~ ~1.8 ~
execute as @e[type=item_display,distance=..45,tag=RunicNSTendrilStand,scores={rr.system.BossTick=30..32}] at @s positioned ~ ~0.1 ~ run execute as @e[type=!#rr_recast:spell_ignore,distance=..1,tag=!RunicNSSkel] run damage @s 20 minecraft:mob_projectile by @e[type=item_display,limit=1,sort=nearest,tag=RunicNSTendrilStand,distance=..4] from @e[type=marker,tag=rr.boss,limit=1,sort=nearest,distance=..50]
execute as @e[type=item_display,distance=..45,tag=RunicNSTendrilStand,scores={rr.system.BossTick=38..44}] at @s run tp @s ~ ~-0.4 ~
execute as @e[type=item_display,distance=..45,tag=RunicNSTendrilStand,scores={rr.system.BossTick=45}] at @s run kill @s

execute as @e[type=marker,tag=RunicNSTendrilSet,tag=RunicNSTendrilReached] unless score @s rr.system.BossTick matches 1.. at @s if entity @p[distance=..0.5] run playsound minecraft:entity.warden.sonic_charge hostile @a[distance=..40] ~ ~ ~ 0.6 1.4 0
execute as @e[type=marker,tag=RunicNSTendrilSet,tag=RunicNSTendrilReached,scores={rr.system.BossTick=30..}] at @s run kill @s
#endregion


execute as @e[type=marker,tag=RunicNSTendrilSet2,tag=RunicNSTendrilReached2,scores={rr.system.BossTick=1}] at @s run summon item_display ~ ~ ~ {item_display:"head",Tags:["rr.boss.ns.ticking","RunicNSTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSTendrilSet2,tag=RunicNSTendrilReached2,scores={rr.system.BossTick=11}] at @s run summon item_display ~1.2 ~ ~ {item_display:"head",Tags:["rr.boss.ns.ticking","RunicNSTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSTendrilSet2,tag=RunicNSTendrilReached2,scores={rr.system.BossTick=21}] at @s run summon item_display ~ ~ ~1.2 {item_display:"head",Tags:["rr.boss.ns.ticking","RunicNSTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSTendrilSet2,tag=RunicNSTendrilReached2,scores={rr.system.BossTick=31}] at @s run summon item_display ~-1.2 ~ ~ {item_display:"head",Tags:["rr.boss.ns.ticking","RunicNSTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSTendrilSet2,tag=RunicNSTendrilReached2,scores={rr.system.BossTick=41}] at @s run summon item_display ~ ~ ~-1.2 {item_display:"head",Tags:["rr.boss.ns.ticking","RunicNSTendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}

execute as @e[type=marker,tag=RunicNSTendrilSet2,tag=RunicNSTendrilReached2] unless score @s rr.system.BossTick matches 1.. at @s run playsound minecraft:entity.warden.sonic_charge hostile @a[distance=..40] ~ ~ ~ 0.6 1.2 0
execute as @e[type=marker,tag=RunicNSTendrilSet2,tag=RunicNSTendrilReached2,scores={rr.system.BossTick=42..}] at @s run kill @s


#endregion

## Warning
##execute as @e[type=marker,tag=RunicNSLaserB,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker/laser_particle_b

## Firing
##execute as @e[type=marker,tag=rr.boss,scores={rr.system.BossTick=1440..2010},distance=..4] at @s run function rr_recast:boss/necrosculker_main/necrosculker/laser_function_b

##kill @e[type=marker,tag=RunicNSLaserMB,scores={rr.system.BossTick=3..},distance=..40]

#endregion

# At 1680, after the two volleys of lasers complete, the boss will reset its patterns and return to 100. (99 here because it ticks up at the top of the function)
execute as @s[scores={rr.system.BossTick=1530..1540}] at @s run scoreboard players set @s rr.system.BossTick 99

# At 1720 (only reached if a player has a very low Mind Strength stat), face the player with the lowest Mind Strength stat and deal catastrophic damage to them, turning them into a Lost Soul