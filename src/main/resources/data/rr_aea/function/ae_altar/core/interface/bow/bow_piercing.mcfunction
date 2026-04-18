execute as @e[type=interaction,tag=ArenAEAPiercingUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/piercing/up_1
execute as @e[type=interaction,tag=ArenAEAPiercingDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/piercing/down_1
execute as @e[type=interaction,tag=ArenAEAPiercingUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/piercing/up_2
execute as @e[type=interaction,tag=ArenAEAPiercingDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/piercing/down_2

execute as @e[type=interaction,tag=ArenAEAPiercingConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/bow/piercing/confirm

execute as @e[type=interaction,tag=ArenAEAPiercingConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/bow/piercing/apply_change