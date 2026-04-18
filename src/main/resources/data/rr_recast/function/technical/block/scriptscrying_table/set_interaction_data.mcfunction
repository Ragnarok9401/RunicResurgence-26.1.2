$data merge entity @s $(interaction_data)
tag @s remove rr.block.scriptscrying_table.interaction.minigame_setup
scoreboard players operation @s rr.block.id = @n[distance=..0.01,type=interaction] rr.block.id