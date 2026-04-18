execute as @e[type=interaction,tag=ArenAEALootingUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/looting/up_1
execute as @e[type=interaction,tag=ArenAEALootingDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/looting/down_1
execute as @e[type=interaction,tag=ArenAEALootingUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/looting/up_2
execute as @e[type=interaction,tag=ArenAEALootingDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/looting/down_2

execute as @e[type=interaction,tag=ArenAEALootingConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/sword/looting/confirm

execute as @e[type=interaction,tag=ArenAEALootingConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/sword/looting/apply_change