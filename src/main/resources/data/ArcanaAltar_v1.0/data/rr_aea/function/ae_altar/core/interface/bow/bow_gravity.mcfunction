execute as @e[type=interaction,tag=ArenAEAGravityUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/gravity/up_1
execute as @e[type=interaction,tag=ArenAEAGravityDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/gravity/down_1
execute as @e[type=interaction,tag=ArenAEAGravityUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/gravity/up_2
execute as @e[type=interaction,tag=ArenAEAGravityDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/gravity/down_2


execute as @e[type=interaction,tag=ArenAEAGravityConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/bow/gravity/confirm

execute as @e[type=interaction,tag=ArenAEAGravityConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/bow/gravity/apply_change