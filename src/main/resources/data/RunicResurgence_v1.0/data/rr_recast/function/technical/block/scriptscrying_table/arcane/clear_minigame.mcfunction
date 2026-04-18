execute positioned ~ ~1.5 ~ as @e[distance=..1.5,tag=rr.block.scriptscrying_table.interaction.ring] at @s run kill @s
execute positioned ~ ~1.5 ~ as @e[distance=..1.5,tag=rr.block.scriptscrying_table.indicator] at @s run kill @s
execute as @e[distance=..1.5,tag=rr.block.scriptscrying_table.text_display.minigame] at @s run kill @s
execute as @e[distance=..0.6,tag=rr.block.scriptscrying_table.item_display.script] at @s run kill @s

data remove entity @s data.minigame
data remove entity @s data.spell_script

tag @s remove rr.block.scriptscrying_table.main.script_inserted