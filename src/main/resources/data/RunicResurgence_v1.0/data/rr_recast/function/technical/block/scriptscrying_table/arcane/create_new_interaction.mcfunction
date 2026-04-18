summon interaction ~ ~ ~ {Tags:[rr.block.scriptscrying_table.interaction.minigame_setup]}
data modify entity @s data.interaction_data set from entity @s
data remove entity @s data.interaction_data.UUID
data remove entity @s data.interaction_data.interaction
data remove entity @s data.interaction_data.attack
execute as @n[distance=..0.01,tag=rr.block.scriptscrying_table.interaction.minigame_setup,type=interaction] run function rr_recast:technical/block/scriptscrying_table/set_interaction_data with entity @n[distance=..0.01,tag=rr.block.scriptscrying_table.interaction.ring,type=interaction] data

kill @s
