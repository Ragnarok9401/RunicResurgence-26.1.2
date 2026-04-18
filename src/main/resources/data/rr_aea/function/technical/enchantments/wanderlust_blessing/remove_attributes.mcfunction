advancement revoke @s only aea_adv:enchantments/wanderlust_blessing/remove_wanderlust

execute as @s[predicate=rr_aea:held_items/armor/wanderlust] run return 0

attribute @s movement_speed modifier remove rr_aea:enchantment.wanderlust_blessing.movement_speed
attribute @s attack_damage modifier remove rr_aea:enchantment.wanderlust_blessing.attack_damage
attribute @s jump_strength modifier remove rr_aea:enchantment.wanderlust_blessing.jump_strength
attribute @s safe_fall_distance modifier remove rr_aea:enchantment.wanderlust_blessing.safe_fall
attribute @s block_break_speed modifier remove rr_aea:enchantment.wanderlust_blessing.break_speed
attribute @s block_interaction_range modifier remove rr_aea:enchantment.wanderlust_blessing.block_reach
attribute @s entity_interaction_range modifier remove rr_aea:enchantment.wanderlust_blessing.entity_reach
attribute @s luck modifier remove rr_aea:enchantment.wanderlust_blessing.luck