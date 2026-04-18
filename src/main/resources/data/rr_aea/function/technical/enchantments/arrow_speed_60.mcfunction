execute as @e[type=arrow,limit=1,sort=nearest,nbt={inGround:false},tag=!ArenSpdUpdated] store result entity @s data.aea.motion.x double 0.0001 run data get entity @s Motion[0] 16000
execute as @e[type=arrow,limit=1,sort=nearest,nbt={inGround:false},tag=!ArenSpdUpdated] store result entity @s Motion[0] double 1 run data get entity @s data.aea.motion.x
execute as @e[type=arrow,limit=1,sort=nearest,nbt={inGround:false},tag=!ArenSpdUpdated] store result entity @s data.aea.motion.y double 0.0001 run data get entity @s Motion[1] 16000
execute as @e[type=arrow,limit=1,sort=nearest,nbt={inGround:false},tag=!ArenSpdUpdated] store result entity @s Motion[1] double 1 run data get entity @s data.aea.motion.y
execute as @e[type=arrow,limit=1,sort=nearest,nbt={inGround:false},tag=!ArenSpdUpdated] store result entity @s data.aea.motion.z double 0.0001 run data get entity @s Motion[2] 16000
execute as @e[type=arrow,limit=1,sort=nearest,nbt={inGround:false},tag=!ArenSpdUpdated] store result entity @s Motion[2] double 1 run data get entity @s data.aea.motion.z
execute as @e[type=arrow,limit=1,sort=nearest,nbt={inGround:false},tag=!ArenSpdUpdated] run tag @s add ArenSpdUpdated