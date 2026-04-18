execute as @e[type=interaction,tag=ArenAEASweepingUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/sweeping/up_1
execute as @e[type=interaction,tag=ArenAEASweepingDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/sweeping/down_1
execute as @e[type=interaction,tag=ArenAEASweepingUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/sweeping/up_2
execute as @e[type=interaction,tag=ArenAEASweepingDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/sweeping/down_2

execute as @e[type=interaction,tag=ArenAEASweepingConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/sword/sweeping/confirm

execute as @e[type=interaction,tag=ArenAEASweepingConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/sword/sweeping/apply_change