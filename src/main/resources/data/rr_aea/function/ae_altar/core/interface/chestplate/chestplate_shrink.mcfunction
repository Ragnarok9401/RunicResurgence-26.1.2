execute as @e[type=interaction,tag=ArenAEAShrinkUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/chestplate/shrink/up_1
execute as @e[type=interaction,tag=ArenAEAShrinkDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/chestplate/shrink/down_1
execute as @e[type=interaction,tag=ArenAEAShrinkUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/chestplate/shrink/up_2
execute as @e[type=interaction,tag=ArenAEAShrinkDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/chestplate/shrink/down_2

execute as @n[type=marker,tag=ArenAEADTMain,distance=..5] at @s store result score @s aea.math.A run data get entity @n[type=item_display,distance=..1.5] item.components."minecraft:enchantments".rr_aea:enlarge


execute as @e[type=interaction,tag=ArenAEAShrinkConfirm] at @s unless score @n[type=marker,tag=ArenAEADTMain,distance=..5] aea.math.A matches ..0 if data entity @s interaction.timestamp run execute on target run tellraw @s [{"text":"[RR: ","color":"gray"},{"color":"#FFDB29","text":"A"},{"color":"#E8DE3C","text":"r"},{"color":"#D1E050","text":"c"},{"color":"#BAE363","text":"a"},{"color":"#A3E577","text":"n"},{"color":"#8CE88A","text":"a "},{"color":"#76EA9E","text":"A"},{"color":"#5FEDB1","text":"l"},{"color":"#48EFC5","text":"t"},{"color":"#31F2D8","text":"a"},{"text":"r","color":"#03F7FF"},{"text":"] ","color":"gray"},{"text":"This enchantment can not be applied","color":"red","italic":false}]


execute as @e[type=interaction,tag=ArenAEAShrinkConfirm] at @s unless score @n[type=marker,tag=ArenAEADTMain,distance=..5] aea.math.A matches ..0 if data entity @s interaction.timestamp run execute as @n[type=item_display,tag=ArenAEAltar] at @s run function rr_aea:ae_altar/core/back/chestplate/chestplate_ench_shrink

execute as @e[type=interaction,tag=ArenAEAShrinkConfirm] at @s unless score @n[type=marker,tag=ArenAEADTMain,distance=..5] aea.math.A matches ..0 if data entity @s interaction.timestamp run return fail


execute as @e[type=interaction,tag=ArenAEAShrinkConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/chestplate/shrink/confirm

execute as @e[type=interaction,tag=ArenAEAShrinkConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/chestplate/shrink/apply_change