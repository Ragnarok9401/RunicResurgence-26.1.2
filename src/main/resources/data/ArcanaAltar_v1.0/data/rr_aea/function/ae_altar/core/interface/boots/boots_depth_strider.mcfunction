execute as @e[type=interaction,tag=ArenAEADepthUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/boots/depth_strider/up_1
execute as @e[type=interaction,tag=ArenAEADepthDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/boots/depth_strider/down_1
execute as @e[type=interaction,tag=ArenAEADepthUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/boots/depth_strider/up_2
execute as @e[type=interaction,tag=ArenAEADepthDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/boots/depth_strider/down_2


execute as @e[type=interaction,tag=ArenAEADepthConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/boots/depth_strider/confirm

execute as @e[type=interaction,tag=ArenAEADepthConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/boots/depth_strider/apply_change