advancement revoke @s only rr_adv:runic_table/interact_preview

execute at @s as @e[type=interaction,distance=..10,tag=rr.runic_table.preview.interaction] at @s if data entity @s interaction run function rr_recast:runic_table/crafting/execute_recipe with entity @s data

execute at @s as @e[type=interaction,distance=..10,tag=rr.runic_table.preview.interaction] at @s if data entity @s interaction run kill @e[tag=rr.runic_table.preview,distance=..0.5]