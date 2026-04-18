
execute as @a[tag=rr.boss.glavier_final.title_display,scores={rr.boss.title_display=0..28}] run function rr_recast:cutscene/boss_intro/glavier_final/title_display
execute as @a[tag=rr.boss.xil_final.title_display,scores={rr.boss.title_display=0..27}] run function rr_recast:cutscene/boss_intro/xil_final/title_display

# Siphon Aura damage and effects for Necrosculker
# Nightmare
execute as @a at @s if entity @n[type=item_display,tag=rr.boss.ns_nightmare.siphon_aura,distance=..3.5] if entity @n[type=marker,tag=rr.boss,tag=!rr.boss.is_dead,distance=..30] run damage @s 3 rr_recast:magic_darkness by @n[tag=rr.boss,distance=..40]
execute as @a at @s if entity @n[type=item_display,tag=rr.boss.ns_nightmare.siphon_aura,distance=..3.5] if entity @n[type=marker,tag=rr.boss,tag=!rr.boss.is_dead,distance=..30] run scoreboard players add @n[tag=rr.boss,distance=..40] rr.system.BossHealth 5
# Void
execute as @a at @s if entity @n[type=item_display,tag=rr.boss.ns_void.siphon_aura,distance=..3.6] if entity @n[type=marker,tag=rr.boss,tag=!rr.boss.is_dead,distance=..30] run damage @s 4.5 rr_recast:magic_darkness by @n[tag=rr.boss,distance=..40]
execute as @a at @s if entity @n[type=item_display,tag=rr.boss.ns_void.siphon_aura,distance=..3.6] if entity @n[type=marker,tag=rr.boss,tag=!rr.boss.is_dead,distance=..30] run scoreboard players add @n[tag=rr.boss,distance=..40] rr.system.BossHealth 8

execute in overworld positioned 0 0 0 unless entity @n[distance=..1,type=marker,tag=rr.global,tag=rr.scheduler.5t] run tag @n[distance=..1,type=marker,tag=rr.global] add rr.scheduler.5t
schedule function rr_recast:technical/5t 5t replace