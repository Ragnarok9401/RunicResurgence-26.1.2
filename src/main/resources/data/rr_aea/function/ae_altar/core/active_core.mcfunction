# Core that runs functions for when an item is inserted


# Make the marker create displays for adding specific enchantments
execute as @n[type=marker,tag=ArenAEASwordSel,tag=!ArenAEASwordSelComplete,distance=..5] at @s run function rr_aea:ae_altar/core/sword/enchant_selected
#execute as @n[type=marker,tag=ArenAEAMaceSel,tag=!ArenAEAMaceSelComplete,distance=..5] at @s run function rr_aea:ae_altar/core/mace/enchant_selected
execute as @n[type=marker,tag=ArenAEABowSel,tag=!ArenAEABowSelComplete,distance=..5] at @s run function rr_aea:ae_altar/core/bow/enchant_selected
execute as @n[type=marker,tag=ArenAEAHelmetSel,tag=!ArenAEAHelmetSelComplete,distance=..5] at @s run function rr_aea:ae_altar/core/helmet/enchant_selected
execute as @n[type=marker,tag=ArenAEAChestplateSel,tag=!ArenAEAChestplateSelComplete,distance=..5] at @s run function rr_aea:ae_altar/core/chestplate/enchant_selected
execute as @n[type=marker,tag=ArenAEALeggingsSel,tag=!ArenAEALeggingsSelComplete,distance=..5] at @s run function rr_aea:ae_altar/core/leggings/enchant_selected
execute as @n[type=marker,tag=ArenAEABootsSel,tag=!ArenAEABootsSelComplete,distance=..5] at @s run function rr_aea:ae_altar/core/boots/enchant_selected

# Execute functions for buttons in the enchanting interface
execute as @n[type=marker,tag=ArenAEASwordSel,tag=ArenAEASwordSelComplete,distance=..5] at @s run function rr_aea:ae_altar/core/sword/interface
#execute as @n[type=marker,tag=ArenAEAMaceSel,tag=ArenAEAMaceSelComplete,distance=..5] at @s run function rr_aea:ae_altar/core/mace/interface
execute as @n[type=marker,tag=ArenAEABowSel,tag=ArenAEABowSelComplete,distance=..5] at @s run function rr_aea:ae_altar/core/bow/interface
execute as @n[type=marker,tag=ArenAEAHelmetSel,tag=ArenAEAHelmetSelComplete,distance=..5] at @s run function rr_aea:ae_altar/core/helmet/interface
execute as @n[type=marker,tag=ArenAEAChestplateSel,tag=ArenAEAChestplateSelComplete,distance=..5] at @s run function rr_aea:ae_altar/core/chestplate/interface
execute as @n[type=marker,tag=ArenAEALeggingsSel,tag=ArenAEALeggingsSelComplete,distance=..5] at @s run function rr_aea:ae_altar/core/leggings/interface
execute as @n[type=marker,tag=ArenAEABootsSel,tag=ArenAEABootsSelComplete,distance=..5] at @s run function rr_aea:ae_altar/core/boots/interface

# Execute normal functions for each type of item
execute as @n[type=marker,tag=ArenAEASwordMarker,distance=..5] at @s run function rr_aea:ae_altar/core/sword/tick
#execute as @n[type=marker,tag=ArenAEAMaceMarker,distance=..5] at @s run function rr_aea:ae_altar/core/mace/tick
execute as @n[type=marker,tag=ArenAEABowMarker,distance=..5] at @s run function rr_aea:ae_altar/core/bow/tick
execute as @n[type=marker,tag=ArenAEAHelmetMarker,distance=..5] at @s run function rr_aea:ae_altar/core/helmet/tick
execute as @n[type=marker,tag=ArenAEAChestplateMarker,distance=..5] at @s run function rr_aea:ae_altar/core/chestplate/tick
execute as @n[type=marker,tag=ArenAEALeggingsMarker,distance=..5] at @s run function rr_aea:ae_altar/core/leggings/tick
execute as @n[type=marker,tag=ArenAEABootsMarker,distance=..5] at @s run function rr_aea:ae_altar/core/boots/tick


# Clearing BEFORE an enchant has been selected
execute as @s at @s if data entity @e[type=interaction,tag=ArenAEAICancel,tag=!ArenAEAIBack,limit=1,sort=nearest,distance=..1.5] interaction.timestamp run playsound minecraft:block.note_block.chime player @a[distance=..15] ~ ~ ~ 0.9 0.5 0

execute as @s at @s if data entity @e[type=interaction,tag=ArenAEAICancel,tag=!ArenAEAIBack,limit=1,sort=nearest,distance=..1.5] interaction.timestamp run kill @n[type=item_display,tag=ArenAEAIDCancel,distance=..1.5]
execute as @s at @s if data entity @e[type=interaction,tag=ArenAEAICancel,tag=!ArenAEAIBack,limit=1,sort=nearest,distance=..1.5] interaction.timestamp run kill @e[type=text_display,limit=1,sort=nearest,tag=ArenAEATCancel,distance=..1.5]
execute as @s at @s if data entity @e[type=interaction,tag=ArenAEAICancel,tag=!ArenAEAIBack,limit=1,sort=nearest,distance=..1.5] interaction.timestamp run summon item ~ ~1.5 ~ {Item:{count:1,id:"minecraft:stone"},PickupDelay:21,Tags:[aea.altar.entity,"ArenAEAItem"],Invulnerable:true}
execute as @s at @s if data entity @e[type=interaction,tag=ArenAEAICancel,tag=!ArenAEAIBack,limit=1,sort=nearest,distance=..1.5] interaction.timestamp run execute as @n[type=item_display,tag=ArenAEAIDMain,distance=..1.5] at @s run data modify entity @e[type=item,limit=1,sort=nearest,tag=ArenAEAItem,distance=..0.75] Item set from entity @s item
execute as @s at @s if data entity @e[type=interaction,tag=ArenAEAICancel,tag=!ArenAEAIBack,limit=1,sort=nearest,distance=..1.5] interaction.timestamp run kill @e[type=item_display,tag=ArenAEAIDMain,distance=..1.5]
execute as @s at @s if data entity @e[type=interaction,tag=ArenAEAICancel,tag=!ArenAEAIBack,limit=1,sort=nearest,distance=..1.5] interaction.timestamp run kill @e[type=marker,tag=ArenAEADTMain,distance=..5]
execute as @s at @s if data entity @e[type=interaction,tag=ArenAEAICancel,tag=!ArenAEAIBack,limit=1,sort=nearest,distance=..1.5] interaction.timestamp run kill @e[type=interaction,tag=ArenAEAIMain,distance=..5]
execute as @s at @s if data entity @e[type=interaction,tag=ArenAEAICancel,tag=!ArenAEAIBack,limit=1,sort=nearest,distance=..1.5] interaction.timestamp run kill @e[type=text_display,tag=ArenAEATDMain,distance=..1.5]
execute as @s at @s if data entity @e[type=interaction,tag=ArenAEAICancel,tag=!ArenAEAIBack,limit=1,sort=nearest,distance=..1.5] interaction.timestamp run tag @n[type=item_display,tag=ArenAEAltar,tag=ArenAEAInUse] remove ArenAEAInUse
execute as @s at @s if data entity @e[type=interaction,tag=ArenAEAICancel,tag=!ArenAEAIBack,limit=1,sort=nearest,distance=..1.5] interaction.timestamp run kill @e[type=interaction,tag=ArenAEAICancel,limit=1,sort=nearest,distance=..1.5]