execute as @e[type=interaction,tag=ArenAEAAwakenedUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/awakened/up_1
execute as @e[type=interaction,tag=ArenAEAAwakenedDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/awakened/down_1
execute as @e[type=interaction,tag=ArenAEAAwakenedUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/awakened/up_2
execute as @e[type=interaction,tag=ArenAEAAwakenedDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/awakened/down_2

execute as @e[type=interaction,tag=ArenAEAAwakenedConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/bow/awakened/confirm

execute as @e[type=interaction,tag=ArenAEAAwakenedConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/bow/awakened/apply_change