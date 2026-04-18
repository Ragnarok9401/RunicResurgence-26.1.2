execute as @s[tag=!SBHPPotatoEaten] at @s run function sbhp:technical/health/food/eat_unique_food

advancement revoke @s only sbhp_adv:food/eat_potato
tag @s add SBHPPotatoEaten