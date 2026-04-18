
execute as @e[type=marker,tag=RunicNSETendrilSet2,tag=RunicNSETendrilReached2,tag=!RunicNSETendrilOther,scores={rr.system.BossTick=1}] at @s run summon item_display ~ ~ ~ {item_display:"head",Tags:["rr.boss.ns_elite.ticking","RunicNSETendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSETendrilSet2,tag=RunicNSETendrilReached2,tag=!RunicNSETendrilOther,scores={rr.system.BossTick=11}] at @s run summon item_display ~1.2 ~ ~ {item_display:"head",Tags:["rr.boss.ns_elite.ticking","RunicNSETendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSETendrilSet2,tag=RunicNSETendrilReached2,tag=!RunicNSETendrilOther,scores={rr.system.BossTick=21}] at @s run summon item_display ~ ~ ~1.2 {item_display:"head",Tags:["rr.boss.ns_elite.ticking","RunicNSETendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSETendrilSet2,tag=RunicNSETendrilReached2,tag=!RunicNSETendrilOther,scores={rr.system.BossTick=31}] at @s run summon item_display ~-1.2 ~ ~ {item_display:"head",Tags:["rr.boss.ns_elite.ticking","RunicNSETendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSETendrilSet2,tag=RunicNSETendrilReached2,tag=!RunicNSETendrilOther,scores={rr.system.BossTick=41}] at @s run summon item_display ~ ~ ~-1.2 {item_display:"head",Tags:["rr.boss.ns_elite.ticking","RunicNSETendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSETendrilSet2,tag=RunicNSETendrilReached2,tag=!RunicNSETendrilOther,scores={rr.system.BossTick=51}] at @s run summon item_display ~1.2 ~ ~-1.2 {item_display:"head",Tags:["rr.boss.ns_elite.ticking","RunicNSETendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSETendrilSet2,tag=RunicNSETendrilReached2,tag=!RunicNSETendrilOther,scores={rr.system.BossTick=61}] at @s run summon item_display ~-1.2 ~ ~-1.2 {item_display:"head",Tags:["rr.boss.ns_elite.ticking","RunicNSETendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSETendrilSet2,tag=RunicNSETendrilReached2,tag=!RunicNSETendrilOther,scores={rr.system.BossTick=71}] at @s run summon item_display ~1.2 ~ ~1.2 {item_display:"head",Tags:["rr.boss.ns_elite.ticking","RunicNSETendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}
execute as @e[type=marker,tag=RunicNSETendrilSet2,tag=RunicNSETendrilReached2,tag=!RunicNSETendrilOther,scores={rr.system.BossTick=81}] at @s run summon item_display ~-1.2 ~ ~1.2 {item_display:"head",Tags:["rr.boss.ns_elite.ticking","RunicNSETendrilStand"],item:{id:"minecraft:pointed_dripstone",count:1,components:{item_model:"rr_recast:boss/necrosculker/attacks/massive_sculk_tendril"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-1.0,0]},teleport_duration:1}

execute as @e[type=marker,tag=RunicNSETendrilSet2,tag=RunicNSETendrilReached2] unless score @s rr.system.BossTick matches 1.. at @s run playsound minecraft:entity.warden.sonic_charge hostile @a[distance=..40] ~ ~ ~ 0.6 1.2 0
execute as @e[type=marker,tag=RunicNSETendrilSet2,tag=RunicNSETendrilReached2,scores={rr.system.BossTick=81..}] at @s run kill @s

## Reset the Head position of the boss and remove the LookOther tag
execute as @s[scores={rr.system.BossTick=1380..1400},tag=RunicNSELookOther] at @s run execute as @e[tag=RunicNSEHead,limit=2,sort=nearest] at @s store result score @s rr.math.C run data get entity @s Rotation[1]
execute as @s[scores={rr.system.BossTick=1380..1400},tag=RunicNSELookOther] at @s run execute as @e[tag=RunicNSEHead,limit=2,sort=nearest] at @s unless score @s rr.math.C matches 0 run tp @s ~ ~ ~ ~ ~0.8
execute as @s[scores={rr.system.BossTick=1400},tag=RunicNSELookOther] at @s run tag @s remove RunicNSELookOther

#endregion

# OR
# At 1080, eight-and-a-half seconds after the boss is weakened, the boss will regain its strength and the roots will disappear. If the boss DOES NOT take 1/4 of its total health in damage in the time that it was weakened, it will just spawn more Ancient Sentinels from the ground to attack nearby players. As well as this, there will be 12 Massive Sculk Tendrills that fire toward players at intervals of 0.75 seconds, or 15 ticks.
#region
## Summoning Markers as the indicators, play a sound as each one summons
execute as @s[scores={rr.system.BossTick=1200}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1200}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1205}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1205}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1210}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1210}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1215}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1215}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1220}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1220}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1225}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1225}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1230}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1230}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1235}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1235}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1240}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1240}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1245}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1245}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1250}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1250}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1255}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1255}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1260}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1260}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1265}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1265}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1270}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1270}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1275}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1275}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1280}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1280}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1285}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1285}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1290}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1290}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1295}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1295}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1300}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1300}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1305}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1305}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1310}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1310}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1315}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1315}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1320}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1320}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1325}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1325}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1330}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1330}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1335}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1335}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1340}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1340}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1345}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1345}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1350}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1350}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
execute as @s[scores={rr.system.BossTick=1355}] at @n[type=item_display,tag=RunicNSEHead1,distance=..4] positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["RunicNSETendril"]}
execute as @s[scores={rr.system.BossTick=1355}] at @s run playsound minecraft:entity.warden.attack_impact hostile @a[distance=..40] ^ ^ ^3 1.6 1 0
#endregion

