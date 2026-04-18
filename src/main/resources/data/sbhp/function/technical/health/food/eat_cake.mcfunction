execute as @s[tag=!SBHPCakeEaten] at @s run function sbhp:technical/health/food/eat_exotic_food

scoreboard players set @s sbhp.CakeEaten 0
tag @s add SBHPCakeEaten