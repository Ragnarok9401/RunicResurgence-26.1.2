execute as @s[tag=!SBHPMushroomStewEaten] at @s run function sbhp:technical/health/food/eat_unique_food

advancement revoke @s only sbhp_adv:food/eat_mushroom_stew
tag @s add SBHPMushroomStewEaten