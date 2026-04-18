execute as @s[tag=!SBHPCookedRabbitEaten] at @s run function sbhp:technical/health/food/eat_unique_food

advancement revoke @s only sbhp_adv:food/eat_cooked_rabbit
tag @s add SBHPCookedRabbitEaten