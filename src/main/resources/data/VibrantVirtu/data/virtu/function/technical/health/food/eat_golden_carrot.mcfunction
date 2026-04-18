execute as @s[tag=!SBHPGCarrotEaten] at @s run function sbhp:technical/health/food/eat_exotic_food

advancement revoke @s only sbhp_adv:food/eat_golden_carrot
tag @s add SBHPGCarrotEaten