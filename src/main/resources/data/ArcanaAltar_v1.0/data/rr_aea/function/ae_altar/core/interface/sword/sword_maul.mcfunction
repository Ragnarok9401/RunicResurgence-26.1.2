execute as @e[type=interaction,tag=ArenAEAMaulUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/maul/up_1
execute as @e[type=interaction,tag=ArenAEAMaulDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/maul/down_1
execute as @e[type=interaction,tag=ArenAEAMaulUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/maul/up_2
execute as @e[type=interaction,tag=ArenAEAMaulDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/maul/down_2

execute as @e[type=interaction,tag=ArenAEAMaulConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/sword/maul/confirm

execute as @e[type=interaction,tag=ArenAEAMaulConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/sword/maul/apply_change