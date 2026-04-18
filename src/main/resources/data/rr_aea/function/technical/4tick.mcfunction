execute as @e[type=item_display,tag=ArenAEAltar] at @s if entity @p[distance=..30] run function rr_aea:ae_altar/extra/visuals


execute as @a at @s run execute as @e[type=interaction,tag=ArenAEAIMain,distance=..10,limit=10] at @s run particle enchanted_hit ~ ~0.15 ~ 0.05 0.05 0.05 0.03 1 force @p


# execute as @e[type=arrow,tag=ArenRecursionArrow,nbt={inGround:true},limit=1] at @s run function rr_aea:technical/enchantments/recursive_carryout


# Run Core Functions of the Enchanting Altar (check for items, show options, etc.)
execute as @e[type=item_display,tag=ArenAEAltar,tag=!ArenAEAInUse] at @s run function rr_aea:ae_altar/core/start_core


execute as @e[type=item_display,tag=ArenAEAltar,tag=ArenAEAInUse] at @s run function rr_aea:ae_altar/core/active_core


# Enchantment Selection for AEA
# Swords
execute as @a at @s if entity @e[type=interaction,distance=..15,tag=ArenAEASwordI,limit=1] run function rr_aea:ae_altar/core/sword/check_ench_select

# Bows
execute as @a at @s if entity @e[type=interaction,distance=..15,tag=ArenAEABowI,limit=1] run function rr_aea:ae_altar/core/bow/check_ench_select

# Helmets
execute as @a at @s if entity @e[type=interaction,distance=..15,tag=ArenAEAHelmetI,limit=1] run function rr_aea:ae_altar/core/helmet/check_ench_select

# Chestplates
execute as @a at @s if entity @e[type=interaction,distance=..15,tag=ArenAEAChestplateI,limit=1] run function rr_aea:ae_altar/core/chestplate/check_ench_select

# Leggings
execute as @a at @s if entity @e[type=interaction,distance=..15,tag=ArenAEALeggingsI,limit=1] run function rr_aea:ae_altar/core/leggings/check_ench_select

# Boots
execute as @a at @s if entity @e[type=interaction,distance=..15,tag=ArenAEABootsI,limit=1] run function rr_aea:ae_altar/core/boots/check_ench_select

# Tick down Echo Cooldown
scoreboard players remove @a[scores={aea.ench.echo_cooldown=1..}] aea.ench.echo_cooldown 1


schedule function rr_aea:technical/4tick 4t replace