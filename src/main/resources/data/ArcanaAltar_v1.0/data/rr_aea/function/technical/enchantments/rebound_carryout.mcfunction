
# When a Rebound arrow hits the ground, teleport it upward barely and then set the new motion
execute as @e[type=arrow,tag=ArenReboundArrow,tag=!ArenReb1,tag=!ArenReb1Done,nbt={inGround:true}] at @s run tag @s add ArenReb1
execute as @e[type=arrow,tag=ArenReboundArrow,tag=ArenReb1,tag=!ArenReb1Done,nbt={inGround:true}] at @s unless block ~ ~0.075 ~ #rr_aea:passable run tag @s add aea.rebound.down
execute as @e[type=arrow,tag=ArenReboundArrow,tag=ArenReb1,tag=!ArenReb1Done,nbt={inGround:true}] at @s unless block ~ ~-0.075 ~ #rr_aea:passable run tag @s add aea.rebound.up
execute as @e[type=arrow,tag=ArenReboundArrow,tag=ArenReb1,tag=!ArenReb1Done,nbt={inGround:true}] at @s unless block ~0.075 ~ ~ #rr_aea:passable run tag @s add aea.rebound.neg_x
execute as @e[type=arrow,tag=ArenReboundArrow,tag=ArenReb1,tag=!ArenReb1Done,nbt={inGround:true}] at @s unless block ~-0.075 ~ ~ #rr_aea:passable run tag @s add aea.rebound.pos_x
execute as @e[type=arrow,tag=ArenReboundArrow,tag=ArenReb1,tag=!ArenReb1Done,nbt={inGround:true}] at @s unless block ~ ~ ~0.075 #rr_aea:passable run tag @s add aea.rebound.neg_z
execute as @e[type=arrow,tag=ArenReboundArrow,tag=ArenReb1,tag=!ArenReb1Done,nbt={inGround:true}] at @s unless block ~ ~ ~-0.075 #rr_aea:passable run tag @s add aea.rebound.pos_z

execute as @e[type=arrow,tag=ArenReboundArrow,tag=ArenReb1,tag=!ArenReb1Done,nbt={inGround:true},tag=aea.rebound.down] at @s run tp @s ~ ~-0.1 ~
execute as @e[type=arrow,tag=ArenReboundArrow,tag=ArenReb1,tag=!ArenReb1Done,nbt={inGround:true},tag=aea.rebound.up] at @s run tp @s ~ ~0.1 ~
execute as @e[type=arrow,tag=ArenReboundArrow,tag=ArenReb1,tag=!ArenReb1Done,nbt={inGround:true},tag=aea.rebound.neg_x] at @s run tp @s ~-0.1 ~ ~
execute as @e[type=arrow,tag=ArenReboundArrow,tag=ArenReb1,tag=!ArenReb1Done,nbt={inGround:true},tag=aea.rebound.pos_x] at @s run tp @s ~0.1 ~ ~
execute as @e[type=arrow,tag=ArenReboundArrow,tag=ArenReb1,tag=!ArenReb1Done,nbt={inGround:true},tag=aea.rebound.neg_z] at @s run tp @s ~ ~ ~-0.1
execute as @e[type=arrow,tag=ArenReboundArrow,tag=ArenReb1,tag=!ArenReb1Done,nbt={inGround:true},tag=aea.rebound.pos_z] at @s run tp @s ~ ~ ~0.1

execute as @e[type=arrow,tag=ArenReboundArrow,tag=ArenReb1,tag=!ArenReb1Done,nbt={inGround:true},tag=aea.rebound.down] at @s run tag @s remove aea.rebound.down
execute as @e[type=arrow,tag=ArenReboundArrow,tag=ArenReb1,tag=!ArenReb1Done,nbt={inGround:true},tag=aea.rebound.up] at @s run tag @s remove aea.rebound.up
execute as @e[type=arrow,tag=ArenReboundArrow,tag=ArenReb1,tag=!ArenReb1Done,nbt={inGround:true},tag=aea.rebound.neg_x] at @s run tag @s remove aea.rebound.neg_x
execute as @e[type=arrow,tag=ArenReboundArrow,tag=ArenReb1,tag=!ArenReb1Done,nbt={inGround:true},tag=aea.rebound.pos_x] at @s run tag @s remove aea.rebound.pos_x
execute as @e[type=arrow,tag=ArenReboundArrow,tag=ArenReb1,tag=!ArenReb1Done,nbt={inGround:true},tag=aea.rebound.neg_z] at @s run tag @s remove aea.rebound.neg_z
execute as @e[type=arrow,tag=ArenReboundArrow,tag=ArenReb1,tag=!ArenReb1Done,nbt={inGround:true},tag=aea.rebound.pos_z] at @s run tag @s remove aea.rebound.pos_z
execute as @e[type=arrow,tag=ArenReboundArrow,tag=ArenReb1,tag=!ArenReb1Done,nbt={inGround:false}] at @s store result entity @s Motion[0] double -0.0012 run scoreboard players get @s aea.math.A
execute as @e[type=arrow,tag=ArenReboundArrow,tag=ArenReb1,tag=!ArenReb1Done,nbt={inGround:false}] at @s store result entity @s Motion[1] double -0.0012 run scoreboard players get @s aea.math.J
execute as @e[type=arrow,tag=ArenReboundArrow,tag=ArenReb1,tag=!ArenReb1Done,nbt={inGround:false}] at @s store result entity @s Motion[2] double -0.0012 run scoreboard players get @s aea.math.K
execute as @e[type=arrow,tag=ArenReboundArrow,tag=ArenReb1,tag=!ArenReb1Done,nbt={inGround:false}] at @s run tag @s add ArenReb1Done

