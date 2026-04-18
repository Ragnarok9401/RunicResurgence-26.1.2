execute as @a at @s run kill @e[tag=RunicMeteorite,scores={rr.system.Timer=300..},distance=..64]

scoreboard players add @e[type=item_display,tag=RunicMeteorite,limit=1] rr.system.Timer 1
scoreboard players add @e[type=interaction,tag=RunicMeteorite,limit=1] rr.system.Timer 1

# Check Crypt Keepers for healing for Necrosculkers
execute as @e[tag=rr.boss,tag=rr.boss.necrosculker,type=marker] at @s run function rr_recast:boss/necrosculker_main/check_skeletons

# All players regenerate mana
execute as @a at @s run function rr_recast:technical/mana/regenerate
scoreboard players remove @a[scores={rr.system.ActionbarChange=1..}] rr.system.ActionbarChange 1

# Players who are no longer in a Boss Fight should run these commands
execute as @a[tag=rr.player.in_boss_fight] at @s unless entity @n[type=marker,tag=rr.boss,distance=..80] run function rr_recast:technical/not_in_boss_fight

# Make Runic Crafting Table
execute as @a at @s if entity @e[type=item,distance=..10,nbt={OnGround:true,Item:{id:"minecraft:music_disc_blocks",count:1,components:{"minecraft:item_model":"rr_recast:block/runic_table/runic_table_inactive","minecraft:custom_data":{rr.runic_table:true,rr.runic_table.inactive:true}}}},tag=!rr.runic_table.item] at @e[type=item,distance=..10,nbt={OnGround:true,Item:{id:"minecraft:music_disc_blocks",count:1,components:{"minecraft:item_model":"rr_recast:block/runic_table/runic_table_inactive","minecraft:custom_data":{rr.runic_table:true,rr.runic_table.inactive:true}}}},tag=!rr.runic_table.item] if block ~ ~ ~ #minecraft:air run function rr_recast:runic_table/make_runic_table
# Make Transmission Pylon
execute as @a at @s if entity @e[type=item,distance=..10,nbt={OnGround:true,Item:{id:"minecraft:music_disc_cat",count:1,components:{"minecraft:item_model":"rr_recast:block/transmission_pylon/transmission_pylon_inactive"}}},tag=!rr.transmission_pylon.item] at @e[type=item,distance=..10,nbt={OnGround:true,Item:{id:"minecraft:music_disc_cat",count:1,components:{"minecraft:item_model":"rr_recast:block/transmission_pylon/transmission_pylon_inactive"}}},tag=!rr.transmission_pylon.item] if block ~ ~ ~ #minecraft:air if block ~ ~1 ~ #minecraft:air run function rr_recast:transmission_pylon/make_pylon
# Make Cooking Pot
#execute as @a at @s if entity @e[type=item,distance=..10,nbt={OnGround:true,Item:{id:"minecraft:music_disc_blocks",count:1,components:{"minecraft:custom_model_data":12342,"minecraft:custom_data":{RunicCauldron:true}}}}] run function rr_recast:runic_cauldron/make_runic_cauldron

# Count down Runic Table's craft timer and reset its state once its timer is out
execute as @a at @s run kill @e[type=text_display,distance=..14,tag=RunicTableTextA]
scoreboard players remove @e[type=item_display,tag=rr.runic_table.main,tag=rr.runic_table.active,scores={rr.system.CraftCharge=1..}] rr.system.CraftCharge 1
execute as @a at @s run execute as @n[type=item_display,tag=rr.runic_table.main,tag=rr.runic_table.active,scores={rr.system.CraftCharge=1..},distance=..10] at @s run function rr_recast:math/time/get_time_from_score {"score":"rr.system.CraftCharge"}
execute as @a at @s run execute as @n[type=item_display,tag=rr.runic_table.main,tag=rr.runic_table.active,scores={rr.system.CraftCharge=1..}] at @s run function rr_recast:runic_table/interface/display_charge_time
execute as @e[type=item_display,tag=rr.runic_table.main,tag=rr.runic_table.active,scores={rr.system.CraftCharge=..0}] at @s run particle enchanted_hit ^ ^0.5 ^ 0.33 0 0.33 0.125 15 force @a[distance=..20]
execute as @e[type=item_display,tag=rr.runic_table.main,tag=rr.runic_table.active,scores={rr.system.CraftCharge=..0}] at @s run playsound block.beacon.deactivate block @a[distance=..20] ~ ~ ~ 0.6 1.5 0
execute as @e[type=item_display,tag=rr.runic_table.main,tag=rr.runic_table.active,scores={rr.system.CraftCharge=..0}] at @s run execute as @n[tag=rr.runic_table.preview,distance=..5] at @s run kill @e[tag=rr.runic_table.preview,distance=..0.5]
tag @e[type=item_display,tag=rr.runic_table.main,tag=rr.runic_table.active,scores={rr.system.CraftCharge=..0}] remove rr.runic_table.active
execute as @e[type=item_display,tag=rr.runic_table.main,tag=!rr.runic_table.active,tag=!rr.runic_table.inactive,scores={rr.system.CraftCharge=..0}] at @s run data modify entity @s item.components."minecraft:item_model" set value "rr_recast:block/runic_table/runic_table_inactive"
execute as @e[type=item_display,tag=rr.runic_table.main,tag=!rr.runic_table.active,tag=!rr.runic_table.inactive,scores={rr.system.CraftCharge=..0}] at @s run tag @s add rr.runic_table.inactive


