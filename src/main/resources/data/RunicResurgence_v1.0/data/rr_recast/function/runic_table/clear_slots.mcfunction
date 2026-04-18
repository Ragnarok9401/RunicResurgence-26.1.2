summon item ~ ~ ~ {Item:{id:"minecraft:stone"}}
execute as @n[type=item,distance=..0.1] run data modify entity @s Item set from entity @n[type=item_display,distance=..0.1,tag=rr.runic_table.item] item
tag @n[type=item,distance=..0.1] add rr.runic_table.item
kill @n[type=item_display,tag=rr.runic_table.item,distance=..0.1]