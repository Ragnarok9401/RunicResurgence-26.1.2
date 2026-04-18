execute as @e[type=interaction,tag=ArenAEASunUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/sunstruck/up_1
execute as @e[type=interaction,tag=ArenAEASunDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/sunstruck/down_1
execute as @e[type=interaction,tag=ArenAEASunUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/sunstruck/up_2
execute as @e[type=interaction,tag=ArenAEASunDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/sunstruck/down_2

execute as @e[type=interaction,tag=ArenAEASunConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/bow/sunstruck/confirm

execute as @e[type=interaction,tag=ArenAEASunConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/bow/sunstruck/apply_change