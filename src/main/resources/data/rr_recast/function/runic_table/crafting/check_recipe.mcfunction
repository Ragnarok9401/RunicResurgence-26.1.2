# ^-0.25 ^0.4375 ^-0.25 : Item 1

execute at @s as @e[type=interaction,distance=..10,tag=rr.runic_table.preview.interaction] at @s run kill @e[tag=rr.runic_table.preview,distance=..0.5]

# Havenite Crystal: 8x Havenite Shards, 1x Rare Havenite Shard
execute at @s positioned ^ ^0.4375 ^ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/havenite/gilded_havenite_shard as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/havenite/havenite_shard as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/havenite/havenite_shard as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/havenite/havenite_shard as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/havenite/havenite_shard as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/havenite/havenite_shard as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/havenite/havenite_shard as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/havenite/havenite_shard as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/havenite/havenite_shard positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/havenite/havenite_crystal_display

# Basic Runic Tablet: 6x Diamond, 1x Astral Essence, 1x Redstone Block, 1x Havenite Crystal
execute at @s positioned ^ ^0.4375 ^ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/havenite/havenite_crystal as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/vanilla/diamond as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/essences/astral_essence as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/vanilla/diamond as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/vanilla/diamond as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/vanilla/diamond as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/vanilla/diamond as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/vanilla/redstone_block as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/vanilla/diamond positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/tablets/basic_runic_tablet_display

# Dark Heart I: 6x Sculk, 1x Sculk Essence, 1x Eye of Ender, 1x Sculk Catalyst
execute at @s positioned ^ ^0.4375 ^ \
 as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/vanilla/ender_eye \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/vanilla/sculk \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/essences/sculk_essence \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/vanilla/sculk \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/vanilla/sculk \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/vanilla/sculk \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/vanilla/sculk \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/vanilla/sculk_shrieker \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/vanilla/sculk \
 positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/boss_item/necrosculker/suspicious_dark_heart_display

# Dark Heart I (Alternate Recipe): 6x Sculk, 1x Ominous Bottle, 1x Eye of Ender, 1x Sculk Catalyst
execute at @s positioned ^ ^0.4375 ^ \
 as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/vanilla/ender_eye \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/vanilla/sculk \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/vanilla/ominous_bottle \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/vanilla/sculk \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/vanilla/sculk \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/vanilla/sculk \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/vanilla/sculk \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/vanilla/sculk_shrieker \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/vanilla/sculk \
 positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/boss_item/necrosculker/suspicious_dark_heart_display

# Dark Heart II: 4x Sculk, 1x Potion of Darkness, 2x Warden Flesh, 1x Dark Heart I, 1x Obsidian
execute at @s positioned ^ ^0.4375 ^ \
 as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/boss_item/necrosculker/suspicious_dark_heart \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/vanilla/sculk \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/potion/darkness \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/vanilla/sculk \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/vanilla/sculk \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/vanilla/obsidian \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/vanilla/sculk \
 positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/boss_item/necrosculker/angered_dark_heart_display

# Blindness Potion: 1x Fermented Spider Eye, 2x Ink Sac, 1x Long Night Vision Potion, 1x Blaze Powder
execute at @s positioned ^ ^0.4375 ^ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/vanilla/night_vision_long unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/vanilla/fermented_spider_eye unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/vanilla/ink_sac as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/vanilla/ink_sac unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/vanilla/blaze_powder unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/potions/blindness/blindness_potion_display

# Darkness Potion: 1x Sculk Essence, 2x Sculk Vein, 1x Blindness Potion, 1x Blaze Powder
execute at @s positioned ^ ^0.4375 ^ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/potion/blindness unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/essences/sculk_essence unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/vanilla/sculk_vein as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/vanilla/sculk_vein unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/vanilla/blaze_powder unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/potions/darkness/darkness_potion_display

