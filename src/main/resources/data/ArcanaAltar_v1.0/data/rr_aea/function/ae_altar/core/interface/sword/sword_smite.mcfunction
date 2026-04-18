execute as @e[type=interaction,tag=ArenAEASmiteUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/smite/up_1
execute as @e[type=interaction,tag=ArenAEASmiteDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/smite/down_1
execute as @e[type=interaction,tag=ArenAEASmiteUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/smite/up_2
execute as @e[type=interaction,tag=ArenAEASmiteDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/sword/smite/down_2


execute as @e[type=interaction,tag=ArenAEASmiteConfirm] at @s if data entity @n[type=item_display,tag=ArenAEAIDMain,tag=ArenAEAIDMStart] item.components."minecraft:enchantments".minecraft:bane_of_arthropods if data entity @s interaction.timestamp run execute on target run tellraw @s [{"text":"[RR: ","color":"gray"},{"color":"#FFDB29","text":"A"},{"color":"#E8DE3C","text":"r"},{"color":"#D1E050","text":"c"},{"color":"#BAE363","text":"a"},{"color":"#A3E577","text":"n"},{"color":"#8CE88A","text":"a "},{"color":"#76EA9E","text":"A"},{"color":"#5FEDB1","text":"l"},{"color":"#48EFC5","text":"t"},{"color":"#31F2D8","text":"a"},{"text":"r","color":"#03F7FF"},{"text":"] ","color":"gray"},{"text":"This enchantment can not be applied","color":"red","italic":false}]

execute as @e[type=interaction,tag=ArenAEASmiteConfirm] at @s if data entity @n[type=item_display,tag=ArenAEAIDMain,tag=ArenAEAIDMStart] item.components."minecraft:enchantments".minecraft:sharpness if data entity @s interaction.timestamp run execute on target run tellraw @s [{"text":"[RR: ","color":"gray"},{"color":"#FFDB29","text":"A"},{"color":"#E8DE3C","text":"r"},{"color":"#D1E050","text":"c"},{"color":"#BAE363","text":"a"},{"color":"#A3E577","text":"n"},{"color":"#8CE88A","text":"a "},{"color":"#76EA9E","text":"A"},{"color":"#5FEDB1","text":"l"},{"color":"#48EFC5","text":"t"},{"color":"#31F2D8","text":"a"},{"text":"r","color":"#03F7FF"},{"text":"] ","color":"gray"},{"text":"This enchantment can not be applied","color":"red","italic":false}]


execute as @e[type=interaction,tag=ArenAEASmiteConfirm] at @s if data entity @n[type=item_display,tag=ArenAEAIDMain,tag=ArenAEAIDMStart] item.components."minecraft:enchantments".minecraft:bane_of_arthropods if data entity @s interaction.timestamp run execute as @n[type=item_display,tag=ArenAEAltar] at @s run function rr_aea:ae_altar/core/back/sword/sword_ench_smite

execute as @e[type=interaction,tag=ArenAEASmiteConfirm] at @s if data entity @n[type=item_display,tag=ArenAEAIDMain,tag=ArenAEAIDMStart] item.components."minecraft:enchantments".minecraft:sharpness if data entity @s interaction.timestamp run execute as @n[type=item_display,tag=ArenAEAltar] at @s run function rr_aea:ae_altar/core/back/sword/sword_ench_smite


execute as @e[type=interaction,tag=ArenAEASmiteConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/sword/smite/confirm

execute as @e[type=interaction,tag=ArenAEASmiteConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/sword/smite/apply_change

# Use this command to remove Smite, change Smite to remove any specific enchant
# /data remove entity x item.components.minecraft:custom_data.Enchantments[{id:"minecraft:Smite"}]

# Use this command to add Lore lines to the item, specifically for custom enchantments
# Also remember data modify entity x y insert [index] works too, for adding other lines in different places
# /data modify entity x item.components.minecraft:custom_data.display.Lore prepend value '[{"text":"insert text here","color":"gray","italic":false}]'