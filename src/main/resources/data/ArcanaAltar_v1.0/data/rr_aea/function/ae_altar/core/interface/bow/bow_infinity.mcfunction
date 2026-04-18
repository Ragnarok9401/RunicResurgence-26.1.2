execute as @e[type=interaction,tag=ArenAEAInfinityUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/infinity/up_1
execute as @e[type=interaction,tag=ArenAEAInfinityDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/infinity/down_1
execute as @e[type=interaction,tag=ArenAEAInfinityUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/infinity/up_2
execute as @e[type=interaction,tag=ArenAEAInfinityDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/infinity/down_2

execute as @e[type=interaction,tag=ArenAEAInfinityConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/bow/infinity/confirm

execute as @e[type=interaction,tag=ArenAEAInfinityConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/bow/infinity/apply_change