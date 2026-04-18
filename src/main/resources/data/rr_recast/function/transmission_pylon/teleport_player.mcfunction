
tag @p[predicate=rr_recast:held_items/mainhand/ender_dust,distance=..10] add rr.nexus.teleported

$execute as @s at @s if entity @n[type=item_display,tag=rr.transmission_pylon.item_display,distance=..1,predicate=rr_recast:location_check/transmission_pylon_nether] in minecraft:the_nether run tp @a[tag=rr.nexus.teleported,limit=1] $(nexus_x).5 $(nexus_y).0 $(nexus_z).5
execute if entity @n[type=item_display,tag=rr.transmission_pylon.item_display,distance=..1,predicate=!rr_recast:location_check/transmission_pylon_nether,predicate=rr_recast:held_items/item_display/nexus/nexus_nether] run tellraw @a[tag=rr.nexus.teleported] [{"text":"[RR: ","color":"gray"},{"color":"#A341A3","text":"R"},{"color":"#945EAF","text":"e"},{"color":"#867ABC","text":"c"},{"color":"#7797C8","text":"a"},{"color":"#68B4D4","text":"s"},{"color":"#4BEDED","text":"t"},{"text":"] ","color":"gray"},{"text":"Cannot teleport to The Nether! Missing required Pylon Base upgrade. Needs 4 Gilded Blackstone. See Runic Compendium for more details.","color":"red"}]

$execute as @s at @s if entity @n[type=item_display,tag=rr.transmission_pylon.item_display,distance=..1,predicate=rr_recast:location_check/transmission_pylon_end] in $(dimension) run tp @a[tag=rr.nexus.teleported,limit=1] $(nexus_x).5 $(nexus_y).0 $(nexus_z).5
execute if entity @n[type=item_display,tag=rr.transmission_pylon.item_display,distance=..1,predicate=!rr_recast:location_check/transmission_pylon_end,predicate=rr_recast:held_items/item_display/nexus/nexus_end] run tellraw @a[tag=rr.nexus.teleported] [{"text":"[RR: ","color":"gray"},{"color":"#A341A3","text":"R"},{"color":"#945EAF","text":"e"},{"color":"#867ABC","text":"c"},{"color":"#7797C8","text":"a"},{"color":"#68B4D4","text":"s"},{"color":"#4BEDED","text":"t"},{"text":"] ","color":"gray"},{"text":"Cannot teleport to The End! Missing required Pylon Base upgrade. Needs 4 Purpur Pillars. See Runic Compendium for more details.","color":"red"}]

$execute as @s at @s if entity @n[type=item_display,tag=rr.transmission_pylon.item_display,distance=..1,predicate=rr_recast:held_items/item_display/nexus/nexus_overworld] in minecraft:overworld run tp @a[tag=rr.nexus.teleported,limit=1] $(nexus_x).5 $(nexus_y).0 $(nexus_z).5

execute if entity @n[type=item_display,tag=rr.transmission_pylon.item_display,distance=..1,predicate=rr_recast:location_check/transmission_pylon_nether] run clear @a[predicate=rr_recast:held_items/mainhand/ender_dust,tag=rr.nexus.teleported] music_disc_cat[item_model="rr_recast:generic/ender_dust"] 1

execute if entity @n[type=item_display,tag=rr.transmission_pylon.item_display,distance=..1,predicate=rr_recast:location_check/transmission_pylon_end] run clear @a[predicate=rr_recast:held_items/mainhand/ender_dust,tag=rr.nexus.teleported] music_disc_cat[item_model="rr_recast:generic/ender_dust"] 1

execute as @s at @s if entity @n[type=item_display,tag=rr.transmission_pylon.item_display,distance=..1,predicate=rr_recast:held_items/item_display/nexus/nexus_overworld] run clear @a[predicate=rr_recast:held_items/mainhand/ender_dust,tag=rr.nexus.teleported] music_disc_cat[item_model="rr_recast:generic/ender_dust"] 1

execute as @p[tag=rr.nexus.teleported] at @s run playsound minecraft:block.respawn_anchor.deplete block @a[distance=..40] ~ ~ ~ 0.6 1.25
execute as @p[tag=rr.nexus.teleported] at @s run playsound minecraft:block.iron_chain.place block @a[distance=..40] ~ ~ ~ 1 0.8
execute as @p[tag=rr.nexus.teleported] at @s run particle electric_spark ~ ~1 ~ 0.1 0.1 0.1 0.75 20 force @a[distance=..40]
execute as @p[tag=rr.nexus.teleported] at @s run particle end_rod ~ ~1 ~ 0.1 0.1 0.1 0.05 20 force @a[distance=..40]
tag @a remove rr.nexus.teleported