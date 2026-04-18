execute positioned ~ ~0.4375 ~ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] run item replace entity @s contents with music_disc_cat[jukebox_playable="rr_recast:sinking_feeling",item_model="rr_recast:disc/music_disc_sinking_feeling",custom_data={"rr.custom_jukebox_disc":1b,"rr.item":1b},item_name={"text":"Music Disc","color":"aqua"}]
execute positioned ~ ~0.4375 ~ as @e[type=item_display,distance=0.1..0.5,tag=!rr.runic_table.item.5,tag=rr.runic_table.item] run kill @s

playsound minecraft:block.anvil.land block @a[distance=..20] ~ ~ ~ 0.6 1.25 0