# Tenebrium Ingot: 2x Sculk Essence, 4x Warden Flesh, 2x Echo Shard, 1x Deep Dark Core
execute at @s positioned ^ ^0.4375 ^ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/deep_dark/deep_dark_core as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/essences/sculk_essence as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/vanilla/echo_shard as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/vanilla/echo_shard as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/essences/sculk_essence positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/tenebrium/ingot/tenebrium_ingot_display

# Tenebrium Helmet: 1x Sculk Essence, 3x Warden Flesh, 2x Tenebrium Ingot, 1x Deep Dark Crest
execute at @s positioned ^ ^0.4375 ^ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/deep_dark/deep_dark_crest as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/ingot/tenebrium as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/ingot/tenebrium unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/essences/sculk_essence unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/tenebrium/armor/helmet/tenebrium_helmet_display
# Tenebrium Helmet Alt: 1x Netherite Helmet, 3x Warden Flesh, 2x Tenebrium Ingot, 1x Deep Dark Crest
execute at @s positioned ^ ^0.4375 ^ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/deep_dark/deep_dark_crest as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/ingot/tenebrium as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/ingot/tenebrium unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/vanilla/netherite_helmet unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/tenebrium/armor/helmet/tenebrium_helmet_display_alt

# Tenebrium Chestplate: 1x Sculk Essence, 4x Warden Flesh, 3x Tenebrium Ingot, 1x Deep Dark Crest
execute at @s positioned ^ ^0.4375 ^ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/deep_dark/deep_dark_crest as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/ingot/tenebrium as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/essences/sculk_essence as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/ingot/tenebrium as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/ingot/tenebrium as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/tenebrium/armor/chestplate/tenebrium_chestplate_display
# Tenebrium Chestplate Alt: 1x Netherite Chestplate, 4x Warden Flesh, 3x Tenebrium Ingot, 1x Deep Dark Crest
execute at @s positioned ^ ^0.4375 ^ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/deep_dark/deep_dark_crest as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/ingot/tenebrium as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/vanilla/netherite_chestplate as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/ingot/tenebrium as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/ingot/tenebrium as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/tenebrium/armor/chestplate/tenebrium_chestplate_display_alt

# Tenebrium Leggings: 1x Sculk Essence, 4x Warden Flesh, 2x Tenebrium Ingot, 1x Deep Dark Crest
execute at @s positioned ^ ^0.4375 ^ \
 as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/essences/sculk_essence \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/deep_dark/deep_dark_crest \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/ingot/tenebrium \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/ingot/tenebrium \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh \
 unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh \
 positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/tenebrium/armor/leggings/tenebrium_leggings_display
# Tenebrium Leggings Alt: 1x Netherite Leggings, 4x Warden Flesh, 2x Tenebrium Ingot, 1x Deep Dark Crest
execute at @s positioned ^ ^0.4375 ^ \
 as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/vanilla/netherite_leggings \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/deep_dark/deep_dark_crest \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/ingot/tenebrium \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/ingot/tenebrium \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh \
 unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh \
 positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/tenebrium/armor/leggings/tenebrium_leggings_display_alt

# Tenebrium Boots: 1x Sculk Essence, 2x Warden Flesh, 2x Tenebrium Ingot, 1x Deep Dark Crest
execute at @s positioned ^ ^0.4375 ^ \
 as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/deep_dark/deep_dark_crest \
 unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/essences/sculk_essence \
 unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/ingot/tenebrium \
 unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/ingot/tenebrium \
 positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/tenebrium/armor/boots/tenebrium_boots_display
# Tenebrium Boots Alt: 1x Netherite Boots, 2x Warden Flesh, 2x Tenebrium Ingot, 1x Deep Dark Crest
execute at @s positioned ^ ^0.4375 ^ \
 as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/deep_dark/deep_dark_crest \
 unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/vanilla/netherite_boots \
 unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/ingot/tenebrium \
 unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/ingot/tenebrium \
 positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/tenebrium/armor/boots/tenebrium_boots_display_alt

