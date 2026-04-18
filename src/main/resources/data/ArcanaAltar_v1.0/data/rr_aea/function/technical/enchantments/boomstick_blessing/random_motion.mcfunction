# Each score calculated twice to give mild bias toward middle
execute store result score @s aea.math.A run data get entity @s Motion[0] 10000
execute store result score @s aea.math.B run random value -2500..2500
execute store result entity @s Motion[0] double 0.0001 run scoreboard players operation @s aea.math.A += @s aea.math.B
execute store result score @s aea.math.A run data get entity @s Motion[1] 10000
execute store result score @s aea.math.B run random value -2500..2500
execute store result entity @s Motion[1] double 0.0001 run scoreboard players operation @s aea.math.A += @s aea.math.B
execute store result score @s aea.math.A run data get entity @s Motion[2] 10000
execute store result score @s aea.math.B run random value -2500..2500
execute store result entity @s Motion[2] double 0.0001 run scoreboard players operation @s aea.math.A += @s aea.math.B
execute store result score @s aea.math.A run data get entity @s Motion[0] 10000
execute store result score @s aea.math.B run random value -2500..2500
execute store result entity @s Motion[0] double 0.0001 run scoreboard players operation @s aea.math.A += @s aea.math.B
execute store result score @s aea.math.A run data get entity @s Motion[1] 10000
execute store result score @s aea.math.B run random value -2500..2500
execute store result entity @s Motion[1] double 0.0001 run scoreboard players operation @s aea.math.A += @s aea.math.B
execute store result score @s aea.math.A run data get entity @s Motion[2] 10000
execute store result score @s aea.math.B run random value -2500..2500
execute store result entity @s Motion[2] double 0.0001 run scoreboard players operation @s aea.math.A += @s aea.math.B

# execute store result score @s aea.math.A run data get entity @s Motion[0] 10000
# execute store result entity @s Motion[0] double 0.0001 run scoreboard players get @s aea.math.A
# execute store result score @s aea.math.A run data get entity @s Motion[1] 10000
# execute store result entity @s Motion[1] double 0.0001 run scoreboard players get @s aea.math.A
# execute store result score @s aea.math.A run data get entity @s Motion[2] 10000
# execute store result entity @s Motion[2] double 0.0001 run scoreboard players get @s aea.math.A