execute as @s[tag=!SBHPBreadEaten] at @s run function sbhp:technical/health/food/eat_unique_food

advancement revoke @s only sbhp_adv:food/eat_bread
tag @s add SBHPBreadEaten