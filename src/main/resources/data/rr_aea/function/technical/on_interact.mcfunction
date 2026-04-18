advancement revoke @s only aea_adv:technical/interact


# Remove the Arcana Altar if the slot is clicked with a Pickaxe while sneaking
execute if items entity @s[predicate=rr_aea:player_conditions/sneaking] weapon.mainhand #minecraft:pickaxes as @e[type=interaction,tag=ArenAEATable,distance=..12] at @s if data entity @s interaction run function rr_aea:ae_altar/remove_altar

# If clicked with any valid item, run Core Functions of the Enchanting Altar (check for items, show options, etc.)
#execute at @s as @n[tag=ArenAEAltar,tag=!ArenAEAInUse,distance=..12,type=item_display] at @s run function rr_aea:ae_altar/core/start_core
#execute at @s as @n[tag=ArenAEAltar,tag=ArenAEAInUse,distance=..12,type=item_display] at @s run function rr_aea:ae_altar/core/active_core

# # If clicked with a Spell Script, initiate a Wordle-like minigame to decipher the spell and learn it permanently
# execute at @s[predicate=rr_recast:held_items/mainhand/spell_script] if entity @n[tag=ArenAEAltar,tag=!ArenAEAInUse,distance=..12,type=item_display] run tag @s add aea.player.placing_script
# execute at @s[predicate=rr_recast:held_items/mainhand/spell_script,tag=aea.player.placing_script] as @n[tag=ArenAEAltar,tag=!ArenAEAInUse,distance=..12,type=item_display] at @s run function rr_aea:ae_altar/core/scriptsearch/initiate with entity @p[predicate=rr_recast:held_items/mainhand/spell_script,tag=aea.player.placing_script] SelectedItem.components."minecraft:custom_data".spell_script

# If the slot is clicked with any other item, just reset the interaction
execute unless items entity @s weapon.mainhand #minecraft:pickaxes as @e[type=interaction,tag=ArenAEATable,distance=..12] at @s if data entity @s interaction run function rr_aea:ae_altar/reset_interaction