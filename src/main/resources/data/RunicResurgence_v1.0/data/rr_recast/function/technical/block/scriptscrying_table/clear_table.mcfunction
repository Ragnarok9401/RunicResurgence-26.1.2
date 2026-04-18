execute on target run function rr_recast:give/blocks/scriptscrying_table
fill ~ ~ ~ ~ ~ ~ air replace barrier
execute as @n[distance=..0.5,tag=rr.block.scriptscrying_table.main,type=item_display] run function rr_recast:technical/block/scriptscrying_table/select_clear_minigame with entity @s data.spell_script
kill @n[distance=..0.5,tag=rr.block.scriptscrying_table.main,type=item_display]
kill @s