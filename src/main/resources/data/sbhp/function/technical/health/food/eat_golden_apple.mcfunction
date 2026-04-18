execute as @s[tag=!SBHPGAppleEaten] at @s run function sbhp:technical/health/food/eat_exotic_food

advancement revoke @s only sbhp_adv:food/eat_golden_apple
tag @s add SBHPGAppleEaten