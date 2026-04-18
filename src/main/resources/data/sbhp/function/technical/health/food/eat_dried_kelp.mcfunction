execute as @s[tag=!SBHPDriedKelpEaten] at @s run function sbhp:technical/health/food/eat_unique_food

advancement revoke @s only sbhp_adv:food/eat_dried_kelp
tag @s add SBHPDriedKelpEaten