execute as @e[type=interaction,tag=ArenAEAEchoUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/echo/up_1
execute as @e[type=interaction,tag=ArenAEAEchoDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/echo/down_1
execute as @e[type=interaction,tag=ArenAEAEchoUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/echo/up_2
execute as @e[type=interaction,tag=ArenAEAEchoDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/echo/down_2

execute as @e[type=interaction,tag=ArenAEAEchoConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/sword/echo/confirm

execute as @e[type=interaction,tag=ArenAEAEchoConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/sword/echo/apply_change