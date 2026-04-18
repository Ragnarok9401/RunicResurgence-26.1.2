setblock ~ ~ ~ barrier
summon item_display ~ ~ ~ {item:{id:"minecraft:music_disc_cat","count":1,components:{item_model:"rr_recast:block/scriptscrying_table/scriptscrying_table_simplest","!jukebox_playable":{}}},Tags:["rr.block.scriptscrying_table.main","rr.block.scriptscrying_table","rr.block.scriptscrying_table.setup"]}
summon interaction ~ ~0.4375 ~ {height:0.125,width:0.875,response:true,Tags:["rr.block.scriptscrying_table.interaction","rr.block.interaction","rr.block.scriptscrying_table"]}

execute as @n[type=item_display,distance=..0.5,tag=rr.block.scriptscrying_table.main,tag=rr.block.scriptscrying_table.setup] at @s if entity @p[advancements={rr_adv:technical/block/place_script_table=true},distance=..50,y_rotation=-45.0..44.999] run tp @s ~ ~ ~ ~180 ~
execute as @n[type=item_display,distance=..0.5,tag=rr.block.scriptscrying_table.main,tag=rr.block.scriptscrying_table.setup] at @s if entity @p[advancements={rr_adv:technical/block/place_script_table=true},distance=..50,y_rotation=-135.0..-44.999] run tp @s ~ ~ ~ ~90 ~
execute as @n[type=item_display,distance=..0.5,tag=rr.block.scriptscrying_table.main,tag=rr.block.scriptscrying_table.setup] at @s if entity @p[advancements={rr_adv:technical/block/place_script_table=true},distance=..50,y_rotation=45.0..134.999] run tp @s ~ ~ ~ ~270 ~

execute as @n[type=item_display,distance=..0.5,tag=rr.block.scriptscrying_table.main,tag=rr.block.scriptscrying_table.setup] run function rr_recast:technical/block/set_block_id

execute as @n[type=item_display,distance=..0.5,tag=rr.block.scriptscrying_table.main,tag=rr.block.scriptscrying_table.setup] run tag @s remove rr.block.scriptscrying_table.setup

tp @s ~ -65 ~
kill @s