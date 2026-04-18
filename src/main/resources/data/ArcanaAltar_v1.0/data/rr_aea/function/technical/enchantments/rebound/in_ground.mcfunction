execute unless score @s aea.math.D matches 0.. store result score @s aea.math.D run data get entity @s data.aea.rebound_amount

# Kill the arrow if it hits a block a number of times greater than the level of the enchantment
kill @s[scores={aea.math.D=..0}]

# When a Rebound arrow hits a block, teleport it away barely and then set the new motion
execute as @s[scores={aea.math.D=1..}] at @s run function rr_aea:technical/enchantments/rebound/calc_rebound_angle