# Dark Heart II: 4x Sculk, 1x Potion of Darkness, 2x Warden Flesh, 1x Dark Heart I, 1x Obsidian
execute at @s positioned ^ ^0.4375 ^ \
 as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/boss_item/necrosculker/suspicious_dark_heart \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/vanilla/sculk \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/potion/darkness \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/vanilla/sculk \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/vanilla/sculk \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/vanilla/obsidian \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/vanilla/sculk \
 positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/boss_item/necrosculker/angered_dark_heart_display

# Dark Heart III: 3x Diamond, 2x Amethyst Cluster, 1x Darkness Potion, 1x Dark Heart I, 2x Sculk Shrieker
execute at @s positioned ^ ^0.4375 ^ \
 as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/boss_item/necrosculker/angered_dark_heart \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/vanilla/diamond \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/vanilla/diamond \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/vanilla/diamond \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/vanilla/amethyst_cluster \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/vanilla/amethyst_cluster \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/vanilla/sculk_shrieker \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/potion/darkness \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/vanilla/sculk_shrieker \
 positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/boss_item/necrosculker/wrathful_dark_heart_display

# Dark Heart IV: 1x Necrosculker Crest, 2x Netherite Scrap, 2x Darkness Potion, 1x Dark Heart I, 2x Sculk Catalyst, 1x Tenebrium Ingot
execute at @s positioned ^ ^0.4375 ^ \
 as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/boss_item/necrosculker/wrathful_dark_heart \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/potion/darkness \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/deep_dark/deep_dark_crest \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/potion/darkness \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/vanilla/netherite_scrap \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/vanilla/netherite_scrap \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/vanilla/sculk_catalyst \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/ingot/tenebrium \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/vanilla/sculk_catalyst \
 positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/boss_item/necrosculker/perfect_dark_heart_display

# Tenebrium Falchion: 1x Sculk Falchion, 1x Netherite Ingot, 2x Crying Obsidian, 1x Necrosculker Crest, 2x Tenebrium Ingot, 2x Sculk Essence
execute at @s positioned ^ ^0.4375 ^ \
 as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/equipment/falchion/sculk_falchion \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/vanilla/crying_obsidian \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/vanilla/netherite_ingot \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/vanilla/crying_obsidian \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/ingot/tenebrium \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/ingot/tenebrium \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/essences/sculk_essence \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/deep_dark/deep_dark_crest \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/essences/sculk_essence \
 positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/tenebrium/weapon/falchion/tenebrium_falchion_display

# Tenebrium Bow: 1x Sculk Bow, 1x Netherite Ingot, 2x Crying Obsidian, 1x Necrosculker Crest, 2x Tenebrium Ingot, 2x Sculk Essence
execute at @s positioned ^ ^0.4375 ^ \
 as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/equipment/bow/sculk_bow \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/vanilla/crying_obsidian \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/vanilla/netherite_ingot \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/vanilla/crying_obsidian \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/ingot/tenebrium \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/ingot/tenebrium \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/essences/sculk_essence \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/deep_dark/deep_dark_crest \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/essences/sculk_essence \
 positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/tenebrium/weapon/bow/tenebrium_bow_display
 
# Music Disc - Sinking Feeling: 8x Disc Fragments [Ancient Crypt], 1x Sculk Essence
execute at @s positioned ^ ^0.4375 ^ \
 as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/essences/sculk_essence \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/disc/music_disc_sinking_feeling_display
 
# Music Disc - Deep Trouble: 8x Disc Fragments [Ancient Crypt], 1x Warden Flesh
execute at @s positioned ^ ^0.4375 ^ \
 as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/deep_dark/warden_flesh \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/disc/music_disc_deep_trouble_display
 
# Music Disc - Deep Trouble [Version 2]: 8x Disc Fragments [Ancient Crypt], 1x Deep Dark Core
execute at @s positioned ^ ^0.4375 ^ \
 as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/deep_dark/deep_dark_core \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/disc/music_disc_deep_trouble_2_display
 
# Music Disc - Deep Trouble [Void]: 8x Disc Fragments [Ancient Crypt], 1x Necrosculker Crest
execute at @s positioned ^ ^0.4375 ^ \
 as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/deep_dark/deep_dark_crest \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/disc/disc_fragment_ancient_crypt \
 positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/disc/music_disc_deep_trouble_3_display