# At 1400, summon 6 Ancient Sentinels with no drops around the Sculker
#region

## Warning
execute as @s[scores={rr.system.BossTick=1340..1400}] at @s positioned ~ ~-0.75 ~6 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1340..1400}] at @s positioned ~ ~-0.75 ~-6 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1340..1400}] at @s positioned ~4 ~-0.75 ~4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1340..1400}] at @s positioned ~-4 ~-0.75 ~4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1340..1400}] at @s positioned ~4 ~-0.75 ~-4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]
execute as @s[scores={rr.system.BossTick=1340..1400}] at @s positioned ~-4 ~-0.75 ~-4 run particle end_rod ~ ~ ~ 0.25 1 0.25 0.0025 1 force @a[distance=..60]

execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~4 ~-0.75 ~4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~-4 ~-0.75 ~4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~ ~-0.75 ~6 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~ ~-0.75 ~-6 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~4 ~-0.75 ~-4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~-4 ~-0.75 ~-4 run playsound minecraft:block.enchantment_table.use hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0

execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~ ~-0.75 ~6 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~ ~-0.75 ~-6 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~4 ~-0.75 ~4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~-4 ~-0.75 ~4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0
execute as @s[scores={rr.system.BossTick=1342}] at @s positioned ~-4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton_horse.ambient hostile @a[distance=..60] ~ ~ ~ 0.8 0.75 0

## Summon two sets of three Crypt Keepers
execute as @s[scores={rr.system.BossTick=1400}] at @s store result score @s rr.math.index run random value 0..5
execute as @s[scores={rr.system.BossTick=1401}] at @s positioned ~ ~-1.45 ~-6 run function rr_recast:boss/necrosculker_main/necrosculker_elite/summon_keeper
execute as @s[scores={rr.system.BossTick=1403}] at @s positioned ~ ~-1.45 ~6 run function rr_recast:boss/necrosculker_main/necrosculker_elite/summon_keeper
execute as @s[scores={rr.system.BossTick=1405}] at @s positioned ~4 ~-1.45 ~4 run function rr_recast:boss/necrosculker_main/necrosculker_elite/summon_keeper
execute as @s[scores={rr.system.BossTick=1406}] at @s store result score @s rr.math.index run random value 0..5
execute as @s[scores={rr.system.BossTick=1407}] at @s positioned ~-4 ~-1.45 ~4 run function rr_recast:boss/necrosculker_main/necrosculker_elite/summon_keeper
execute as @s[scores={rr.system.BossTick=1409}] at @s positioned ~4 ~-1.45 ~-4 run function rr_recast:boss/necrosculker_main/necrosculker_elite/summon_keeper
execute as @s[scores={rr.system.BossTick=1411}] at @s positioned ~-4 ~-1.45 ~-4 run function rr_recast:boss/necrosculker_main/necrosculker_elite/summon_keeper

execute as @s[scores={rr.system.BossTick=1401}] at @s positioned ~ ~-0.75 ~6 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1403}] at @s positioned ~ ~-0.75 ~-6 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1405}] at @s positioned ~4 ~-0.75 ~4 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1407}] at @s positioned ~-4 ~-0.75 ~4 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1409}] at @s positioned ~4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
execute as @s[scores={rr.system.BossTick=1411}] at @s positioned ~-4 ~-0.75 ~-4 run playsound minecraft:entity.skeleton.converted_to_stray hostile @a[distance=..60] ~ ~ ~ 1.2 0.75 0
#endregion


# At 1440, a Tendril Wave Marker will spawn that will control randomized waves of Sculk Tendrils that appear and move in different patterns.
# Such patterns include:
# - Rows of them in straight lines sweeping across the arena, with a random gap in the row that must be moved to in order to avoid damage
# - Two rows that split from the boss in a random angle, may be jumped over
# - A circle that moves outward from the boss, may be jumped over
# - A circle that moves inward from the arena edge, with a random gap in the ring that must be moved to in order to avoid damage
# - A line centered at the boss which rotates around the boss (Tier 3+)
# - Three random points selected, one massive tendril spikes up and propagates a ring of smaller Tendrils at each point (Tier 4)
# Patterns have random offsets and speeds (within reasonable limits), and each tendril does more damage than the clusters that spawn and move toward random players
#region
execute as @s[scores={rr.system.BossTick=1440}] at @s run summon marker ~ ~ ~ {Tags:[rr.boss.ns_elite.ticking,"rr.boss.ns_elite.tendril_wave","rr.boss.ns_elite.tendril_wave.main"]}