execute store result score @s rr.math.A run random value -17990..18000
execute store result score @s rr.math.B run random value 7500..9000
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @s rr.math.A
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get @s rr.math.B