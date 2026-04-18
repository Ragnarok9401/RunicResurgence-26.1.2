execute unless block ~ ~0.075 ~ #rr_aea:passable run tag @s add aea.rebound.down
execute unless block ~ ~-0.075 ~ #rr_aea:passable run tag @s add aea.rebound.up
execute unless block ~0.075 ~ ~ #rr_aea:passable run tag @s add aea.rebound.neg_x
execute unless block ~-0.075 ~ ~ #rr_aea:passable run tag @s add aea.rebound.pos_x
execute unless block ~ ~ ~0.075 #rr_aea:passable run tag @s add aea.rebound.neg_z
execute unless block ~ ~ ~-0.075 #rr_aea:passable run tag @s add aea.rebound.pos_z

execute unless block ~0.075 ~0.075 ~ #rr_aea:passable run tag @s add aea.rebound.down_neg_x
execute unless block ~0.075 ~-0.075 ~ #rr_aea:passable run tag @s add aea.rebound.up_neg_x
execute unless block ~ ~0.075 ~0.075 #rr_aea:passable run tag @s add aea.rebound.down_neg_z
execute unless block ~ ~-0.075 ~0.075 #rr_aea:passable run tag @s add aea.rebound.up_neg_z
execute unless block ~-0.075 ~0.075 ~ #rr_aea:passable run tag @s add aea.rebound.down_pos_x
execute unless block ~-0.075 ~-0.075 ~ #rr_aea:passable run tag @s add aea.rebound.up_pos_x
execute unless block ~ ~0.075 ~-0.075 #rr_aea:passable run tag @s add aea.rebound.down_pos_z
execute unless block ~ ~-0.075 ~-0.075 #rr_aea:passable run tag @s add aea.rebound.up_pos_z

execute if entity @s[tag=!aea.rebound.pos_x,tag=!aea.rebound.up_pos_x,tag=!aea.rebound.down_pos_x,tag=!aea.rebound.neg_x,tag=!aea.rebound.up_neg_x,tag=!aea.rebound.down_neg_x,tag=!aea.rebound.up,tag=!aea.rebound.down] store result entity @s data.aea.motion.x double -0.0001 run data get entity @s data.aea.motion.x 10000
execute if entity @s[tag=!aea.rebound.pos_z,tag=!aea.rebound.up_pos_z,tag=!aea.rebound.down_pos_z,tag=!aea.rebound.neg_z,tag=!aea.rebound.up_neg_z,tag=!aea.rebound.down_neg_z,tag=!aea.rebound.up,tag=!aea.rebound.down] store result entity @s data.aea.motion.z double -0.0001 run data get entity @s data.aea.motion.z 10000

execute if entity @s[tag=!aea.rebound.up,tag=!aea.rebound.down] store result entity @s data.aea.motion.y double -0.0001 run data get entity @s data.aea.motion.y 10000
execute if entity @s[tag=!aea.rebound.down] store result entity @s data.aea.motion.x double -0.0001 run data get entity @s data.aea.motion.x 10000
execute if entity @s[tag=!aea.rebound.up] store result entity @s data.aea.motion.x double -0.0001 run data get entity @s data.aea.motion.x 10000
execute if entity @s[tag=!aea.rebound.down] store result entity @s data.aea.motion.z double -0.0001 run data get entity @s data.aea.motion.z 10000
execute if entity @s[tag=!aea.rebound.up] store result entity @s data.aea.motion.z double -0.0001 run data get entity @s data.aea.motion.z 10000

execute as @s[tag=aea.rebound.down] at @s run tp @s ~ ~-0.05 ~
execute as @s[tag=aea.rebound.up] at @s run tp @s ~ ~0.05 ~
execute as @s[tag=aea.rebound.neg_x] at @s run tp @s ~-0.05 ~ ~
execute as @s[tag=aea.rebound.pos_x] at @s run tp @s ~0.05 ~ ~
execute as @s[tag=aea.rebound.neg_z] at @s run tp @s ~ ~ ~-0.05
execute as @s[tag=aea.rebound.pos_z] at @s run tp @s ~ ~ ~0.05
execute as @s[tag=aea.rebound.down_neg_x] at @s run tp @s ~-0.025 ~-0.025 ~
execute as @s[tag=aea.rebound.down_pos_x] at @s run tp @s ~0.025 ~-0.025 ~
execute as @s[tag=aea.rebound.down_neg_z] at @s run tp @s ~ ~-0.025 ~-0.025
execute as @s[tag=aea.rebound.down_pos_z] at @s run tp @s ~ ~-0.025 ~0.025
execute as @s[tag=aea.rebound.up_neg_x] at @s run tp @s ~-0.025 ~0.025 ~
execute as @s[tag=aea.rebound.up_pos_x] at @s run tp @s ~0.025 ~0.025 ~
execute as @s[tag=aea.rebound.up_neg_z] at @s run tp @s ~ ~0.025 ~-0.025
execute as @s[tag=aea.rebound.up_pos_z] at @s run tp @s ~ ~0.025 ~0.025

execute as @s[tag=aea.rebound.down] at @s run tag @s remove aea.rebound.down
execute as @s[tag=aea.rebound.up] at @s run tag @s remove aea.rebound.up
execute as @s[tag=aea.rebound.neg_x] at @s run tag @s remove aea.rebound.neg_x
execute as @s[tag=aea.rebound.pos_x] at @s run tag @s remove aea.rebound.pos_x
execute as @s[tag=aea.rebound.neg_z] at @s run tag @s remove aea.rebound.neg_z
execute as @s[tag=aea.rebound.pos_z] at @s run tag @s remove aea.rebound.pos_z
execute as @s[tag=aea.rebound.down_neg_x] at @s run tag @s remove aea.rebound.down_neg_x
execute as @s[tag=aea.rebound.down_pos_x] at @s run tag @s remove aea.rebound.down_pos_x
execute as @s[tag=aea.rebound.down_neg_z] at @s run tag @s remove aea.rebound.down_neg_z
execute as @s[tag=aea.rebound.down_pos_z] at @s run tag @s remove aea.rebound.down_pos_z
execute as @s[tag=aea.rebound.up_neg_x] at @s run tag @s remove aea.rebound.up_neg_x
execute as @s[tag=aea.rebound.up_pos_x] at @s run tag @s remove aea.rebound.up_pos_x
execute as @s[tag=aea.rebound.up_neg_z] at @s run tag @s remove aea.rebound.up_neg_z
execute as @s[tag=aea.rebound.up_pos_z] at @s run tag @s remove aea.rebound.up_pos_z

scoreboard players remove @s aea.math.D 1
tag @s add ArenRebounding