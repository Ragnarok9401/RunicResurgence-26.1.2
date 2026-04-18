# Weakpoint spawning and scoreboard management
execute as @s[tag=RunicNSWeakpoint,tag=rr.boss.ns.ticking,scores={rr.system.BossTick=10..38}] at @s run particle sculk_charge{roll:0} ~ ~0.5 ~ 0.25 0.25 0.25 0.08 2 force @a[distance=..50]
execute as @s[tag=RunicNSWeakpoint,tag=rr.boss.ns.ticking,scores={rr.system.BossTick=10}] at @s run playsound minecraft:block.sculk.place hostile @a[distance=..50] ~ ~ ~ 1.5 0.8 0
execute as @s[tag=rr.boss.ns.weakpoint,tag=rr.boss.ns.ticking,scores={rr.system.BossTick=10..29}] at @s run tp @s ~ ~0.05 ~
execute as @s[tag=rr.boss.ns.weakpoint,tag=rr.boss.ns.ticking,scores={rr.system.BossTick=10..29}] at @s positioned ~ ~0.5 ~ align y run particle block{block_state:sculk} ~ ~2.6 ~ 0.3 0 0.3 0.1 1 force @a[distance=..60]
execute as @s[tag=rr.boss.ns.weakpoint,tag=rr.boss.ns.ticking,scores={rr.system.BossTick=30}] run tag @s remove rr.boss.ns.ticking

# Damage calculation
execute as @s[tag=RunicNSWeakpointZ] at @s run function rr_recast:boss/necrosculker_main/necrosculker/weakpoint_dmg

# If Weakpoint takes 8% of Boss's total health (after reduction) then temporarily remove it and summon Sculk Tendrils
execute as @s[tag=RunicNSWeakpointZ,scores={rr.boss.weakpoint_damage=88..}] at @s run scoreboard players remove @n[tag=rr.boss,distance=..40] rr.system.BossHealth 88
execute as @s[tag=RunicNSWeakpointZ,scores={rr.boss.weakpoint_damage=88..}] at @s run execute as @n[type=item_display,tag=rr.boss.ns.weakpoint,distance=..4] at @s run function rr_recast:boss/necrosculker_main/necrosculker/clear_weakpoint
execute as @s[tag=RunicNSWeakpoint,scores={rr.system.BossTick=300..338}] at @s run particle sculk_charge{roll:0} ~ ~0.5 ~ 0.25 0.25 0.25 0.08 8 force @a[distance=..50]
execute as @s[tag=RunicNSWeakpoint,scores={rr.system.BossTick=300}] at @s run playsound minecraft:block.sculk.place hostile @a[distance=..50] ~ ~ ~ 1.5 0.8 0
execute as @s[tag=rr.boss.ns.weakpoint,tag=rr.boss.ns.ticking,scores={rr.system.BossTick=300..330}] at @s run tp @s ~ ~-0.05 ~
execute as @s[tag=rr.boss.ns.weakpoint,tag=rr.boss.ns.ticking,scores={rr.system.BossTick=300..330}] at @s align y run particle block{block_state:sculk} ~ ~0.5 ~ 0.2 0 0.2 0.1 1 force @a[distance=..60]
execute as @s[tag=RunicNSWeakpoint,scores={rr.system.BossTick=600..}] at @s positioned ~ ~2.8 ~ run function rr_recast:boss/necrosculker_main/necrosculker/summon_weakpoint
execute as @s[tag=RunicNSWeakpoint,scores={rr.system.BossTick=600..}] run kill @s