# Set a Player ID for each Player
execute as @r[tag=!rr.player.has_id] run function rr_recast:technical/set_id


# Make Library's Secret Marker open the path to the secret room if the Warped Pressure Plate is present and active
execute in rr_recast:otherworld positioned 4000 -32 4000 as @e[type=marker,distance=..500,tag=rr.structure_marker.ancient_crypt.library_secret,tag=!rr.library_secret_discovered] at @s if block ^ ^ ^7 warped_pressure_plate[powered=true] run execute as @a[distance=..300,tag=rr.in_ancient_crypt] run tag @s add rr.sound.ancient_crypt_secret
execute in rr_recast:otherworld positioned 4000 -32 4000 as @e[type=marker,distance=..500,tag=rr.structure_marker.ancient_crypt.library_secret,tag=!rr.library_secret_discovered] at @s if block ^ ^ ^7 warped_pressure_plate[powered=true] positioned ^ ^ ^7 run playsound entity.wither.break_block block @a[distance=..40] ~ ~ ~ 0.8 1.25 0
execute in rr_recast:otherworld positioned 4000 -32 4000 as @e[type=marker,distance=..500,tag=rr.structure_marker.ancient_crypt.library_secret,tag=!rr.library_secret_discovered] at @s if block ^ ^ ^7 warped_pressure_plate[powered=true] run fill ^ ^ ^4 ^ ^1 ^7 air
execute in rr_recast:otherworld positioned 4000 -32 4000 as @e[type=marker,distance=..500,tag=rr.structure_marker.ancient_crypt.library_secret,tag=!rr.library_secret_discovered] at @s if block ^ ^ ^6 air run tag @s add rr.library_secret_discovered


# ShowUpdates trigger
execute as @a[scores={rr.trigger.show_updates=1..}] at @s run scoreboard players set @s rr.system.UpdateNumber 0
execute as @a[scores={rr.trigger.show_updates=1..}] at @s run scoreboard players enable @s rr.trigger.show_updates
execute as @a[scores={rr.trigger.show_updates=1..}] at @s run scoreboard players set @s rr.trigger.show_updates 0

# ShowLastUpdate trigger
execute as @a[scores={rr.trigger.show_last_update=1..}] at @s run scoreboard players remove @s rr.system.UpdateNumber 1
execute as @a[scores={rr.trigger.show_last_update=1..}] at @s run scoreboard players enable @s rr.trigger.show_last_update
execute as @a[scores={rr.trigger.show_last_update=1..}] at @s run scoreboard players set @s rr.trigger.show_last_update 0
execute as @a if score @s rr.system.UpdateNumber <= $global rr.system.UpdateNumber run function rr_recast:technical/display_updates

# Credits trigger
execute as @a[scores={rr.trigger.credits=1..}] run function rr_recast:technical/display_credits
execute as @a[scores={rr.trigger.credits=1..}] at @s run scoreboard players enable @s rr.trigger.credits
execute as @a[scores={rr.trigger.credits=1..}] at @s run scoreboard players set @s rr.trigger.credits 0


