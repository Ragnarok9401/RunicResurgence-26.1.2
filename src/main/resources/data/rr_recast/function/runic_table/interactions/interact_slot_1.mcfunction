advancement revoke @s only rr_adv:runic_table/interact_slot_1

execute as @n[type=item_display,tag=rr.runic_table.main,tag=rr.runic_table.active,distance=..12] run function rr_recast:runic_table/clear_previews

# Catch no items held
execute as @s[predicate=!rr_recast:held_items/mainhand/holding_single_item] at @n[type=interaction,distance=..12,tag=rr.runic_table.slot.1] unless entity @n[type=item_display,tag=rr.runic_table.item.1,distance=..0.01] unless items entity @s weapon.mainhand * run return fail


# If the Item Display has the same item that the player is holding, just return the item and do nothing else
execute as @s[] at @n[type=interaction,distance=..10,tag=rr.runic_table.slot.1] run scoreboard players set @n[type=interaction,distance=..0.5,tag=rr.runic_table.slot.1] rr.math.A 0
execute as @s[] at @n[type=interaction,distance=..10,tag=rr.runic_table.slot.1] run data modify entity @n[type=interaction,distance=..0.5,tag=rr.runic_table.slot.1] data.temp set from entity @s SelectedItem.id
execute as @s[] at @n[type=interaction,distance=..10,tag=rr.runic_table.slot.1] store success score @n[type=interaction,distance=..0.5,tag=rr.runic_table.slot.1] rr.math.A run data modify entity @n[type=interaction,distance=..0.5,tag=rr.runic_table.slot.1] data.temp set from entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] item.id
execute as @s[] at @n[type=interaction,distance=..10,tag=rr.runic_table.slot.1,scores={rr.math.A=0}] if data entity @s SelectedItem.components run data modify entity @n[type=interaction,distance=..0.5,tag=rr.runic_table.slot.1] data.temp set from entity @s SelectedItem.components
execute as @s[] at @n[type=interaction,distance=..10,tag=rr.runic_table.slot.1,scores={rr.math.A=0}] if data entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] item.components store success score @n[type=interaction,distance=..0.5,tag=rr.runic_table.slot.1] rr.math.A run data modify entity @n[type=interaction,distance=..0.5,tag=rr.runic_table.slot.1] data.temp set from entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] item.components
execute as @s[] at @n[type=interaction,distance=..10,tag=rr.runic_table.slot.1,scores={rr.math.A=0}] if entity @n[type=item_display,tag=rr.runic_table.item.1,distance=..0.1] run tag @n[type=interaction,distance=..0.1,tag=rr.runic_table.slot.1] add rr.runic_table.no_replacement
execute as @s[] at @n[type=interaction,distance=..10,tag=rr.runic_table.slot.1] run data remove entity @n[type=interaction,distance=..0.1,tag=rr.runic_table.slot.1] data.temp


# Play sounds if switching/removing items (sound for inserting new item is played later in file)
execute as @s[predicate=rr_recast:held_items/mainhand/not_empty] at @n[type=interaction,distance=..10,tag=rr.runic_table.slot.1] if data entity @n[type=interaction,distance=..0.01,tag=rr.runic_table.slot.1,scores={rr.math.A=1}] interaction if entity @n[type=item_display,distance=..0.01,tag=rr.runic_table.item.1,tag=!rr.runic_table.item.1.unset] run playsound block.vault.insert_item block @a[distance=..20] ~ ~ ~ 0.4 1.5 0
execute as @s[predicate=rr_recast:held_items/mainhand/not_empty] at @n[type=interaction,distance=..10,tag=rr.runic_table.slot.1] if data entity @n[type=interaction,distance=..0.01,tag=rr.runic_table.slot.1,scores={rr.math.A=0}] interaction if entity @n[type=item_display,distance=..0.01,tag=rr.runic_table.item.1,tag=!rr.runic_table.item.1.unset] run playsound block.vault.insert_item_fail block @a[distance=..20] ~ ~ ~ 0.4 1.5 0
execute as @s[predicate=!rr_recast:held_items/mainhand/not_empty] at @n[type=interaction,distance=..12,tag=rr.runic_table.slot.1] if entity @n[type=item_display,tag=rr.runic_table.item.1,tag=!rr.runic_table.item.1.unset,distance=..0.01] unless items entity @s weapon.mainhand * run playsound block.vault.insert_item_fail block @a[distance=..20] ~ ~ ~ 0.4 1.5 0


# If there is an item display already here, give the Item Display's item back to the player and allow the new item to be placed in
execute as @s[] at @n[type=interaction,distance=..10,tag=rr.runic_table.slot.1] if data entity @n[type=interaction,distance=..0.01,tag=rr.runic_table.slot.1] interaction if entity @n[type=item_display,distance=..0.01,tag=rr.runic_table.item.1,tag=!rr.runic_table.item.1.unset] positioned ~ ~-0.4 ~ at @s run summon item ~ ~0.5 ~ {Item:{id:"minecraft:ghast_tear",count:1},Tags:["rr.runic_table.item_removed","rr.runic_table.check_item"],PickupDelay:0}
execute as @s[] at @n[type=interaction,distance=..10,tag=rr.runic_table.slot.1] if data entity @n[type=interaction,distance=..0.01,tag=rr.runic_table.slot.1] interaction if entity @n[type=item_display,distance=..0.01,tag=rr.runic_table.item.1,tag=!rr.runic_table.item.1.unset] as @n[type=item,distance=..10,tag=rr.runic_table.item_removed,tag=rr.runic_table.check_item] run data modify entity @s Item set from entity @n[type=item_display,distance=..0.01,tag=rr.runic_table.item.1] item
execute as @s[] at @n[type=interaction,distance=..10,tag=rr.runic_table.slot.1] if data entity @n[type=interaction,distance=..0.01,tag=rr.runic_table.slot.1] interaction if entity @n[type=item_display,distance=..0.01,tag=rr.runic_table.item.1,tag=!rr.runic_table.item.1.unset] run kill @n[type=item_display,distance=..0.01,tag=rr.runic_table.item.1]


