clear @s music_disc_cat[custom_data~{rr.equipment.placeholder:1b}]
execute as @e[type=item,distance=..10,nbt={Item:{id:"minecraft:music_disc_cat"}}] if data entity @s Item.components.minecraft:custom_data."rr.equipment.placeholder" run kill @s

execute as @s run function rr_recast:equipment/chest/placeholder_slot_attunement
execute as @s run function rr_recast:equipment/chest/placeholder_slot_companion
execute as @s run function rr_recast:equipment/chest/placeholder_slot_focus
execute as @s run function rr_recast:equipment/chest/placeholder_slot_pendant
execute as @s run function rr_recast:equipment/chest/placeholder_slot_relic_1
execute as @s run function rr_recast:equipment/chest/placeholder_slot_relic_2
execute as @s run function rr_recast:equipment/chest/placeholder_slot_relic_3
execute as @s run function rr_recast:equipment/chest/placeholder_slot_symbol

advancement revoke @s only rr_adv:equipment/chest/slot_placeholder_check
advancement revoke @s only rr_adv:equipment/chest/slot_placeholder_drop_check