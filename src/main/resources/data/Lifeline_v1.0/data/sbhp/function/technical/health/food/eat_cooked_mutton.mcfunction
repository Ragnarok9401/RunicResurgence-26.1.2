execute as @s[tag=!SBHPCookedMuttonEaten] at @s run function sbhp:technical/health/food/eat_unique_food

advancement revoke @s only sbhp_adv:food/eat_cooked_mutton
tag @s add SBHPCookedMuttonEaten