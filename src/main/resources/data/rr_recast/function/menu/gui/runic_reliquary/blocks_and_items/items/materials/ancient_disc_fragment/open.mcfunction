function rr_recast:menu/gui/compendium/blocks_and_items/items/materials/mask
data modify storage rr.ui current set from storage rr.ui mask
execute on passengers run data modify entity @s data.page.mask set value "function rr_recast:menu/gui/compendium/blocks_and_items/items/materials/mask"
tellraw @p [{"text":"[RR: ","color":"gray"},{"color":"#A341A3","text":"R"},{"color":"#945EAF","text":"e"},{"color":"#867ABC","text":"c"},{"color":"#7797C8","text":"a"},{"color":"#68B4D4","text":"s"},{"color":"#4BEDED","text":"t"},{"text":"] ","color":"gray"},{"text":"Under construction!","color":"red"}]
execute as @p[distance=..3] at @s run playsound minecraft:block.note_block.cow_bell player @s ~ ~ ~ 0.75 0.5 0