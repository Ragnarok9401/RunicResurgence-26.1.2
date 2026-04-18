execute as @e[type=arrow,limit=1,sort=nearest,nbt={inGround:false},tag=!ArenSpdUpdated] store result score @s aea.math.A run data get entity @s Motion[0] 18000
execute as @e[type=arrow,limit=1,sort=nearest,nbt={inGround:false},tag=!ArenSpdUpdated] store result entity @s Motion[0] double 0.0001 run scoreboard players get @s aea.math.A
execute as @e[type=arrow,limit=1,sort=nearest,nbt={inGround:false},tag=!ArenSpdUpdated] store result score @s aea.math.J run data get entity @s Motion[1] 18000
execute as @e[type=arrow,limit=1,sort=nearest,nbt={inGround:false},tag=!ArenSpdUpdated] store result entity @s Motion[1] double 0.0001 run scoreboard players get @s aea.math.J
execute as @e[type=arrow,limit=1,sort=nearest,nbt={inGround:false},tag=!ArenSpdUpdated] store result score @s aea.math.K run data get entity @s Motion[2] 18000
execute as @e[type=arrow,limit=1,sort=nearest,nbt={inGround:false},tag=!ArenSpdUpdated] store result entity @s Motion[2] double 0.0001 run scoreboard players get @s aea.math.K
execute as @e[type=arrow,limit=1,sort=nearest,nbt={inGround:false},tag=!ArenSpdUpdated] run tag @s add ArenSpdUpdated