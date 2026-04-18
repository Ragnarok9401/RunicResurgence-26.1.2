# Visual and Sound indicator for Minigames
execute as @s[tag=rr.block.scriptscrying_table.interaction.minigame] at @s positioned ~ ~-1.5 ~ if entity @n[distance=..1.5,tag=rr.block.scriptscrying_table.main,tag=!rr.block.scriptscrying_table.main.guess_cooldown,type=item_display] at @s run function rr_recast:technical/block/scriptscrying_table/interaction_fx with entity @s data.fx


# Minigame-specific Interaction functions
execute on target run tag @s add rr.player.spell_script.interacting
execute as @s[tag=rr.block.scriptscrying_table.interaction.minigame] as @e[tag=rr.block.scriptscrying_table.main,distance=..4,type=item_display] if score @s rr.block.id = @n[distance=..0.1,tag=rr.block.scriptscrying_table.interaction.minigame,type=interaction] rr.block.id run function rr_recast:technical/block/scriptscrying_table/select_element_interaction with entity @s data.spell_script
# If interaction uses the above, return 0 to signify "minigame interaction"
execute as @s[tag=rr.block.scriptscrying_table.interaction.minigame] run return 0


# If interacting player is not holding a spell script, display an error message matching this
execute if entity @s[tag=!rr.block.scriptscrying_table.interaction.minigame,tag=!rr.block.scriptscrying_table.interaction_with_script] if entity @n[distance=..0.5,tag=rr.block.scriptscrying_table.main,type=item_display] unless entity @n[distance=..0.5,tag=rr.block.scriptscrying_table.item_display.script,type=item_display] on target unless predicate rr_recast:held_items/mainhand/spell_script run tellraw @s [{"text":"[RR: ","color":"gray"},{"color":"#A341A3","text":"R"},{"color":"#945EAF","text":"e"},{"color":"#867ABC","text":"c"},{"color":"#7797C8","text":"a"},{"color":"#68B4D4","text":"s"},{"color":"#4BEDED","text":"t"},{"text":"] ","color":"gray"},{"text":"You must insert a Spell Script.","color":"yellow"}]


# If the table has a Spell Script inserted (if there is a Minigame active) then return the Script with all necessary data changes
# Return 1 to signify "clearing the table"
execute as @s[tag=rr.block.scriptscrying_table.interaction_with_script] as @n[distance=..0.5,tag=rr.block.scriptscrying_table.main,type=item_display] if data entity @s data.spell_script at @s run function rr_recast:technical/block/scriptscrying_table/return_script with entity @s data.spell_script


# If interacting player has a Spell Script in hand, get its data and initiate a minigame using that data
execute if entity @s[tag=!rr.block.scriptscrying_table.interaction.minigame,tag=!rr.block.scriptscrying_table.interaction_with_script] unless entity @n[distance=..0.5,tag=rr.block.scriptscrying_table.item_display.script,type=item_display] on target if predicate rr_recast:held_items/mainhand/spell_script run tag @s add rr.player.using_spell_script
execute if entity @s[tag=!rr.block.scriptscrying_table.interaction.minigame,tag=!rr.block.scriptscrying_table.interaction_with_script] unless entity @n[distance=..0.5,tag=rr.block.scriptscrying_table.item_display.script,type=item_display] on target if predicate rr_recast:held_items/mainhand/spell_script as @n[distance=..0.01,tag=rr.block.scriptscrying_table.interaction,type=interaction] run function rr_recast:technical/block/scriptscrying_table/minigame_setup with entity @p[tag=rr.player.using_spell_script,distance=..50] SelectedItem.components."minecraft:custom_data"."spell_script"
execute on target run tag @s remove rr.player.using_spell_script


# If interacting player is holding a Pickaxe, remove the table and give it to the interacting player
execute on target if predicate rr_recast:held_items/mainhand/pickaxes as @n[distance=..0.01,tag=rr.block.scriptscrying_table.interaction,type=interaction] run function rr_recast:technical/block/scriptscrying_table/clear_table
execute on target if predicate rr_recast:held_items/mainhand/pickaxes run return 2


# Reset interaction
execute if entity @s[tag=!rr.block.scriptscrying_table.interaction.minigame] unless entity @n[distance=..0.5,tag=rr.block.scriptscrying_table.item_display.script,type=item_display] run summon interaction ~ ~ ~ {height:0.125,width:0.875,response:true,Tags:["rr.block.scriptscrying_table.interaction","rr.block.interaction","rr.block.scriptscrying_table"]}
execute if entity @s[tag=!rr.block.scriptscrying_table.interaction.minigame] if entity @n[distance=..0.5,tag=rr.block.scriptscrying_table.item_display.script,type=item_display] run summon interaction ~ ~ ~ {height:0.125,width:0.875,response:true,Tags:["rr.block.scriptscrying_table.interaction","rr.block.scriptscrying_table.interaction_with_script","rr.block.interaction","rr.block.scriptscrying_table"]}
execute if entity @s[tag=!rr.block.scriptscrying_table.interaction.minigame] run kill @s