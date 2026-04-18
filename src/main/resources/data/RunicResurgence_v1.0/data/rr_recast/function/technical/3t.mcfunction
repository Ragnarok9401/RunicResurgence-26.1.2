execute as @a at @s run execute as @e[type=interaction,tag=rr.runic_table.slot,distance=..10,limit=20,sort=nearest] at @s unless entity @n[type=item_display,distance=..0.01,tag=rr.runic_table.item] if entity @n[type=item_display,distance=..0.75,tag=rr.runic_table.active] run particle minecraft:electric_spark ~ ~0.0625 ~ 0 0 0 0 1 force @a[distance=..10]
execute as @a at @s run execute as @e[type=interaction,tag=rr.runic_table.slot.10,distance=..10,limit=3,sort=nearest] at @s if entity @n[type=item_display,distance=..0.5,tag=!rr.runic_table.active,tag=rr.runic_table.main] run particle minecraft:portal ~ ~ ~ 0 0 0 0.33 1 normal

execute as @a[tag=rr.boss.necrosculker.title_display,scores={rr.boss.title_display=0..19}] run function rr_recast:cutscene/boss_intro/necrosculker/title_display
execute as @a[tag=rr.boss.necrosculker_elite.title_display,scores={rr.boss.title_display=0..21}] run function rr_recast:cutscene/boss_intro/necrosculker_elite/title_display
execute as @a[tag=rr.boss.necrosculker_nightmare.title_display,scores={rr.boss.title_display=0..23}] run function rr_recast:cutscene/boss_intro/necrosculker_nightmare/title_display
execute as @a[tag=rr.boss.necrosculker_ultimate.title_display,scores={rr.boss.title_display=0..25}] run function rr_recast:cutscene/boss_intro/necrosculker_ultimate/title_display

execute in overworld positioned 0 0 0 unless entity @n[distance=..1,type=marker,tag=rr.global,tag=rr.scheduler.3t] run tag @n[distance=..1,type=marker,tag=rr.global] add rr.scheduler.3t
schedule function rr_recast:technical/3t 3t replace