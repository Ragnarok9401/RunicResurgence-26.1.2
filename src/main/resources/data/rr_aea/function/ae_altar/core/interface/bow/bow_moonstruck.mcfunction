execute as @e[type=interaction,tag=ArenAEAMoonUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/moonstruck/up_1
execute as @e[type=interaction,tag=ArenAEAMoonDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/moonstruck/down_1
execute as @e[type=interaction,tag=ArenAEAMoonUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/moonstruck/up_2
execute as @e[type=interaction,tag=ArenAEAMoonDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/moonstruck/down_2

execute as @e[type=interaction,tag=ArenAEAMoonConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/bow/moonstruck/confirm

execute as @e[type=interaction,tag=ArenAEAMoonConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/bow/moonstruck/apply_change