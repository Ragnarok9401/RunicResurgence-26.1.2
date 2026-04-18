execute as @s[tag=!SBHPBakedPotatoEaten] at @s run function sbhp:technical/health/food/eat_unique_food

advancement revoke @s only sbhp_adv:food/eat_baked_potato
tag @s add SBHPBakedPotatoEaten