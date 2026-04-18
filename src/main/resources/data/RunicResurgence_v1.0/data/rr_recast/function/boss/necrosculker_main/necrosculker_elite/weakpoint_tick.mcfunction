# Weakpoint spawning and scoreboard management
execute as @s[tag=RunicNSEWeakpoint,tag=rr.boss.ns_elite.ticking,scores={rr.system.BossTick=10..38}] at @s run particle sculk_charge{roll:0} ~ ~0.5 ~ 0.25 0.25 0.25 0.08 2 force @a[distance=..50]
execute as @s[tag=RunicNSEWeakpoint,tag=rr.boss.ns_elite.ticking,scores={rr.system.BossTick=10}] at @s run playsound minecraft:block.sculk.place hostile @a[distance=..50] ~ ~ ~ 1.5 0.8 0
execute as @s[tag=rr.boss.ns_elite.weakpoint,tag=rr.boss.ns_elite.ticking,scores={rr.system.BossTick=10..29}] at @s run tp @s ~ ~0.05 ~
execute as @s[tag=rr.boss.ns_elite.weakpoint,tag=rr.boss.ns_elite.ticking,scores={rr.system.BossTick=10..29}] at @s positioned ~ ~0.5 ~ align y run particle block{block_state:sculk} ~ ~2.6 ~ 0.3 0 0.3 0.1 1 force @a[distance=..60]
execute as @s[tag=rr.boss.ns_elite.weakpoint,tag=rr.boss.ns_elite.ticking,scores={rr.system.BossTick=30}] run tag @s remove rr.boss.ns_elite.ticking
# Damage calculation
execute as @s[tag=RunicNSEWeakpointZ] store result score @s rr.system.NSRootHP run data get entity @s Health
execute as @s[tag=RunicNSEWeakpointZ] at @s if score @s rr.math.A matches 1.. if score @s rr.system.NSRootHP < @s rr.math.A run scoreboard players operation @s rr.math.B = @s rr.math.A
execute as @s[tag=RunicNSEWeakpointZ] at @s if score @s rr.math.B matches 1.. run scoreboard players operation @s rr.math.B -= @s rr.system.NSRootHP
execute as @s[tag=RunicNSEWeakpointZ] at @s if score @s rr.math.B matches 1.. run scoreboard players set @s rr.math.C 8
execute as @s[tag=RunicNSEWeakpointZ] at @s if score @s rr.math.B matches 1.. run scoreboard players operation @s rr.math.B /= @s rr.math.C
execute as @s[tag=RunicNSEWeakpointZ] at @s if score @s rr.math.B matches 1.. run scoreboard players operation @s rr.boss.weakpoint_damage += @s rr.math.B
execute as @s[tag=RunicNSEWeakpointZ] store result score @s rr.math.A run data get entity @s Health
execute as @s[tag=RunicNSEWeakpointZ,scores={rr.math.B=1..}] at @s run scoreboard players operation @n[tag=rr.boss,tag=RunicNSECore,scores={rr.system.BossHealth=1..},distance=..30] rr.system.BossHealth -= @s rr.math.B
execute as @s[tag=RunicNSEWeakpointZ,scores={rr.math.B=1..}] at @s run scoreboard players operation @n[tag=rr.boss,tag=RunicNSECore,scores={rr.system.BossHealth=1..},distance=..30,tag=RunicNSLookOther] rr.system.BossDmg += @s rr.math.B
execute as @s[tag=RunicNSEWeakpointZ,scores={rr.math.B=1..}] at @s run playsound minecraft:entity.warden.hurt hostile @a[distance=..50] ~ ~1 ~ 0.8 0.85 0
execute as @s[tag=RunicNSEWeakpointZ,scores={rr.math.B=1..}] at @s run playsound minecraft:block.honey_block.place hostile @a[distance=..50] ~ ~1 ~ 1.1 0.9 0
execute as @s[tag=RunicNSEWeakpointZ,scores={rr.math.B=1..}] at @s run particle sculk_soul ~ ~1 ~ 0.66 0.66 0.66 0.08 4 force @a[distance=..80]
execute as @s[tag=RunicNSEWeakpointZ,scores={rr.math.B=1..}] at @s run execute as @p unless entity @s[predicate=!rr_recast:armor_items/mending_helmet,predicate=!rr_recast:armor_items/mending_chestplate,predicate=!rr_recast:armor_items/mending_leggings,predicate=!rr_recast:armor_items/mending_boots] run summon experience_orb ~ ~1.125 ~ {Value:1}
execute as @s[tag=RunicNSEWeakpointZ,scores={rr.math.B=1..,rr.system.BossTick=20..210},tag=!rr.boss.necrosculker_dmg_cooldown] at @s run tag @s add rr.boss.necrosculker_dmg_cooldown
execute as @s[tag=RunicNSEWeakpointZ,scores={rr.math.B=1..}] at @s run scoreboard players set @s rr.math.B 0
# If Weakpoint takes 5% of Boss's total health (after reduction) then temporarily remove it and summon Sculk Tendrils
execute as @s[tag=RunicNSEWeakpointZ,scores={rr.boss.weakpoint_damage=100..}] at @s run scoreboard players remove @n[tag=rr.boss,distance=..40] rr.system.BossHealth 100
execute as @s[tag=RunicNSEWeakpointZ,scores={rr.boss.weakpoint_damage=100..}] at @s run execute as @n[type=item_display,tag=rr.boss.ns_elite.weakpoint,distance=..4] at @s run function rr_recast:boss/necrosculker_main/necrosculker_elite/clear_weakpoint
execute as @s[tag=RunicNSEWeakpoint,scores={rr.system.BossTick=300..338}] at @s run particle sculk_charge{roll:0} ~ ~0.5 ~ 0.25 0.25 0.25 0.08 8 force @a[distance=..50]
execute as @s[tag=RunicNSEWeakpoint,scores={rr.system.BossTick=300}] at @s run playsound minecraft:block.sculk.place hostile @a[distance=..50] ~ ~ ~ 1.5 0.8 0
execute as @s[tag=rr.boss.ns_elite.weakpoint,tag=rr.boss.ns_elite.ticking,scores={rr.system.BossTick=300..330}] at @s run tp @s ~ ~-0.05 ~
execute as @s[tag=rr.boss.ns_elite.weakpoint,tag=rr.boss.ns_elite.ticking,scores={rr.system.BossTick=300..330}] at @s align y run particle block{block_state:sculk} ~ ~0.5 ~ 0.2 0 0.2 0.1 1 force @a[distance=..60]
execute as @s[tag=RunicNSEWeakpoint,scores={rr.system.BossTick=600..}] at @s positioned ~ ~2.8 ~ run function rr_recast:boss/necrosculker_main/necrosculker_elite/summon_weakpoint
execute as @s[tag=RunicNSEWeakpoint,scores={rr.system.BossTick=600..}] run kill @s