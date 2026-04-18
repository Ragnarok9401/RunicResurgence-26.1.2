execute as @e[type=interaction,tag=ArenAEAPowerUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/power/up_1
execute as @e[type=interaction,tag=ArenAEAPowerDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/power/down_1
execute as @e[type=interaction,tag=ArenAEAPowerUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/power/up_2
execute as @e[type=interaction,tag=ArenAEAPowerDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/power/down_2

execute as @e[type=interaction,tag=ArenAEAPowerConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/bow/power/confirm

execute as @e[type=interaction,tag=ArenAEAPowerConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/bow/power/apply_change