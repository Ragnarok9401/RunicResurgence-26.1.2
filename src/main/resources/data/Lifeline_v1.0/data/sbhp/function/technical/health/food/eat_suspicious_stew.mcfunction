execute as @s[tag=!SBHPSuspiciousStewEaten] at @s run function sbhp:technical/health/food/eat_exotic_food

advancement revoke @s only sbhp_adv:food/eat_suspicious_stew
tag @s add SBHPSuspiciousStewEaten