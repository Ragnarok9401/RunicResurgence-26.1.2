execute as @e[type=interaction,tag=ArenAEASoulUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/boots/soul_speed/up_1
execute as @e[type=interaction,tag=ArenAEASoulDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/boots/soul_speed/down_1
execute as @e[type=interaction,tag=ArenAEASoulUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/boots/soul_speed/up_2
execute as @e[type=interaction,tag=ArenAEASoulDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/boots/soul_speed/down_2


execute as @e[type=interaction,tag=ArenAEASoulConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/boots/soul_speed/confirm

execute as @e[type=interaction,tag=ArenAEASoulConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/boots/soul_speed/apply_change