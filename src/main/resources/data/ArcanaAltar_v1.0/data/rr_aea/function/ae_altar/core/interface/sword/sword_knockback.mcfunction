execute as @e[type=interaction,tag=ArenAEAKnockbackUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/knockback/up_1
execute as @e[type=interaction,tag=ArenAEAKnockbackDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/knockback/down_1
execute as @e[type=interaction,tag=ArenAEAKnockbackUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/knockback/up_2
execute as @e[type=interaction,tag=ArenAEAKnockbackDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/knockback/down_2

execute as @e[type=interaction,tag=ArenAEAKnockbackConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/sword/knockback/confirm

execute as @e[type=interaction,tag=ArenAEAKnockbackConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/sword/knockback/apply_change

# Use this command to remove knockback, change knockback to remove any specific enchant
# /data remove entity x item.components.minecraft:custom_data.Enchantments[{id:"minecraft:knockback"}]

# Use this command to add Lore lines to the item, specifically for custom enchantments
# Also remember data modify entity x y insert [index] works too, for adding other lines in different places
# /data modify entity x item.components.minecraft:custom_data.display.Lore prepend value '[{"text":"insert text here","color":"gray","italic":false}]'