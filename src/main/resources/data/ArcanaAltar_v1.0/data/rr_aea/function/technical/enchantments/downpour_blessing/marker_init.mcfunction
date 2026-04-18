data modify entity @s data.aea.arrow_data set from entity @n[type=arrow,tag=!ArenDownpourChecked]
data remove entity @s data.aea.arrow_data.UUID
data modify entity @s data.aea.arrow_data.pickup set value 2b
data modify entity @s data.aea.arrow_data.inGround set value false
data modify entity @s data.aea.arrow_data.crit set value true
data remove entity @s data.aea.arrow_data.weapon.components."minecraft:enchantments"."rr_aea:downpour"
data remove entity @s data.aea.arrow_data.weapon.components."minecraft:enchantments"."rr_aea:rebound"

# Get initial data
execute store result score @s aea.math.D run data get entity @s data.aea.arrow_data.Motion[0] 10000
execute if score @s aea.math.D matches 0.. store result score @s aea.math.D run data get entity @s data.aea.arrow_data.Motion[0] -10000
execute store result score @s aea.math.E run data get entity @s data.aea.arrow_data.Motion[1] 10000
execute if score @s aea.math.E matches 0.. store result score @s aea.math.D run data get entity @s data.aea.arrow_data.Motion[1] -10000
execute run scoreboard players operation @s aea.math.D += @s aea.math.E
execute store result score @s aea.math.E run data get entity @s data.aea.arrow_data.Motion[2] 10000
execute if score @s aea.math.E matches 0.. store result score @s aea.math.D run data get entity @s data.aea.arrow_data.Motion[2] -10000
execute run scoreboard players operation @s aea.math.D += @s aea.math.E

execute run scoreboard players set @s aea.math.E 2
execute run scoreboard players operation @s aea.math.D *= @s aea.math.E
execute run scoreboard players set @s aea.math.E 3
execute run scoreboard players operation @s aea.math.D /= @s aea.math.E
execute store result entity @s data.aea.speed float 0.0001 run scoreboard players get @s aea.math.D
execute run scoreboard players set @s aea.math.E 8
execute store result score @s aea.math.C run data get entity @n[type=arrow,tag=!ArenDownpourChecked,distance=..10] weapon.components."minecraft:enchantments"."rr_aea:downpour"
scoreboard players operation @s aea.math.C *= @s aea.math.E


tag @n[type=arrow,tag=!ArenDownpourChecked,distance=..10] add ArenDownpourChecked
tag @s add ArenDownpourMarkerSet