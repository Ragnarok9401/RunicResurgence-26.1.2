execute as @s[tag=!SBHPGlowBerryEaten] at @s run function sbhp:technical/health/food/eat_unique_food

advancement revoke @s only sbhp_adv:food/eat_glow_berry
tag @s add SBHPGlowBerryEaten