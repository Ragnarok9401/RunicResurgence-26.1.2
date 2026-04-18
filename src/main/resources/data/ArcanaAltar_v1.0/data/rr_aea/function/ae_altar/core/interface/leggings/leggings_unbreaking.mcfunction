execute as @e[type=interaction,tag=ArenAEAUnbreakingUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/leggings/unbreaking/up_1
execute as @e[type=interaction,tag=ArenAEAUnbreakingDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/leggings/unbreaking/down_1
execute as @e[type=interaction,tag=ArenAEAUnbreakingUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/leggings/unbreaking/up_2
execute as @e[type=interaction,tag=ArenAEAUnbreakingDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/leggings/unbreaking/down_2


execute as @e[type=interaction,tag=ArenAEAUnbreakingConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/leggings/unbreaking/confirm

execute as @e[type=interaction,tag=ArenAEAUnbreakingConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/leggings/unbreaking/apply_change