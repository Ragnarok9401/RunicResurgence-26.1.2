execute positioned ~ ~0.4375 ~ as @n[type=item_display,distance=..0.1,tag=rr.runic_table.item.5] run item replace entity @s contents with music_disc_cat[max_stack_size=64,item_model="rr_recast:block/transmission_pylon/transmission_pylon_inactive",item_name="Transmission Pylon",rarity="uncommon",!jukebox_playable,custom_data={rr.item:1b,rr.transmission_pylon:1b}]
execute positioned ~ ~0.4375 ~ as @e[type=item_display,distance=0.1..0.5,tag=!rr.runic_table.item.5,tag=rr.runic_table.item] run kill @s

playsound minecraft:block.anvil.land block @a[distance=..20] ~ ~ ~ 0.6 1.25 0