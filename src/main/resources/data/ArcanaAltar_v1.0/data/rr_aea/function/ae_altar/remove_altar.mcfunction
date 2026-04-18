execute as @n[type=item_display,tag=ArenAEAltar,distance=..1.75] at @s run summon item ~ ~0.35 ~ {Item:{"id": "minecraft:music_disc_blocks", "components": {"!minecraft:jukebox_playable": {},"minecraft:item_name": {  "translate": "block.rr_aea.arcana_altar",  "fallback": "Arcana Altar",  "italic": false},"minecraft:lore": [  {    "translate": "block.rr_aea.arcana_altar.desc_1",    "fallback": "Must be placed on Glowstone",    "color": "gray",    "italic": false  }],"minecraft:custom_data": "{aea.altar:true,aea.altar.item:true}","minecraft:item_model": "aea:block/enchanting_altar","minecraft:max_stack_size": 64},"count": 1}}
execute as @n[type=item_display,tag=ArenAEAltar,distance=..1.75] at @s run setblock ~ ~ ~ air destroy
execute as @n[type=item_display,tag=ArenAEAltar,distance=..1.75] at @s align xyz positioned ~0.5 ~1 ~0.5 run execute as @e[distance=..1.75,tag=aea.altar.entity] at @s run kill @s

playsound minecraft:block.stone.break block @a[distance=..20] ~ ~ ~ 0.8 0.9 0
playsound minecraft:block.amethyst_block.break block @a[distance=..20] ~ ~ ~ 0.8 0.9 0
playsound minecraft:block.trial_spawner.close_shutter block @a[distance=..20] ~ ~ ~ 0.8 0.75 0

kill @s