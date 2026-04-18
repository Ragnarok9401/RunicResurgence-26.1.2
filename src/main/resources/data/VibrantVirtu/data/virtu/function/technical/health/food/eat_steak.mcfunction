execute as @s[tag=!SBHPSteakEaten] at @s run function sbhp:technical/health/food/eat_unique_food

advancement revoke @s only sbhp_adv:food/eat_steak
tag @s add SBHPSteakEaten