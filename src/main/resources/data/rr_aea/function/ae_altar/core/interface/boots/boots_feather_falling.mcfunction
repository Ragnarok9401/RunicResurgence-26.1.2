execute as @e[type=interaction,tag=ArenAEAFeatherUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/boots/feather_falling/up_1
execute as @e[type=interaction,tag=ArenAEAFeatherDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/boots/feather_falling/down_1
execute as @e[type=interaction,tag=ArenAEAFeatherUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/boots/feather_falling/up_2
execute as @e[type=interaction,tag=ArenAEAFeatherDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/boots/feather_falling/down_2


execute as @e[type=interaction,tag=ArenAEAFeatherConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/boots/feather_falling/confirm

execute as @e[type=interaction,tag=ArenAEAFeatherConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/boots/feather_falling/apply_change