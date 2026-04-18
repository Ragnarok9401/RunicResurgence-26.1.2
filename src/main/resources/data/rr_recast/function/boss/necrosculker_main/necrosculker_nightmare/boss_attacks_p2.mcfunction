# At 300, create warning lines for 6 directions that mark where Sculk Lasers will shoot out. After 3 seconds of warning, the lasers fire. Three of these will be higher up and three will be lower down at the ground. The lasers need to be either ducked beneath (sneaking) or jumped over. This will last for 12 seconds (not including the warning), starting at 360 and lasting until 840.
#region
## Note: Laser A = the first wave of lasers (thin ones, must jump over OR duck beneath)
##       Laser B = the second wave of lasers (tall ones, cannot jump over or duck beneath)
##       Top X = one of the top lasers that must be ducked beneath
##       Bottom X = one of the bottom lasers that must be jumped over

## Summon / Setup
execute as @s[scores={rr.system.BossTick=370}] at @s run summon marker ~ ~0.4 ~ {Tags:["RunicNSNLaserATop1","RunicNSNLaserATop","RunicNSNLaserA","RunicNSNLaser",rr.boss.ns_nightmare.ticking]}
execute as @s[scores={rr.system.BossTick=370}] at @s run summon marker ~ ~0.4 ~ {Tags:["RunicNSNLaserATop2","RunicNSNLaserATop","RunicNSNLaserA","RunicNSNLaser",rr.boss.ns_nightmare.ticking]}
execute as @s[scores={rr.system.BossTick=370}] at @s run summon marker ~ ~0.4 ~ {Tags:["RunicNSNLaserATop3","RunicNSNLaserATop","RunicNSNLaserA","RunicNSNLaser",rr.boss.ns_nightmare.ticking]}
execute as @s[scores={rr.system.BossTick=370}] at @s run summon marker ~ ~-1.45 ~ {Tags:["RunicNSNLaserABottom1","RunicNSNLaserABottom","RunicNSNLaserA","RunicNSNLaser",rr.boss.ns_nightmare.ticking]}
execute as @s[scores={rr.system.BossTick=370}] at @s run summon marker ~ ~-1.45 ~ {Tags:["RunicNSNLaserABottom2","RunicNSNLaserABottom","RunicNSNLaserA","RunicNSNLaser",rr.boss.ns_nightmare.ticking]}
execute as @s[scores={rr.system.BossTick=370}] at @s run summon marker ~ ~-1.45 ~ {Tags:["RunicNSNLaserABottom3","RunicNSNLaserABottom","RunicNSNLaserA","RunicNSNLaser",rr.boss.ns_nightmare.ticking]}

execute as @s[scores={rr.system.BossTick=370}] at @s positioned ~ ~0.4 ~ run tp @e[type=marker,tag=RunicNSNLaserATop1,distance=..4] ~ ~ ~ 0 0
execute as @s[scores={rr.system.BossTick=370}] at @s positioned ~ ~0.4 ~ run tp @e[type=marker,tag=RunicNSNLaserATop2,distance=..4] ~ ~ ~ 120 0
execute as @s[scores={rr.system.BossTick=370}] at @s positioned ~ ~0.4 ~ run tp @e[type=marker,tag=RunicNSNLaserATop3,distance=..4] ~ ~ ~ -120 0
execute as @s[scores={rr.system.BossTick=370}] at @s positioned ~ ~-1.45 ~ run tp @e[type=marker,tag=RunicNSNLaserABottom1,distance=..4] ~ ~ ~ 60 0
execute as @s[scores={rr.system.BossTick=370}] at @s positioned ~ ~-1.45 ~ run tp @e[type=marker,tag=RunicNSNLaserABottom2,distance=..4] ~ ~ ~ 180 0
execute as @s[scores={rr.system.BossTick=370}] at @s positioned ~ ~-1.45 ~ run tp @e[type=marker,tag=RunicNSNLaserABottom3,distance=..4] ~ ~ ~ -60 0


# At 920, half a second after the lasers stop, the boss will be weakened, and pods of Sculk Roots will appear in set positions around the arena. Players may damage these in order to regain Mind Health and damage the boss.
#region
## Particles and sounds for finishing laser attack and becoming "tired"
execute as @s[scores={rr.system.BossTick=920}] at @s run playsound minecraft:entity.warden.hurt hostile @a[distance=..50] ~ ~ ~ 1.4 0.6 0
execute as @s[scores={rr.system.BossTick=920}] at @s run playsound minecraft:entity.wither.hurt hostile @a[distance=..50] ~ ~ ~ 1 0.6 0
execute as @s[scores={rr.system.BossTick=920}] at @s run playsound minecraft:entity.wither.spawn hostile @a[distance=..50] ~ ~ ~ 1 0.6 0
execute as @s[scores={rr.system.BossTick=920}] at @s run particle sculk_soul ~ ~ ~ 2 2 2 0.08 40 force @a[distance=..50]

## Make the boss physically look tired
execute as @s[scores={rr.system.BossTick=920}] at @s run tag @s add RunicNSNLookOther
execute as @s[scores={rr.system.BossTick=920}] at @s rotated as @e[tag=RunicNSNHead1] run tp @s ~ ~ ~ ~ 0
execute as @s[scores={rr.system.BossTick=920..1020},tag=RunicNSNLookOther] at @s run execute as @e[tag=RunicNSNHead,limit=2,sort=nearest] at @s store result score @s rr.math.C run data get entity @s Rotation[1]
execute as @s[scores={rr.system.BossTick=920..1020},tag=RunicNSNLookOther] at @s run execute as @e[tag=RunicNSNHead,limit=2,sort=nearest] at @s unless score @s rr.math.C matches 40 run tp @s ~ ~ ~ ~ ~0.5

