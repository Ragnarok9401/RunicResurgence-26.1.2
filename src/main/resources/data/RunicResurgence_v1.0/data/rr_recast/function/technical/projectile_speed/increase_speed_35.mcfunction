execute store result score @s rr.math.X run data get entity @s Motion[0] 13500
execute store result entity @s Motion[0] float 0.0001 run scoreboard players get @s rr.math.X
execute store result entity @n[type=marker,distance=..2,tag=aea.enchantment.recursion_marker,tag=!rr.projectile.speed_modified] data.aea.arrow_data.Motion[0] float 0.0001 run scoreboard players get @s rr.math.X
execute store result score @s rr.math.X run data get entity @s Motion[1] 13500
execute store result entity @s Motion[1] float 0.0001 run scoreboard players get @s rr.math.X
execute store result entity @n[type=marker,distance=..2,tag=aea.enchantment.recursion_marker,tag=!rr.projectile.speed_modified] data.aea.arrow_data.Motion[1] float 0.0001 run scoreboard players get @s rr.math.X
execute store result score @s rr.math.X run data get entity @s Motion[2] 13500
execute store result entity @s Motion[2] float 0.0001 run scoreboard players get @s rr.math.X
execute store result entity @n[type=marker,distance=..2,tag=aea.enchantment.recursion_marker,tag=!rr.projectile.speed_modified] data.aea.arrow_data.Motion[2] float 0.0001 run scoreboard players get @s rr.math.X
tag @n[type=marker,distance=..2,tag=aea.enchantment.recursion_marker,tag=!rr.projectile.speed_modified] add rr.projectile.speed_modified