# Transmission Pylon: 2x Havenite Crystals, 1x End Crystal, 2x Astral Essence, 1x Lodestone, 2x Ender Pearl, 1x Respawn Anchor
execute at @s positioned ^ ^0.4375 ^ \
 as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/vanilla/lodestone \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/havenite/havenite_crystal \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/vanilla/end_crystal \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/havenite/havenite_crystal \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/essences/astral_essence \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/essences/astral_essence \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/vanilla/ender_pearl \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/vanilla/respawn_anchor \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/vanilla/ender_pearl \
 positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/nexus/transmission_pylon_display

# Transmission Nexus: 4x Rare Havenite Crystals, 4x Astral Essence, 1x End Crystal
execute at @s positioned ^ ^0.4375 ^ \
 as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/vanilla/end_crystal \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/essences/astral_essence \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/havenite/havenite_crystal \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/essences/astral_essence \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/havenite/havenite_crystal \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/havenite/havenite_crystal \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/essences/astral_essence \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/havenite/havenite_crystal \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/essences/astral_essence \
 positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/nexus/transmission_nexus_display

# Minor Tincture of Healing: 4x Beetroot, 1x Glass
execute at @s positioned ^ ^0.4375 ^ \
 as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/vanilla/glass \
 unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/vanilla/beetroot \
 unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/vanilla/beetroot \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/vanilla/beetroot \
 unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/vanilla/beetroot \
 unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] \
 positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/tincture/healing/minor_display

# Modest Tincture of Healing: 4x Redstone, 4x Havenite Shard, 1x Minor Healing Tincture
execute at @s positioned ^ ^0.4375 ^ \
 as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/tincture/healing/minor \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/vanilla/redstone_dust \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/havenite/havenite_shard \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/vanilla/redstone_dust \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/havenite/havenite_shard \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/havenite/havenite_shard \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/vanilla/redstone_dust \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/havenite/havenite_shard \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/vanilla/redstone_dust \
 positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/tincture/healing/modest_display

# Moderate Tincture of Healing: 4x Glowstone Dust, 4x Amethyst, 1x Modest Healing Tincture
execute at @s positioned ^ ^0.4375 ^ \
 as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/tincture/healing/modest \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/vanilla/glowstone_dust \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/vanilla/amethyst_shard \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/vanilla/glowstone_dust \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/vanilla/amethyst_shard \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/vanilla/amethyst_shard \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/vanilla/glowstone_dust \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/vanilla/amethyst_shard \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/vanilla/glowstone_dust \
 positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/tincture/healing/moderate_display

# Major Tincture of Healing: 4x Honeycomb, 1x Glistering Melon, 2x Blaze Powder, 1x Golden Carrot, 1x Moderate Healing Tincture
execute at @s positioned ^ ^0.4375 ^ \
 as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/tincture/healing/moderate \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/vanilla/honeycomb \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/vanilla/glistering_melon \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/vanilla/honeycomb \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/vanilla/blaze_powder \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/vanilla/blaze_powder \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/vanilla/honeycomb \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/vanilla/golden_carrot \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/vanilla/honeycomb \
 positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/tincture/healing/major_display

# Massive Tincture of Healing: 4x Ghast Tears, 2x Torchflower Seeds, 2x Chorus Fruit, 1x Major Healing Tincture
execute at @s positioned ^ ^0.4375 ^ \
 as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/tincture/healing/major \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/vanilla/ghast_tear \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/vanilla/torchflower \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/vanilla/ghast_tear \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/vanilla/chorus_fruit \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/vanilla/chorus_fruit \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/vanilla/ghast_tear \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/vanilla/torchflower \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/vanilla/ghast_tear \
 positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/tincture/healing/massive_display


