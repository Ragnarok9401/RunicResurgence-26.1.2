execute as @s[tag=!SBHPCarrotEaten] at @s run function sbhp:technical/health/food/eat_unique_food

advancement revoke @s only sbhp_adv:food/eat_carrot
tag @s add SBHPCarrotEaten