# When a Rebound 1 arrow hits the ground again, kill it. Or, if it is a Rebound 2 arrow, repeat the above step, and then kill it once it reaches the ground again

execute as @e[type=arrow,tag=ArenReboundArrow,tag=ArenReboundArrow2,tag=ArenReb1Done,tag=!ArenReb2,nbt={inGround:true}] at @s run tag @s add ArenReb2
execute as @e[type=arrow,tag=ArenReboundArrow2,tag=ArenReb2,tag=ArenReb1Done,tag=!ArenReb2Done,nbt={inGround:true}] at @s unless block ~ ~0.075 ~ #rr_aea:passable run tag @s add aea.rebound.down
execute as @e[type=arrow,tag=ArenReboundArrow2,tag=ArenReb2,tag=ArenReb1Done,tag=!ArenReb2Done,nbt={inGround:true}] at @s unless block ~ ~-0.075 ~ #rr_aea:passable run tag @s add aea.rebound.up
execute as @e[type=arrow,tag=ArenReboundArrow2,tag=ArenReb2,tag=ArenReb1Done,tag=!ArenReb2Done,nbt={inGround:true}] at @s unless block ~0.075 ~ ~ #rr_aea:passable run tag @s add aea.rebound.neg_x
execute as @e[type=arrow,tag=ArenReboundArrow2,tag=ArenReb2,tag=ArenReb1Done,tag=!ArenReb2Done,nbt={inGround:true}] at @s unless block ~-0.075 ~ ~ #rr_aea:passable run tag @s add aea.rebound.pos_x
execute as @e[type=arrow,tag=ArenReboundArrow2,tag=ArenReb2,tag=ArenReb1Done,tag=!ArenReb2Done,nbt={inGround:true}] at @s unless block ~ ~ ~0.075 #rr_aea:passable run tag @s add aea.rebound.neg_z
execute as @e[type=arrow,tag=ArenReboundArrow2,tag=ArenReb2,tag=ArenReb1Done,tag=!ArenReb2Done,nbt={inGround:true}] at @s unless block ~ ~ ~-0.075 #rr_aea:passable run tag @s add aea.rebound.pos_z

execute as @e[type=arrow,tag=ArenReboundArrow2,tag=ArenReb2,tag=ArenReb1Done,tag=!ArenReb2Done,nbt={inGround:true},tag=aea.rebound.down] at @s run tp @s ~ ~-0.1 ~
execute as @e[type=arrow,tag=ArenReboundArrow2,tag=ArenReb2,tag=ArenReb1Done,tag=!ArenReb2Done,nbt={inGround:true},tag=aea.rebound.up] at @s run tp @s ~ ~0.1 ~
execute as @e[type=arrow,tag=ArenReboundArrow2,tag=ArenReb2,tag=ArenReb1Done,tag=!ArenReb2Done,nbt={inGround:true},tag=aea.rebound.neg_x] at @s run tp @s ~-0.1 ~ ~
execute as @e[type=arrow,tag=ArenReboundArrow2,tag=ArenReb2,tag=ArenReb1Done,tag=!ArenReb2Done,nbt={inGround:true},tag=aea.rebound.pos_x] at @s run tp @s ~0.1 ~ ~
execute as @e[type=arrow,tag=ArenReboundArrow2,tag=ArenReb2,tag=ArenReb1Done,tag=!ArenReb2Done,nbt={inGround:true},tag=aea.rebound.neg_z] at @s run tp @s ~ ~ ~-0.1
execute as @e[type=arrow,tag=ArenReboundArrow2,tag=ArenReb2,tag=ArenReb1Done,tag=!ArenReb2Done,nbt={inGround:true},tag=aea.rebound.pos_z] at @s run tp @s ~ ~ ~0.1
execute as @e[type=arrow,tag=ArenReboundArrow2,tag=ArenReb2,tag=!ArenReb2Done,nbt={inGround:false}] at @s store result entity @s Motion[0] double -0.0012 run scoreboard players get @s aea.math.A
execute as @e[type=arrow,tag=ArenReboundArrow2,tag=ArenReb2,tag=!ArenReb2Done,nbt={inGround:false}] at @s store result entity @s Motion[1] double -0.0012 run scoreboard players get @s aea.math.J
execute as @e[type=arrow,tag=ArenReboundArrow2,tag=ArenReb2,tag=!ArenReb2Done,nbt={inGround:false}] at @s store result entity @s Motion[2] double -0.0012 run scoreboard players get @s aea.math.K
execute as @e[type=arrow,tag=ArenReboundArrow2,tag=ArenReb2,tag=!ArenReb2Done,nbt={inGround:false}] at @s run tag @s add ArenReb2Done


# Store Motion data in tags
execute as @e[type=arrow,tag=ArenReboundArrow,nbt={inGround:false}] at @s store result score @s aea.math.A run data get entity @s Motion[0] 1000
execute as @e[type=arrow,tag=ArenReboundArrow,nbt={inGround:false}] at @s store result score @s aea.math.J run data get entity @s Motion[1] 1000
execute as @e[type=arrow,tag=ArenReboundArrow,nbt={inGround:false}] at @s store result score @s aea.math.K run data get entity @s Motion[2] 1000