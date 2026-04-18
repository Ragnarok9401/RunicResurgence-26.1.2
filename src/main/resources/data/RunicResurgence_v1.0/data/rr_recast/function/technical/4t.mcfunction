
execute as @a[tag=rr.boss.glavier.title_display,scores={rr.boss.title_display=0..20}] run function rr_recast:cutscene/boss_intro/glavier/title_display
execute as @a[tag=rr.boss.xil.title_display,scores={rr.boss.title_display=0..26}] run function rr_recast:cutscene/boss_intro/xil/title_display
execute as @a[tag=rr.boss.deageria.title_display,scores={rr.boss.title_display=0..13}] run function rr_recast:cutscene/boss_intro/deageria/title_display

# Remove rr.boss.necrosculker_dmg_cooldown tag from Sculk Root Pods and damage them a tiny amount to allow them to be hit by player attacks again
execute as @e[tag=rr.boss.necrosculker_dmg_cooldown] at @s run damage @s 0.00001 rr_recast:magic_chaos
execute as @e[tag=rr.boss.necrosculker_dmg_cooldown] at @s run tag @s remove rr.boss.necrosculker_dmg_cooldown

execute in overworld positioned 0 0 0 unless entity @n[distance=..1,type=marker,tag=rr.global,tag=rr.scheduler.4t] run tag @n[distance=..1,type=marker,tag=rr.global] add rr.scheduler.4t
schedule function rr_recast:technical/4t 4t replace