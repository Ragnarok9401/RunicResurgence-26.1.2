execute as @e[type=interaction,tag=ArenAEAFervorUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/fervor/up_1
execute as @e[type=interaction,tag=ArenAEAFervorDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/fervor/down_1
execute as @e[type=interaction,tag=ArenAEAFervorUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/fervor/up_2
execute as @e[type=interaction,tag=ArenAEAFervorDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/fervor/down_2

execute as @e[type=interaction,tag=ArenAEAFervorConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/sword/fervor/confirm

execute as @e[type=interaction,tag=ArenAEAFervorConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/sword/fervor/apply_change