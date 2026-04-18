execute as @s store result score @s aea.math.A run data get entity @s XpLevel
execute as @s unless score @s aea.math.A >= @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] aea.math.H run tellraw @s [{"text":"[RR: ","color":"gray"},{"color":"#FFDB29","text":"A"},{"color":"#E8DE3C","text":"r"},{"color":"#D1E050","text":"c"},{"color":"#BAE363","text":"a"},{"color":"#A3E577","text":"n"},{"color":"#8CE88A","text":"a "},{"color":"#76EA9E","text":"A"},{"color":"#5FEDB1","text":"l"},{"color":"#48EFC5","text":"t"},{"color":"#31F2D8","text":"a"},{"text":"r","color":"#03F7FF"},{"text":"] ","color":"gray"},{"text":"You do not have enough experience to apply this change","color":"red","italic":false}]
execute as @s if score @s aea.math.A >= @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] aea.math.H run tag @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] add ArenApplyEnch
execute as @s if score @s aea.math.A >= @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] aea.math.H run scoreboard players operation @s aea.math.H += @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] aea.math.H
execute as @s if score @s aea.math.A >= @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] aea.math.H run scoreboard players add @s aea.stats.arcane_enchantments_performed 1

execute store result entity @n[type=marker,tag=ArenAEADTMain,distance=..15] data.aea.xp_cost int 1 run scoreboard players get @n[type=marker,limit=1,sort=nearest,tag=ArenAEADTMain,distance=..5] aea.math.H
execute as @s[gamemode=!creative] run function rr_aea:ae_altar/core/take_xp with entity @n[type=marker,tag=ArenAEADTMain,distance=..1] data.aea

execute as @n[tag=ArenApplyEnch,type=marker,distance=..15] at @s run particle enchant ^0.5 ^2.5 ^ 0 0 0 2 35 force @a[distance=..30]

execute as @n[tag=ArenApplyEnch,type=marker,distance=..15] run data remove entity @n[type=item_display,tag=ArenAEAIDMain,tag=ArenAEAIDMStart] item.components."minecraft:enchantments".minecraft:mending
execute as @n[tag=ArenApplyEnch,type=marker,distance=..15] if score @s aea.math.F matches 1 run data modify entity @n[type=item_display,tag=ArenAEAIDMain,tag=ArenAEAIDMStart] item.components."minecraft:enchantments".minecraft:mending set value 1

execute as @n[tag=ArenApplyEnch,type=marker,distance=..1.5] run playsound minecraft:item.trident.thunder player @a[distance=..15] ~ ~ ~ 0.3 1.333 0
execute as @n[tag=ArenApplyEnch,type=marker,distance=..1.5] run playsound minecraft:block.enchantment_table.use player @a[distance=..15] ~ ~ ~ 0.85 0.8 0

execute as @n[tag=ArenApplyEnch,type=marker,distance=..1.5] run tag @s remove ArenApplyEnch

execute as @n[type=item_display,tag=ArenAEAltar] at @s run function rr_aea:ae_altar/core/back/chestplate/chestplate_ench_mending