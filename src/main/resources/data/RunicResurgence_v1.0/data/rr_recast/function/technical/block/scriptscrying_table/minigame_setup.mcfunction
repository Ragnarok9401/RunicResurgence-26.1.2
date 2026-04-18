# Debug tellraw for script data
#$tellraw @p [{"text":"Spell ID: $(id)","italic":false,"color":"yellow"},{"text":"\nSpell Name: $(spell)","italic":false,"color":"yellow"},{"text":"\nSpell Reference: $(reference)","italic":false,"color":"yellow"},{"text":"\nScript Difficulty: $(difficulty)","italic":false,"color":"yellow"},{"text":"\nNumber of Attempts: $(attempts)","italic":false,"color":"yellow"},{"text":"\nIs Destroyed On Failure: $(destroy_on_fail)","italic":false,"color":"yellow"}]

# Get some data from Spell information as defined in rr_recast:global
# spells storage so spell definitions can be changed dynamically without
# breaking the scripts themselves
$data modify entity @n[distance=..0.5,tag=rr.block.scriptscrying_table.main,type=item_display] data.spell_script.reference set value $(reference)
$data modify entity @n[distance=..0.5,tag=rr.block.scriptscrying_table.main,type=item_display] data.minigame.reference set value $(reference)
$data modify entity @n[distance=..0.5,tag=rr.block.scriptscrying_table.main,type=item_display] data.spell_script.spell set value "$(spell)"
$data modify entity @n[distance=..0.5,tag=rr.block.scriptscrying_table.main,type=item_display] data.spell_script.id set value $(id)
$data modify entity @n[distance=..0.5,tag=rr.block.scriptscrying_table.main,type=item_display] data.spell_script.element set from storage rr_recast:global spells.$(reference).element

# Get Script-specific data like attempts, difficulty, and the destroy_on_fail boolean
$data modify entity @n[distance=..0.5,tag=rr.block.scriptscrying_table.main,type=item_display] data.spell_script.difficulty set value $(difficulty)
$data modify entity @n[distance=..0.5,tag=rr.block.scriptscrying_table.main,type=item_display] data.spell_script.attempts set value $(attempts)
$data modify entity @n[distance=..0.5,tag=rr.block.scriptscrying_table.main,type=item_display] data.spell_script.destroy_on_fail set value $(destroy_on_fail)

# Add a "Script Inserted" tag
tag @n[distance=..0.5,tag=rr.block.scriptscrying_table.main,type=item_display] add rr.block.scriptscrying_table.main.script_inserted

# Create an Item Display to visualize the Script on the table
execute as @n[distance=..0.5,tag=rr.block.scriptscrying_table.main,type=item_display] at @s run summon item_display ~ ~0.5 ~ {Tags:["rr.block.scriptscrying_table.item_display.script"],item:{id:"minecraft:music_disc_cat",count:1},item_display:"fixed",billboard:"fixed",transformation:{left_rotation:[-0.796875,0,0,1],right_rotation:[0,0,0,1],scale:[0.7,0.7,0.7],translation:[0,-0.02,0]}}
execute as @n[distance=..0.5,tag=rr.block.scriptscrying_table.main,type=item_display] at @s run data modify entity @n[distance=..0.5,tag=rr.block.scriptscrying_table.item_display.script,type=item_display] Rotation set from entity @n Rotation
execute as @n[distance=..0.5,tag=rr.block.scriptscrying_table.main,type=item_display] at @s positioned ~ ~0.5 ~ run data modify entity @n[distance=..0.01,tag=rr.block.scriptscrying_table.item_display.script,type=item_display] item.components set from entity @p[tag=rr.player.using_spell_script,distance=..50] SelectedItem.components

# Proxy function to select minigame with above data
execute as @n[distance=..0.5,tag=rr.block.scriptscrying_table.main,type=item_display] at @s run function rr_recast:technical/block/scriptscrying_table/minigame_selection with entity @s data.spell_script

# Unless a player is in Creative mode, reduce the count of the Spell Script(s) held by 1
execute as @p[tag=rr.player.using_spell_script,distance=..50] unless entity @s[gamemode=creative] run item modify entity @s weapon.mainhand rr_recast:count/decrement_count