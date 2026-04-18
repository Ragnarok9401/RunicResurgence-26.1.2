execute as @s[tag=!SBHPAppleEaten] at @s run function sbhp:technical/health/food/eat_unique_food

advancement revoke @s only sbhp_adv:food/eat_apple
tag @s add SBHPAppleEaten