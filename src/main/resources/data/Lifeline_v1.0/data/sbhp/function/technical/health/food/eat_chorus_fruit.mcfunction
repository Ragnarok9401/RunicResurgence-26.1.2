execute as @s[tag=!SBHPChorusFruitEaten] at @s run function sbhp:technical/health/food/eat_exotic_food

advancement revoke @s only sbhp_adv:food/eat_chorus_fruit
tag @s add SBHPChorusFruitEaten