# If there is no item display here, make a new one
execute as @s[predicate=rr_recast:held_items/mainhand/not_empty] at @n[type=interaction,distance=..10,tag=rr.runic_table.slot.1] if entity @n[type=interaction,distance=..0.1,tag=rr.runic_table.slot.1,tag=!rr.runic_table.no_replacement] if data entity @n[type=interaction,distance=..0.01,tag=rr.runic_table.slot.1] interaction unless entity @n[type=item_display,distance=..0.01,tag=rr.runic_table.item.1,tag=!rr.runic_table.item.1.unset] run summon item_display ~ ~ ~ {billboard:"vertical",item_display:"ground",Tags:["rr.runic_table","rr.runic_table.item.1","rr.runic_table.item","rr.runic_table.item.1.unset"],transformation:{left_rotation:[0f,180f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute as @s[predicate=rr_recast:held_items/mainhand/not_empty] at @n[type=interaction,distance=..10,tag=rr.runic_table.slot.1] if entity @n[type=interaction,distance=..0.1,tag=rr.runic_table.slot.1,tag=!rr.runic_table.no_replacement] if data entity @n[type=interaction,distance=..0.01,tag=rr.runic_table.slot.1] interaction if entity @n[type=item_display,distance=..0.01,tag=rr.runic_table.item.1,tag=rr.runic_table.item.1.unset] run data modify entity @n[type=item_display,distance=..0.01,tag=rr.runic_table.item.1] item set from entity @s SelectedItem
execute as @s[predicate=rr_recast:held_items/mainhand/not_empty] at @n[type=interaction,distance=..10,tag=rr.runic_table.slot.1] if entity @n[type=interaction,distance=..0.1,tag=rr.runic_table.slot.1,tag=!rr.runic_table.no_replacement] if data entity @n[type=interaction,distance=..0.01,tag=rr.runic_table.slot.1] interaction if entity @n[type=item_display,distance=..0.01,tag=rr.runic_table.item.1,tag=rr.runic_table.item.1.unset] run item modify entity @n[type=item_display,distance=..0.01,tag=rr.runic_table.item.1] contents rr_recast:count/set_count_to_1
execute as @s[predicate=rr_recast:held_items/mainhand/not_empty] at @n[type=interaction,distance=..10,tag=rr.runic_table.slot.1] if entity @n[type=interaction,distance=..0.1,tag=rr.runic_table.slot.1,tag=!rr.runic_table.no_replacement] if data entity @n[type=interaction,distance=..0.01,tag=rr.runic_table.slot.1] interaction if entity @n[type=item_display,distance=..0.01,tag=rr.runic_table.item.1,tag=rr.runic_table.item.1.unset] unless entity @n[type=item,distance=..10,tag=rr.runic_table.check_item] run playsound block.vault.open_shutter block @a[distance=..20] ~ ~ ~ 0.35 1.8 0
execute as @s[predicate=rr_recast:held_items/mainhand/not_empty] at @n[type=interaction,distance=..10,tag=rr.runic_table.slot.1] if entity @n[type=interaction,distance=..0.1,tag=rr.runic_table.slot.1,tag=!rr.runic_table.no_replacement] if data entity @n[type=interaction,distance=..0.01,tag=rr.runic_table.slot.1] interaction if entity @n[type=item_display,distance=..0.01,tag=rr.runic_table.item.1,tag=rr.runic_table.item.1.unset] run item modify entity @s weapon.mainhand rr_recast:count/decrement_count


# Remove rr.runic_table.item.1.unset tag
execute as @s at @n[type=interaction,distance=..10,tag=rr.runic_table.slot.1] if data entity @n[type=interaction,distance=..0.01,tag=rr.runic_table.slot.1] interaction if entity @n[type=item_display,distance=..0.01,tag=rr.runic_table.item.1] run tag @n[type=item_display,distance=..0.01,tag=rr.runic_table.item.1,tag=rr.runic_table.item.1.unset] remove rr.runic_table.item.1.unset


# Remove rr.runic_table.no_replacement tag
execute as @s at @n[type=interaction,distance=..10,tag=rr.runic_table.slot.1] run tag @n[type=interaction,distance=..0.1,tag=rr.runic_table.slot.1] remove rr.runic_table.no_replacement


# Remove rr.runic_table.check_item tag
execute as @s at @s run tag @e[type=item,distance=..10,tag=rr.runic_table.check_item] remove rr.runic_table.check_item


# Reset Interaction to default state without Interaction data
execute as @s[] as @e[type=interaction,distance=..12,tag=rr.runic_table.slot.1] at @s if data entity @s interaction run summon interaction ~ ~ ~ {width:0.125,height:0.125,Tags:["rr.runic_table","rr.runic_table.slot","rr.runic_table.slot.1"]}
execute as @s[] as @e[type=interaction,distance=..12,tag=rr.runic_table.slot.1] at @s if data entity @s interaction run kill @s


# Finally, check recipes
execute as @n[type=item_display,tag=rr.runic_table.main,tag=rr.runic_table.active,distance=..12] at @s run function rr_recast:runic_table/crafting/check_recipe