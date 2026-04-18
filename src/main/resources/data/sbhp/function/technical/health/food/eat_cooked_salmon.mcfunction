execute as @s[tag=!SBHPCookedSalmonEaten] at @s run function sbhp:technical/health/food/eat_unique_food

advancement revoke @s only sbhp_adv:food/eat_cooked_salmon
tag @s add SBHPCookedSalmonEaten