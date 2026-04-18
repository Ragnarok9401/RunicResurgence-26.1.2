execute as @s[tag=!SBHPSweetBerryEaten] at @s run function sbhp:technical/health/food/eat_unique_food

advancement revoke @s only sbhp_adv:food/eat_sweet_berry
tag @s add SBHPSweetBerryEaten