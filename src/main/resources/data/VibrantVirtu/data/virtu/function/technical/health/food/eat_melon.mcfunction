execute as @s[tag=!SBHPMelonEaten] at @s run function sbhp:technical/health/food/eat_unique_food

advancement revoke @s only sbhp_adv:food/eat_melon
tag @s add SBHPMelonEaten