## Summon the Sculk Roots around the arena
execute as @s[scores={rr.system.BossTick=920}] at @s run scoreboard players set @s rr.system.BossDmg 0
execute as @s[scores={rr.system.BossTick=920}] store result entity @s data.rr_recast.pod_position.x float 0.1 run random value -150..150
execute as @s[scores={rr.system.BossTick=920}] store result entity @s data.rr_recast.pod_position.z float 0.1 run random value -150..150
execute as @s[scores={rr.system.BossTick=920}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/summon_root_pod_macro with entity @s data.rr_recast.pod_position
execute as @s[scores={rr.system.BossTick=920}] store result entity @s data.rr_recast.pod_position.x float 0.1 run random value -150..150
execute as @s[scores={rr.system.BossTick=920}] store result entity @s data.rr_recast.pod_position.z float 0.1 run random value -150..150
execute as @s[scores={rr.system.BossTick=920}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/summon_root_pod_macro with entity @s data.rr_recast.pod_position
execute as @s[scores={rr.system.BossTick=920}] store result entity @s data.rr_recast.pod_position.x float 0.1 run random value -150..150
execute as @s[scores={rr.system.BossTick=920}] store result entity @s data.rr_recast.pod_position.z float 0.1 run random value -150..150
execute as @s[scores={rr.system.BossTick=920}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/summon_root_pod_macro with entity @s data.rr_recast.pod_position
execute as @s[scores={rr.system.BossTick=920}] store result entity @s data.rr_recast.pod_position.x float 0.1 run random value -150..150
execute as @s[scores={rr.system.BossTick=920}] store result entity @s data.rr_recast.pod_position.z float 0.1 run random value -150..150
execute as @s[scores={rr.system.BossTick=920}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/summon_root_pod_macro with entity @s data.rr_recast.pod_position
execute as @s[scores={rr.system.BossTick=920..928}] at @s run execute as @e[tag=RunicNSNRootPod,scores={rr.system.BossTick=1},distance=..40] at @s run particle sculk_charge{roll:0} ~ ~2.6 ~ 1 1 1 0.08 25 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=920..928}] at @s run execute as @e[tag=RunicNSNRootPod,scores={rr.system.BossTick=1},distance=..40] at @s run playsound minecraft:block.sculk.place hostile @a[distance=..50] ~ ~ ~ 1.5 0.8 0
execute as @s[scores={rr.system.BossTick=920..940}] at @s run execute as @e[tag=RunicNSNRP,limit=8,sort=nearest,distance=..15] at @s run tp @s ~ ~0.05 ~
execute as @s[scores={rr.system.BossTick=920..940}] at @s run execute as @e[tag=RunicNSNRP,limit=8,sort=nearest,distance=..15] at @s align y run particle block{block_state:sculk} ~ ~2.6 ~ 0.3 0 0.3 0.1 1 force @a[distance=..60]


## Return the root pods to the ground
execute as @s[scores={rr.system.BossTick=1100..1120}] at @s run execute as @e[tag=RunicNSNRP,limit=8,sort=nearest,distance=..15] at @s run tp @s ~ ~-0.05 ~
execute as @s[scores={rr.system.BossTick=1100..1120}] at @s run execute as @e[tag=RunicNSNRP,limit=8,sort=nearest,distance=..15] at @s align y run particle block{block_state:sculk} ~ ~2.6 ~ 0.3 0 0.3 0.1 1 force @a[distance=..60]

execute as @e[tag=RunicNSNRootPod,scores={rr.system.BossTick=200}] at @s run tp @e[type=zombie,limit=1,sort=nearest,tag=RunicNSNRootPodZ] ~ ~-80 ~
execute as @e[tag=RunicNSNRootPod,scores={rr.system.BossTick=200}] at @s positioned ~ ~-80 ~ run kill @e[type=zombie,limit=1,sort=nearest,tag=RunicNSNRootPodZ]
execute as @e[tag=RunicNSNRootPod,scores={rr.system.BossTick=200}] at @s run particle sculk_charge{roll:0} ~ ~1.8 ~ 1 1 1 0.08 10 force @a[distance=..80]
execute as @e[tag=RunicNSNRootPod,scores={rr.system.BossTick=200}] at @s run kill @s

## Make the boss look like it's regaining its strength
execute as @s[scores={rr.system.BossTick=1060..1120},tag=RunicNSNLookOther] at @s run execute as @e[tag=RunicNSNHead,limit=2,sort=nearest] at @s store result score @s rr.math.C run data get entity @s Rotation[1]
execute as @s[scores={rr.system.BossTick=1060..1120},tag=RunicNSNLookOther] at @s run execute as @e[tag=RunicNSNHead,limit=2,sort=nearest] at @s unless score @s rr.math.C matches 0 run tp @s ~ ~ ~ ~ ~-1
execute as @s[scores={rr.system.BossTick=1120},tag=RunicNSNLookOther] at @s run tag @s remove RunicNSNLookOther

#endregion