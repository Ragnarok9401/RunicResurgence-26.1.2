execute as @e[type=interaction,tag=ArenAEAFrostUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/boots/frost_walker/up_1
execute as @e[type=interaction,tag=ArenAEAFrostDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/boots/frost_walker/down_1
execute as @e[type=interaction,tag=ArenAEAFrostUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/boots/frost_walker/up_2
execute as @e[type=interaction,tag=ArenAEAFrostDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/boots/frost_walker/down_2


execute as @e[type=interaction,tag=ArenAEAFrostConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/boots/frost_walker/confirm

execute as @e[type=interaction,tag=ArenAEAFrostConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/boots/frost_walker/apply_change