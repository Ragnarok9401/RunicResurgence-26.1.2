# At 300, create warning lines for 6 directions that mark where Sculk Lasers will shoot out. After 3 seconds of warning, the lasers fire. Three of these will be higher up and three will be lower down at the ground. The lasers need to be either ducked beneath (sneaking) or jumped over. This will last for 12 seconds (not including the warning), starting at 360 and lasting until 840.
#region
## Note: Laser A = the first wave of lasers (thin ones, must jump over OR duck beneath)
##       Laser B = the second wave of lasers (tall ones, cannot jump over or duck beneath)
##       Top X = one of the top lasers that must be ducked beneath
##       Bottom X = one of the bottom lasers that must be jumped over

## Summon / Setup
execute as @s[scores={rr.system.BossTick=370}] at @s run summon marker ~ ~0.4 ~ {Tags:[rr.boss.ns_void.ticking,"RunicNSULaserATop1","RunicNSULaserATop","RunicNSULaserA","RunicNSULaser"]}
execute as @s[scores={rr.system.BossTick=370}] at @s run summon marker ~ ~0.4 ~ {Tags:[rr.boss.ns_void.ticking,"RunicNSULaserATop2","RunicNSULaserATop","RunicNSULaserA","RunicNSULaser"]}
execute as @s[scores={rr.system.BossTick=370}] at @s run summon marker ~ ~0.4 ~ {Tags:[rr.boss.ns_void.ticking,"RunicNSULaserATop3","RunicNSULaserATop","RunicNSULaserA","RunicNSULaser"]}
execute as @s[scores={rr.system.BossTick=370}] at @s run summon marker ~ ~-1.45 ~ {Tags:[rr.boss.ns_void.ticking,"RunicNSULaserABottom1","RunicNSULaserABottom","RunicNSULaserA","RunicNSULaser"]}
execute as @s[scores={rr.system.BossTick=370}] at @s run summon marker ~ ~-1.45 ~ {Tags:[rr.boss.ns_void.ticking,"RunicNSULaserABottom2","RunicNSULaserABottom","RunicNSULaserA","RunicNSULaser"]}
execute as @s[scores={rr.system.BossTick=370}] at @s run summon marker ~ ~-1.45 ~ {Tags:[rr.boss.ns_void.ticking,"RunicNSULaserABottom3","RunicNSULaserABottom","RunicNSULaserA","RunicNSULaser"]}

execute as @s[scores={rr.system.BossTick=370}] at @s positioned ~ ~0.4 ~ run tp @e[type=marker,tag=RunicNSULaserATop1,distance=..4] ~ ~ ~ 0 0
execute as @s[scores={rr.system.BossTick=370}] at @s positioned ~ ~0.4 ~ run tp @e[type=marker,tag=RunicNSULaserATop2,distance=..4] ~ ~ ~ 120 0
execute as @s[scores={rr.system.BossTick=370}] at @s positioned ~ ~0.4 ~ run tp @e[type=marker,tag=RunicNSULaserATop3,distance=..4] ~ ~ ~ -120 0
execute as @s[scores={rr.system.BossTick=370}] at @s positioned ~ ~-1.45 ~ run tp @e[type=marker,tag=RunicNSULaserABottom1,distance=..4] ~ ~ ~ 60 0
execute as @s[scores={rr.system.BossTick=370}] at @s positioned ~ ~-1.45 ~ run tp @e[type=marker,tag=RunicNSULaserABottom2,distance=..4] ~ ~ ~ 180 0
execute as @s[scores={rr.system.BossTick=370}] at @s positioned ~ ~-1.45 ~ run tp @e[type=marker,tag=RunicNSULaserABottom3,distance=..4] ~ ~ ~ -60 0

