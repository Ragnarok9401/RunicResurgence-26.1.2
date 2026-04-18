execute as @s[tag=!SBHPRabbitStewEaten] at @s run function sbhp:technical/health/food/eat_exotic_food

advancement revoke @s only sbhp_adv:food/eat_rabbit_stew
tag @s add SBHPRabbitStewEaten