# Copper Buckler: 1x Wooden Buckler (any wood type), 4x Copper Ingot
execute at @s positioned ^ ^0.4375 ^ \
 as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/equipment/armor/shield/buckler/any/wooden \
 unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/vanilla/copper_ingot \
 unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/vanilla/copper_ingot \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/vanilla/copper_ingot \
 unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] \
 as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/vanilla/copper_ingot \
 unless entity @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] \
 positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/equipment/armor/shield/buckler/copper_display with entity @n[distance=..0.5,tag=rr.runic_table.item.5,type=item_display] item.components."minecraft:custom_data"

# Overworld Tome: 1x Book, 1x Grass Block, 1x Sapling, 1x Seed, 1x Stone, 1x Water Bucket (returned as Bucket), 1x Diamond, 1x Honeycomb Block, 1x Nautilus Shell
#execute at @s positioned ^ ^0.4375 ^ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/vanilla/book as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/vanilla/grass_block as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/vanilla/any_sapling as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/vanilla/any_seeds as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/vanilla/stone as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/vanilla/water_bucket as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/vanilla/diamond as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/vanilla/honeycomb_block as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/vanilla/nautilus_shell positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/compendiums/overworld_tome

# Nether Tome: 1x Book, 1x Warped Nylium, 1x Crimson Nylium, 1x Magma Cream, 1x Nether Wart, 1x Lava Bucket (returned as Bucket), 1x Quartz Block, 1x Soul Soil, 1x Glowstone
#execute at @s positioned ^ ^0.4375 ^ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/vanilla/book as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/vanilla/quartz_block as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/vanilla/soul_soil as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/vanilla/glowstone as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/vanilla/nether_wart as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/vanilla/lava_bucket as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/vanilla/crimson_nylium as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/vanilla/magma_cream as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/vanilla/warped_nylium positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/compendiums/nether_tome

# Enriched Runic Tablet: 2x Resin Clumps, 1x Blaze Powder, 2x Gold Blocks, 2x End Crystals, 1x Astral Essence, 1x Basic Runic Tablet
execute at @s positioned ^ ^0.4375 ^ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/tablets/basic_runic_tablet as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/vanilla/resin_clump as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/vanilla/blaze_powder as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/vanilla/resin_clump as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/vanilla/gold_block as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/vanilla/gold_block as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/vanilla/end_crystal as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/essences/astral_essence as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/vanilla/end_crystal positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/tablets/enriched_runic_tablet


# Loosely-Condensed Magic: 4x Astral Essence, 4x Blaze Powder, 1x Experience Bottle
#execute at @s positioned ^ ^0.4375 ^ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/vanilla/experience_bottle as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/vanilla/blaze_powder as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/essences/astral_essence as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/vanilla/blaze_powder as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/essences/astral_essence as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/essences/astral_essence as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/vanilla/blaze_powder as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/essences/astral_essence as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/vanilla/blaze_powder positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/magic/loosely-condensed_magic

# Havenite Ingot: 4x Gold Ingot, 2x Dragon Breath, 2x Loosely-Condensed Magic, 1x Havenite Crystal
#execute at @s positioned ^ ^0.4375 ^ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/havenite/havenite_crystal as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/vanilla/gold_ingot as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/vanilla/dragon_breath as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/vanilla/gold_ingot as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/magic/loosely-condensed_magic as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/magic/loosely-condensed_magic as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/vanilla/gold_ingot as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/vanilla/dragon_breath as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/vanilla/gold_ingot positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/havenite/havenite_ingot

# Soul Runic Tablet: 3x Loosely-Condensed Magic, 2x Havenite Ingot, 2x Netherite Ingot, 1x Deep Dark Core, 1x Enriched Runic Tablet
#execute at @s positioned ^ ^0.4375 ^ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/tablets/enriched_runic_tablet as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/deep_dark/deep_dark_core as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/havenite/havenite_ingot as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/magic/loosely-condensed_magic as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/havenite/havenite_ingot as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/vanilla/netherite_ingot as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/magic/loosely-condensed_magic as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/vanilla/netherite_ingot as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/magic/loosely-condensed_magic positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/tablets/soul_runic_tablet

