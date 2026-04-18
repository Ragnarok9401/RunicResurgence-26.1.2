execute as @e[type=interaction,tag=ArenAEAFlameUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/flame/up_1
execute as @e[type=interaction,tag=ArenAEAFlameDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/flame/down_1
execute as @e[type=interaction,tag=ArenAEAFlameUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/flame/up_2
execute as @e[type=interaction,tag=ArenAEAFlameDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/flame/down_2

execute as @e[type=interaction,tag=ArenAEAFlameConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/bow/flame/confirm

execute as @e[type=interaction,tag=ArenAEAFlameConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/bow/flame/apply_change