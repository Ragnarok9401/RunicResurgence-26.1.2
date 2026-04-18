execute as @s[tag=!SBHPHoneyBottleEaten] at @s run function sbhp:technical/health/food/eat_unique_food

advancement revoke @s only sbhp_adv:food/eat_honey_bottle
tag @s add SBHPHoneyBottleEaten