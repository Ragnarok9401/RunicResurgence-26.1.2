execute as @e[type=interaction,tag=ArenAEAMultishotUp1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/multishot/up_1
execute as @e[type=interaction,tag=ArenAEAMultishotDown1] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/multishot/down_1
execute as @e[type=interaction,tag=ArenAEAMultishotUp2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/multishot/up_2
execute as @e[type=interaction,tag=ArenAEAMultishotDown2] at @s if data entity @s interaction.timestamp run function rr_aea:ae_altar/core/interface/bow/multishot/down_2

execute as @n[type=marker,tag=ArenAEADTMain,distance=..5] at @s store result score @s aea.math.A run data get entity @n[type=item_display,distance=..1.5] item.components.minecraft:enchantments."rr_aea:rebound"
execute as @n[type=marker,tag=ArenAEADTMain,distance=..5] at @s store result score @s aea.math.B run data get entity @n[type=item_display,distance=..1.5] item.components.minecraft:enchantments."rr_aea:recursion"
execute as @n[type=marker,tag=ArenAEADTMain,distance=..5] at @s store result score @s aea.math.G run data get entity @n[type=item_display,distance=..1.5] item.components.minecraft:enchantments."rr_aea:tether"

execute as @n[type=marker,tag=ArenAEADTMain,distance=..5] at @s run scoreboard players set @s aea.math.C 0
execute as @n[type=marker,tag=ArenAEADTMain,distance=..5] at @s if score @s aea.math.A matches 1.. if score @s aea.math.B matches 1.. run scoreboard players set @s aea.math.C 1

execute as @e[type=interaction,tag=ArenAEAMultishotConfirm] at @s unless score @n[type=marker,tag=ArenAEADTMain,distance=..5] aea.math.C matches ..0 if data entity @s interaction.timestamp run execute on target run tellraw @s [{"text":"[RR: ","color":"gray"},{"color":"#FFDB29","text":"A"},{"color":"#E8DE3C","text":"r"},{"color":"#D1E050","text":"c"},{"color":"#BAE363","text":"a"},{"color":"#A3E577","text":"n"},{"color":"#8CE88A","text":"a "},{"color":"#76EA9E","text":"A"},{"color":"#5FEDB1","text":"l"},{"color":"#48EFC5","text":"t"},{"color":"#31F2D8","text":"a"},{"text":"r","color":"#03F7FF"},{"text":"] ","color":"gray"},{"text":"Incompatible with Rebound & Recursion!","color":"red","italic":false}]
execute as @e[type=interaction,tag=ArenAEAMultishotConfirm] at @s unless score @n[type=marker,tag=ArenAEADTMain,distance=..5] aea.math.G matches ..0 if data entity @s interaction.timestamp run execute on target run tellraw @s [{"text":"[RR: ","color":"gray"},{"color":"#FFDB29","text":"A"},{"color":"#E8DE3C","text":"r"},{"color":"#D1E050","text":"c"},{"color":"#BAE363","text":"a"},{"color":"#A3E577","text":"n"},{"color":"#8CE88A","text":"a "},{"color":"#76EA9E","text":"A"},{"color":"#5FEDB1","text":"l"},{"color":"#48EFC5","text":"t"},{"color":"#31F2D8","text":"a"},{"text":"r","color":"#03F7FF"},{"text":"] ","color":"gray"},{"text":"Incompatible with Tether!","color":"red","italic":false}]


execute as @e[type=interaction,tag=ArenAEAMultishotConfirm] at @s unless score @n[type=marker,tag=ArenAEADTMain,distance=..5] aea.math.C matches ..0 if data entity @s interaction.timestamp run execute as @n[type=item_display,tag=ArenAEAltar] at @s run function rr_aea:ae_altar/core/back/bow/bow_ench_multishot
execute as @e[type=interaction,tag=ArenAEAMultishotConfirm] at @s unless score @n[type=marker,tag=ArenAEADTMain,distance=..5] aea.math.G matches ..0 if data entity @s interaction.timestamp run execute as @n[type=item_display,tag=ArenAEAltar] at @s run function rr_aea:ae_altar/core/back/bow/bow_ench_multishot


execute as @e[type=interaction,tag=ArenAEAMultishotConfirm] at @s if score @n[type=marker,tag=ArenAEADTMain,distance=..5] aea.math.C matches ..0 if score @n[type=marker,tag=ArenAEADTMain,distance=..5] aea.math.G matches ..0 if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/bow/multishot/confirm

execute as @e[type=interaction,tag=ArenAEAMultishotConfirm] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/bow/multishot/confirm

execute as @e[type=interaction,tag=ArenAEAMultishotConfirm2] at @s if data entity @s interaction.timestamp run execute on target run execute as @s at @n[type=marker,tag=ArenAEADTMain,distance=..15] run function rr_aea:ae_altar/core/interface/bow/multishot/apply_change