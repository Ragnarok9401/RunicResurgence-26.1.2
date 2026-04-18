execute as @e[type=interaction,tag=ArenAEAMendingUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/boots/mending/up_1
execute as @e[type=interaction,tag=ArenAEAMendingDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/boots/mending/down_1
execute as @e[type=interaction,tag=ArenAEAMendingUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/boots/mending/up_2
execute as @e[type=interaction,tag=ArenAEAMendingDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/boots/mending/down_2


execute as @e[type=interaction,tag=ArenAEAMendingConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/boots/mending/confirm

execute as @e[type=interaction,tag=ArenAEAMendingConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/boots/mending/apply_change