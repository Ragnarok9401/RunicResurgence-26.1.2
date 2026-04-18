execute as @e[type=interaction,tag=ArenAEAAquaUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/helmet/aqua_affinity/up_1
execute as @e[type=interaction,tag=ArenAEAAquaDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/helmet/aqua_affinity/down_1
execute as @e[type=interaction,tag=ArenAEAAquaUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/helmet/aqua_affinity/up_2
execute as @e[type=interaction,tag=ArenAEAAquaDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/helmet/aqua_affinity/down_2


execute as @e[type=interaction,tag=ArenAEAAquaConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/helmet/aqua_affinity/confirm

execute as @e[type=interaction,tag=ArenAEAAquaConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/helmet/aqua_affinity/apply_change