# show_config Trigger
execute as @a[scores={aea.trigger.show_config=1..}] at @s run function rr_aea:triggers/show_config

# reset_config Trigger
execute as @a[scores={aea.trigger.reset_config=1..}] at @s run function rr_aea:triggers/reset_config


# # ShowUpdates trigger
# execute as @a[scores={aea.trigger.show_updates=1..}] at @s run scoreboard players set @s aea.system.UpdateNumber 0
# execute as @a[scores={aea.trigger.show_updates=1..}] at @s run scoreboard players reset @s aea.trigger.show_updates
# execute as @a[scores={aea.trigger.show_updates=1..}] at @s run scoreboard players enable @s aea.trigger.show_updates
# execute as @a unless score @s aea.system.UpdateNumber = $global aea.system.UpdateNumber run function rr_aea:technical/display_updates


# Toggle the Arcane Enchanting Altar guide text for players who use /trigger aea.trigger.toggle_altar_guide
tag @a[tag=ArenAEAGuideY,tag=!ArenAEAGuideN,scores={aea.trigger.toggle_altar_guide=1..}] add ArenAEAGuideN
tag @a[tag=!ArenAEAGuideY,tag=ArenAEAGuideN,scores={aea.trigger.toggle_altar_guide=1..}] remove ArenAEAGuideN
tag @a[tag=ArenAEAGuideY,tag=ArenAEAGuideN,scores={aea.trigger.toggle_altar_guide=1..}] remove ArenAEAGuideY
tag @a[tag=!ArenAEAGuideY,tag=!ArenAEAGuideN,scores={aea.trigger.toggle_altar_guide=1..}] add ArenAEAGuideY
tellraw @a[scores={aea.trigger.toggle_altar_guide=1..},tag=!ArenAEAGuideN,tag=ArenAEAGuideY] [{"text":"[aea] ","color":"white","italic":false},{"text":"Toggled Arcane Enchanting Altar messages. They will now display for you.","color":"yellow","italic":false}]
tellraw @a[scores={aea.trigger.toggle_altar_guide=1..},tag=ArenAEAGuideN,tag=!ArenAEAGuideY] [{"text":"[aea] ","color":"white","italic":false},{"text":"Toggled Arcane Enchanting Altar messages. They will now stop displaying for you.","color":"yellow","italic":false}]
scoreboard players enable @a[scores={aea.trigger.toggle_altar_guide=1..}] aea.trigger.toggle_altar_guide
scoreboard players set @a[scores={aea.trigger.toggle_altar_guide=1..}] aea.trigger.toggle_altar_guide 0


# Make Altar
execute as @a at @s at @e[type=item,distance=..10,nbt={OnGround:true,Item:{id:"minecraft:music_disc_blocks",count:1,components:{"minecraft:item_model":"aea:block/enchanting_altar"}}},tag=!rr.runic_table.item] if data entity @n[type=item,distance=..0.01] Thrower if block ~ ~ ~ #minecraft:air if block ~ ~-1 ~ glowstone run function rr_aea:ae_altar/make_altar


# No longer needed with the Runic Compendium
## Show a list of Enchantments available through this data pack
#execute as @a[scores={aea.trigger.enchantment_list=1..}] at @s run function rr_aea:triggers/show_enchantments


schedule function rr_aea:technical/second 1s