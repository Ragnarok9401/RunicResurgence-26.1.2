# Basic Setup
function rr_recast:technical/block/scriptscrying_table/arcane/create_minigame_ring

# If Spell Script came with additional data, apply it to current Minigame instance
execute if data entity @n[distance=..0.55,tag=rr.block.scriptscrying_table.item_display.script,type=item_display] item.components."minecraft:custom_data"."minigame" run function rr_recast:technical/block/scriptscrying_table/arcane/get_data_from_script with entity @n[distance=..0.5,tag=rr.block.scriptscrying_table.item_display.script,type=item_display] item.components."minecraft:custom_data"