# Make Sculk-Infested mobs when a Skeleton or Zombie is in the Ancient Crypt
execute as @a at @s run execute as @e[type=marker,distance=..60,tag=rr.structure_marker.ancient_crypt.arena] at @s run execute as @e[type=#rr_recast:undead,distance=..50,tag=!rr.deep_dark_mob.checked] at @s run function rr_recast:structure/ancient_crypt/passive/make_crypt_keepers
# Chance to make Sculk-Infested mobs when a Skeleton or Zombie is in the Deep Dark
execute as @a[predicate=rr_recast:location_check/deep_dark] at @s run execute as @e[type=#rr_recast:undead,tag=!rr.deep_dark_mob.checked,distance=..40] at @s run function rr_recast:technical/entity/deep_dark_mob_check


# Boss Summons
#region
## Summon The Necrosculker if an Ancient Crypt Arena Marker detects a Dark Heart nearby
execute as @e[type=marker,tag=rr.structure_marker.ancient_crypt.arena] at @s unless entity @e[tag=rr.boss,distance=..200] if data entity @n[type=item,distance=..2] Thrower if block ~ ~-0.1 ~ reinforced_deepslate if entity @n[type=item,distance=..1,nbt={Item:{id:"minecraft:music_disc_far",count:1,components:{"minecraft:item_model":"rr_recast:boss_item/necrosculker/suspicious_dark_heart","minecraft:custom_data":{RunicDarkHeart:1b,RunicSDH:1b}}}}] run function rr_recast:boss/summon_necrosculker_core
## Summon Elite Necrosculker if an Ancient Crypt Arena Marker detects an Angered Dark Heart nearby
execute as @e[type=marker,tag=rr.structure_marker.ancient_crypt.arena] at @s unless entity @e[tag=rr.boss,distance=..200] if data entity @n[type=item,distance=..2] Thrower if block ~ ~-0.1 ~ reinforced_deepslate if entity @n[type=item,distance=..1,nbt={Item:{id:"minecraft:music_disc_far",count:1,components:{"minecraft:item_model":"rr_recast:boss_item/necrosculker/angered_dark_heart","minecraft:custom_data":{RunicDarkHeart:1b,RunicADH:1b}}}}] run function rr_recast:boss/summon_necrosculker_elite_core
## Summon Nightmare Necrosculker if an Ancient Crypt Arena Marker detects a Wrathful Dark Heart nearby
execute as @e[type=marker,tag=rr.structure_marker.ancient_crypt.arena] at @s unless entity @e[tag=rr.boss,distance=..200] if data entity @n[type=item,distance=..2] Thrower if block ~ ~-0.1 ~ reinforced_deepslate if entity @n[type=item,distance=..1,nbt={Item:{id:"minecraft:music_disc_far",count:1,components:{"minecraft:item_model":"rr_recast:boss_item/necrosculker/wrathful_dark_heart","minecraft:custom_data":{RunicDarkHeart:1b,RunicWDH:1b}}}}] run function rr_recast:boss/summon_necrosculker_nightmare_core
## Summon Void Necrosculker if an Ancient Crypt Arena Marker detects an Evil Dark Heart nearby
execute as @e[type=marker,tag=rr.structure_marker.ancient_crypt.arena] at @s unless entity @e[tag=rr.boss,distance=..200] if data entity @n[type=item,distance=..2] Thrower if block ~ ~-0.1 ~ reinforced_deepslate if entity @n[type=item,distance=..1,nbt={Item:{id:"minecraft:music_disc_far",count:1,components:{"minecraft:item_model":"rr_recast:boss_item/necrosculker/evil_dark_heart","minecraft:custom_data":{RunicDarkHeart:1b,RunicEDH:1b}}}}] run function rr_recast:boss/summon_necrosculker_ultimate_core


# Knowledge Fragment text
execute as @a[scores={rr.trigger.show_knowledge=1..}] at @s run function rr_recast:technical/knowledge_fragment/display/display_text
execute as @a[scores={rr.trigger.knowledge_id=1..}] at @s run function rr_recast:technical/knowledge_fragment/knowledge_text


# # Showcase Item Stats to either triggerer or to all players
# execute as @a[scores={rr.trigger.item_stats=1..}] at @s run function rr_recast:technical/triggers/item_stats {"show_type":display}
# execute as @a[scores={rr.trigger.share_item_stats=1..}] at @s run function rr_recast:technical/triggers/item_stats {"show_type":showoff}


execute in overworld positioned 0 0 0 unless entity @n[distance=..1,type=marker,tag=rr.global,tag=rr.scheduler.1s] run tag @n[distance=..1,type=marker,tag=rr.global] add rr.scheduler.1s
schedule function rr_recast:technical/1s 1s replace