## Warning
## Separate function
execute as @e[type=marker,tag=RunicNSULaserA,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/laser_particle_a

## Firing
## Separate functions
execute as @e[type=marker,tag=rr.boss,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/laser_function_a_top
execute as @e[type=marker,tag=rr.boss,distance=..40] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/laser_function_a_bottom

kill @e[type=marker,tag=RunicNSULaserMTop,scores={rr.system.BossTick=4..},distance=..40]
kill @e[type=marker,tag=RunicNSULaserMBot,scores={rr.system.BossTick=4..},distance=..40]

#endregion

# At 920, half a second after the lasers stop, the boss will be weakened, and pods of Sculk Roots will appear in set positions around the arena. Players may damage these in order to regain Mind Health and damage the boss.
#region
## Particles and sounds for finishing laser attack and becoming "tired"
execute as @s[scores={rr.system.BossTick=920}] at @s run playsound minecraft:entity.warden.hurt hostile @a[distance=..50] ~ ~ ~ 1.4 0.6 0
execute as @s[scores={rr.system.BossTick=920}] at @s run playsound minecraft:entity.wither.hurt hostile @a[distance=..50] ~ ~ ~ 1 0.6 0
execute as @s[scores={rr.system.BossTick=920}] at @s run playsound minecraft:entity.wither.spawn hostile @a[distance=..50] ~ ~ ~ 1 0.6 0
execute as @s[scores={rr.system.BossTick=920}] at @s run particle sculk_soul ~ ~ ~ 2 2 2 0.08 40 force @a[distance=..50]

## Make the boss physically look tired
execute as @s[scores={rr.system.BossTick=920}] at @s run tag @s add RunicNSULookOther
execute as @s[scores={rr.system.BossTick=920}] at @s rotated as @e[tag=RunicNSUHead1,limit=2,sort=nearest,distance=..3] run tp @s ~ ~ ~ ~ 0
execute as @s[scores={rr.system.BossTick=920..1020}] at @s run execute as @e[tag=RunicNSUHead,limit=2,sort=nearest,distance=..3] at @s run data modify entity @s transformation set value {translation:[0.0f,-0.25f,1.25f],left_rotation:[0.25f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f]}

## Summon the Sculk Roots around the arena
execute as @s[scores={rr.system.BossTick=920}] at @s run scoreboard players set @s rr.system.BossDmg 0
execute as @s[scores={rr.system.BossTick=920}] store result entity @s data.rr_recast.pod_position.x float 0.1 run random value -150..150
execute as @s[scores={rr.system.BossTick=920}] store result entity @s data.rr_recast.pod_position.z float 0.1 run random value -150..150
execute as @s[scores={rr.system.BossTick=920}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_root_pod_macro with entity @s data.rr_recast.pod_position
execute as @s[scores={rr.system.BossTick=920}] store result entity @s data.rr_recast.pod_position.x float 0.1 run random value -150..150
execute as @s[scores={rr.system.BossTick=920}] store result entity @s data.rr_recast.pod_position.z float 0.1 run random value -150..150
execute as @s[scores={rr.system.BossTick=920}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_root_pod_macro with entity @s data.rr_recast.pod_position
execute as @s[scores={rr.system.BossTick=920}] store result entity @s data.rr_recast.pod_position.x float 0.1 run random value -150..150
execute as @s[scores={rr.system.BossTick=920}] store result entity @s data.rr_recast.pod_position.z float 0.1 run random value -150..150
execute as @s[scores={rr.system.BossTick=920}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_root_pod_macro with entity @s data.rr_recast.pod_position
execute as @s[scores={rr.system.BossTick=920}] store result entity @s data.rr_recast.pod_position.x float 0.1 run random value -150..150
execute as @s[scores={rr.system.BossTick=920}] store result entity @s data.rr_recast.pod_position.z float 0.1 run random value -150..150
execute as @s[scores={rr.system.BossTick=920}] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/summon_root_pod_macro with entity @s data.rr_recast.pod_position
execute as @s[scores={rr.system.BossTick=920..928}] at @s run execute as @e[tag=RunicNSURootPod,scores={rr.system.BossTick=1}] at @s run particle sculk_charge{roll:0} ~ ~2.6 ~ 1 1 1 0.08 25 force @a[distance=..50]
execute as @s[scores={rr.system.BossTick=920..928}] at @s run execute as @e[tag=RunicNSURootPod,scores={rr.system.BossTick=1}] at @s run playsound minecraft:block.sculk.place hostile @a[distance=..50] ~ ~ ~ 1.5 0.8 0
execute as @s[scores={rr.system.BossTick=920..940}] at @s run execute as @e[tag=RunicNSURP,limit=8,sort=nearest,distance=..18] at @s run tp @s ~ ~0.05 ~
execute as @s[scores={rr.system.BossTick=920..940}] at @s run execute as @e[tag=RunicNSURP,limit=8,sort=nearest,distance=..18] at @s align y run particle block{block_state:sculk} ~ ~2.6 ~ 0.3 0 0.3 0.1 1 force @a[distance=..60]

## Scoreboard management for health removal
execute as @e[tag=RunicNSURootPodZ] store result score @s rr.system.NSRootHP run data get entity @s Health
execute as @e[tag=RunicNSURootPodZ] at @s if score @s rr.math.A matches 1.. if score @s rr.system.NSRootHP < @s rr.math.A run scoreboard players operation @s rr.math.B = @s rr.math.A
execute as @e[tag=RunicNSURootPodZ] at @s if score @s rr.math.B matches 1.. run scoreboard players operation @s rr.math.B -= @s rr.system.NSRootHP
execute as @e[tag=RunicNSURootPodZ] store result score @s rr.math.A run data get entity @s Health
execute as @e[tag=RunicNSURootPodZ,scores={rr.math.B=1..}] at @s run scoreboard players operation @e[tag=rr.boss,tag=RunicNSUCore,scores={rr.system.BossHealth=1..},limit=1,sort=nearest] rr.system.BossHealth -= @s rr.math.B
execute as @e[tag=RunicNSURootPodZ,scores={rr.math.B=1..}] at @s run scoreboard players operation @e[tag=rr.boss,tag=RunicNSUCore,scores={rr.system.BossHealth=1..},limit=1,sort=nearest,tag=RunicNSULookOther] rr.system.BossDmg += @s rr.math.B
execute as @e[tag=RunicNSURootPodZ,scores={rr.math.B=1..}] at @s run playsound minecraft:entity.warden.hurt hostile @a[distance=..50] ~ ~1 ~ 1.3 0.5 0
execute as @e[tag=RunicNSURootPodZ,scores={rr.math.B=1..}] at @s run playsound minecraft:block.honey_block.place hostile @a[distance=..50] ~ ~1 ~ 1.4 0.8 0
execute as @e[tag=RunicNSURootPodZ,scores={rr.math.B=1..}] at @s run particle sculk_soul ~ ~1.5 ~ 1 1 1 0.08 10 force @a[distance=..80]
execute as @e[tag=RunicNSURootPodZ,scores={rr.math.B=1..}] at @s run execute as @p unless entity @s[predicate=!rr_recast:armor_items/mending_helmet,predicate=!rr_recast:armor_items/mending_chestplate,predicate=!rr_recast:armor_items/mending_leggings,predicate=!rr_recast:armor_items/mending_boots] run summon experience_orb ~ ~1.125 ~ {Value:3}
execute as @e[tag=RunicNSURootPodZ,scores={rr.math.B=1..,rr.system.BossTick=20..210},tag=!rr.boss.necrosculker_dmg_cooldown] at @s run tag @s add rr.boss.necrosculker_dmg_cooldown
execute as @e[tag=RunicNSURootPodZ,scores={rr.math.B=1..}] at @s run scoreboard players set @s rr.math.B 0

## Return the root pods to the ground
execute as @s[scores={rr.system.BossTick=1100..1120}] at @s run execute as @e[tag=RunicNSURP,limit=8,sort=nearest,distance=..18] at @s run tp @s ~ ~-0.05 ~
execute as @s[scores={rr.system.BossTick=1100..1120}] at @s run execute as @e[tag=RunicNSURP,limit=8,sort=nearest,distance=..18] at @s align y run particle block{block_state:sculk} ~ ~2.6 ~ 0.3 0 0.3 0.1 1 force @a[distance=..60]

execute as @e[tag=RunicNSURootPod,scores={rr.system.BossTick=200}] at @s run tp @e[type=zombie,tag=RunicNSURootPodZ,distance=..5] ~ ~-80 ~
execute as @e[tag=RunicNSURootPod,scores={rr.system.BossTick=200}] at @s positioned ~ ~-80 ~ run kill @e[type=zombie,tag=RunicNSURootPodZ,distance=..5]
execute as @e[tag=RunicNSURootPod,scores={rr.system.BossTick=200}] at @s run particle sculk_charge{roll:0} ~ ~1.8 ~ 1 1 1 0.08 10 force @a[distance=..80]
execute as @e[tag=RunicNSURootPod,scores={rr.system.BossTick=200}] at @s run kill @s

## Make the boss look like it's regaining its strength
execute as @s[scores={rr.system.BossTick=1060..1120}] at @s run execute as @e[tag=RunicNSUHead,limit=2,sort=nearest,distance=..3] at @s run data modify entity @s transformation set value {translation:[0.0f,0f,1.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f]}
execute as @s[scores={rr.system.BossTick=1120},tag=RunicNSULookOther] at @s run tag @s remove RunicNSULookOther

#endregion
