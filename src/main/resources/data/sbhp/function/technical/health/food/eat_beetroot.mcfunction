execute as @s[tag=!SBHPBeetrootEaten] at @s run function sbhp:technical/health/food/eat_unique_food

advancement revoke @s only sbhp_adv:food/eat_beetroot
tag @s add SBHPBeetrootEaten