# Hydro Charge: 3x Gunpowder, 2x Blue Ice, 1x Nautilus Shell, 1x Clay Ball
#execute at @s positioned ^ ^0.4375 ^ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/vanilla/clay_ball as @n[type=interaction,distance=..0.5,tag=rr.runic_table.slot.1] unless entity @n[type=item_display,distance=..0.3,tag=rr.runic_table.item.1] as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/vanilla/nautilus_shell as @n[type=interaction,distance=..0.5,tag=rr.runic_table.slot.3] unless entity @n[type=item_display,distance=..0.3,tag=rr.runic_table.item.3] as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/vanilla/blue_ice as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/vanilla/blue_ice as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/vanilla/gunpowder as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/vanilla/gunpowder as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/vanilla/gunpowder positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/charges/hydro_charge

# Earth Charge: 3x Magma Block, 2x Mud, 2x Gunpowder, 1x Amethyst Block, 1x Clay Ball
#execute at @s positioned ^ ^0.4375 ^ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/vanilla/clay_ball as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/vanilla/gunpowder as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/vanilla/amethyst_block as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/vanilla/gunpowder as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/vanilla/mud as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/vanilla/mud as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/vanilla/magma_block as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/vanilla/magma_block as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/vanilla/magma_block positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/charges/earth_charge

# Condensed Magic: 4x Loosely-Condensed Magic, 1x Hydro Charge, 1x Earth Charge, 1x Fire Charge, 1x Wind Charge, 1x Ender Eye
#execute at @s positioned ^ ^0.4375 ^ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/vanilla/ender_eye as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.1] if predicate rr_recast:held_items/item_display/charges/hydro_charge as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.2] if predicate rr_recast:held_items/item_display/magic/loosely-condensed_magic as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.3] if predicate rr_recast:held_items/item_display/charges/earth_charge as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.4] if predicate rr_recast:held_items/item_display/magic/loosely-condensed_magic as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/magic/loosely-condensed_magic as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.7] if predicate rr_recast:held_items/item_display/vanilla/fire_charge as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.8] if predicate rr_recast:held_items/item_display/magic/loosely-condensed_magic as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.9] if predicate rr_recast:held_items/item_display/vanilla/wind_charge positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/magic/condensed_magic

# Runic Compendium: 1x Book, 1x Parchment
#execute at @s positioned ^ ^0.4375 ^ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] at @s if predicate rr_recast:held_items/item_display/vanilla/book as @n[type=interaction,distance=..0.5,tag=rr.runic_table.slot.1] unless entity @n[type=item_display,distance=..0.3,tag=rr.runic_table.item.1] as @n[type=interaction,distance=..0.5,tag=rr.runic_table.slot.1] unless entity @n[type=item_display,distance=..0.3,tag=rr.runic_table.item.1] as @n[type=interaction,distance=..0.5,tag=rr.runic_table.slot.1] unless entity @n[type=item_display,distance=..0.3,tag=rr.runic_table.item.1] as @n[type=interaction,distance=..0.5,tag=rr.runic_table.slot.1] unless entity @n[type=item_display,distance=..0.3,tag=rr.runic_table.item.1] as @n[type=item_display,distance=..0.5,tag=rr.runic_table.item.6] if predicate rr_recast:held_items/item_display/parchment/parchment as @n[type=interaction,distance=..0.5,tag=rr.runic_table.slot.1] unless entity @n[type=item_display,distance=..0.3,tag=rr.runic_table.item.1] as @n[type=interaction,distance=..0.5,tag=rr.runic_table.slot.1] unless entity @n[type=item_display,distance=..0.3,tag=rr.runic_table.item.1] as @n[type=interaction,distance=..0.5,tag=rr.runic_table.slot.1] unless entity @n[type=item_display,distance=..0.3,tag=rr.runic_table.item.1] positioned ~ ~-0.4375 ~ as @n[type=item_display,tag=rr.runic_table.main,distance=..0.3] at @s run function rr_recast:runic_table/crafting/compendiums/runic_compendium
