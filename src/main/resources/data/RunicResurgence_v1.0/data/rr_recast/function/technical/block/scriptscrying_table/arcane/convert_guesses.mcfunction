# Get guess_1
execute store result score @s rr.math.Y run data get entity @s data.minigame.guess_1

execute as @s[scores={rr.math.Y=1}] run data modify entity @s data.minigame.guess_1 set value 'I'

# Get guess_2
execute store result score @s rr.math.Y run data get entity @s data.minigame.guess_2

execute as @s[scores={rr.math.Y=1}] run data modify entity @s data.minigame.guess_2 set value 'I'

# Get guess_3
execute store result score @s rr.math.Y run data get entity @s data.minigame.guess_3

execute as @s[scores={rr.math.Y=1}] run data modify entity @s data.minigame.guess_3 set value 'I'

# Get guess_4
execute store result score @s rr.math.Y run data get entity @s data.minigame.guess_4

execute as @s[scores={rr.math.Y=1}] run data modify entity @s data.minigame.guess_4 set value 'I'

# Get guess_5
execute store result score @s rr.math.Y run data get entity @s data.minigame.guess_5

execute as @s[scores={rr.math.Y=1}] run data modify entity @s data.minigame.guess_5 set value 'I'