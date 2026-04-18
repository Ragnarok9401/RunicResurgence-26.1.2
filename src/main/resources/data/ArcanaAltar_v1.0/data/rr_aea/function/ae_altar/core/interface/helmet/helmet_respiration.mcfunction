execute as @e[type=interaction,tag=ArenAEARespirationUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/helmet/respiration/up_1
execute as @e[type=interaction,tag=ArenAEARespirationDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/helmet/respiration/down_1
execute as @e[type=interaction,tag=ArenAEARespirationUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/helmet/respiration/up_2
execute as @e[type=interaction,tag=ArenAEARespirationDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/helmet/respiration/down_2


execute as @e[type=interaction,tag=ArenAEARespirationConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/helmet/respiration/confirm

execute as @e[type=interaction,tag=ArenAEARespirationConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/helmet/respiration/apply_change