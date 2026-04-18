execute as @s[tag=!SBHPBeetrootSoupEaten] at @s run function sbhp:technical/health/food/eat_unique_food

advancement revoke @s only sbhp_adv:food/eat_beetroot_soup
tag @s add SBHPBeetrootSoupEaten