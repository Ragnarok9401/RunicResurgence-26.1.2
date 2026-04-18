execute as @e[type=interaction,tag=ArenAEAThornsUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/helmet/thorns/up_1
execute as @e[type=interaction,tag=ArenAEAThornsDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/helmet/thorns/down_1
execute as @e[type=interaction,tag=ArenAEAThornsUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/helmet/thorns/up_2
execute as @e[type=interaction,tag=ArenAEAThornsDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/helmet/thorns/down_2


execute as @e[type=interaction,tag=ArenAEAThornsConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/helmet/thorns/confirm

execute as @e[type=interaction,tag=ArenAEAThornsConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/helmet/thorns/apply_change