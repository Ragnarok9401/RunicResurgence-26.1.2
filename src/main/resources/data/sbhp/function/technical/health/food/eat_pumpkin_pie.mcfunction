execute as @s[tag=!SBHPPumpkinPieEaten] at @s run function sbhp:technical/health/food/eat_unique_food

advancement revoke @s only sbhp_adv:food/eat_pumpkin_pie
tag @s add SBHPPumpkinPieEaten