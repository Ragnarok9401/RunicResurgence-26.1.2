execute as @e[type=interaction,tag=ArenAEASwiftSneakUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/leggings/swift_sneak/up_1
execute as @e[type=interaction,tag=ArenAEASwiftSneakDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/leggings/swift_sneak/down_1
execute as @e[type=interaction,tag=ArenAEASwiftSneakUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/leggings/swift_sneak/up_2
execute as @e[type=interaction,tag=ArenAEASwiftSneakDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/leggings/swift_sneak/down_2


execute as @e[type=interaction,tag=ArenAEASwiftSneakConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/leggings/swift_sneak/confirm

execute as @e[type=interaction,tag=ArenAEASwiftSneakConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/leggings/swift_sneak/apply_change