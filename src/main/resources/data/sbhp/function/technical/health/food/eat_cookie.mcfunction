execute as @s[tag=!SBHPCookieEaten] at @s run function sbhp:technical/health/food/eat_unique_food

advancement revoke @s only sbhp_adv:food/eat_cookie
tag @s add SBHPCookieEaten