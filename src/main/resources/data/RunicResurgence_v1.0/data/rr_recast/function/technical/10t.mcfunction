
# Execute Aura Hand functions at Siphon Auras for Necrosculkers
#execute as @e[type=item_display,tag=rr.boss.ns_nightmare.siphon_aura] at @s run function rr_recast:boss/necrosculker_main/necrosculker_nightmare/siphon_aura_hand
#execute as @e[type=item_display,tag=rr.boss.ns_void.siphon_aura] at @s run function rr_recast:boss/necrosculker_main/necrosculker_ultimate/siphon_aura_hand

# Execute fx for Scriptscrying Tables that have the Guess Cooldown tag
execute as @e[tag=rr.block.scriptscrying_table.main,tag=rr.block.scriptscrying_table.main.guess_cooldown,type=item_display] at @s run function rr_recast:technical/block/scriptscrying_table/guess_cooldown with entity @s data.spell_script


execute in overworld positioned 0 0 0 unless entity @n[distance=..1,type=marker,tag=rr.global,tag=rr.scheduler.10t] run tag @n[distance=..1,type=marker,tag=rr.global] add rr.scheduler.10t
schedule function rr_recast:technical/10t 10t replace