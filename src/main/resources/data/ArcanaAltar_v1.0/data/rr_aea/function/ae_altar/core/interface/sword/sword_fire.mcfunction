execute as @e[type=interaction,tag=ArenAEAFireUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/fire_aspect/up_1
execute as @e[type=interaction,tag=ArenAEAFireDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/fire_aspect/down_1
execute as @e[type=interaction,tag=ArenAEAFireUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/fire_aspect/up_2
execute as @e[type=interaction,tag=ArenAEAFireDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/fire_aspect/down_2

execute as @e[type=interaction,tag=ArenAEAFireConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/sword/fire_aspect/confirm

execute as @e[type=interaction,tag=ArenAEAFireConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/sword/fire_aspect/apply_change