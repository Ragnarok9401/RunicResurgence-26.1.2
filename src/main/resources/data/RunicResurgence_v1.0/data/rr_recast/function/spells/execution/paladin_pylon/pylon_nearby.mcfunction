execute unless entity @n[distance=..20,tag=rr.aura.paladin_pylon,type=item_display] run return fail

execute at @s as @e[distance=..20,tag=rr.aura.paladin_pylon,type=item_display] run function rr_recast:spells/execution/paladin_pylon/check_within_radius with entity @s data.aura

return 1