## Arcane Enchanting Altar creation
#scoreboard players add @e[type=marker,tag=ArenAEACreate] aea.math.A 1
#execute as @e[type=marker,tag=ArenAEACreate,scores={aea.math.A=..100}] at @s run function rr_aea:ae_altar/extra/creation_visuals


# # Special Functions for Sunstruck Enchantment
# execute as @e[type=arrow,tag=ArenSunArrow,tag=ArenSunArrow1,nbt={inGround:false},limit=10] at @s run particle small_flame ~ ~ ~ 0.35 0.35 0.35 0 2 force @a[distance=..40]
# execute as @e[type=arrow,tag=ArenSunArrow,tag=ArenSunArrow2,nbt={inGround:false},limit=10] at @s run particle small_flame ~ ~ ~ 0.5 0.5 0.5 0 2 force @a[distance=..40]
# 
# execute as @e[type=arrow,tag=ArenSunArrow,tag=ArenSunArrow1,nbt={inGround:false},limit=10] at @s run playsound minecraft:entity.blaze.ambient player @a[distance=..40] ~ ~ ~ 0.02 1.4 0
# execute as @e[type=arrow,tag=ArenSunArrow,tag=ArenSunArrow2,nbt={inGround:false},limit=10] at @s run playsound minecraft:entity.blaze.ambient player @a[distance=..40] ~ ~ ~ 0.05 1.3
# 
# execute as @e[type=arrow,tag=ArenSunArrow,tag=ArenSunArrow1,nbt={inGround:false}] at @s positioned ~ ~-0.75 ~ run execute as @e[type=!#rr_aea:magic_ignore,tag=!ArenMagicImmune,distance=..1.85] unless score @s aea.system.PlayerUUID1 = @e[type=arrow,limit=1,sort=nearest,tag=ArenSunArrow,nbt={inGround:false}] aea.system.MatchUUID1 unless score @s aea.system.PlayerUUID2 = @e[type=arrow,limit=1,sort=nearest,tag=ArenSunArrow,nbt={inGround:false}] aea.system.MatchUUID2 unless score @s aea.system.PlayerUUID3 = @e[type=arrow,limit=1,sort=nearest,tag=ArenSunArrow,nbt={inGround:false}] aea.system.MatchUUID3 unless score @s aea.system.PlayerUUID4 = @e[type=arrow,limit=1,sort=nearest,tag=ArenSunArrow,nbt={inGround:false}] aea.system.MatchUUID4 run damage @s 1 rr_aea:magic_sun by @e[type=arrow,limit=1,sort=nearest,tag=ArenSunArrow] from @p
# 
# execute as @e[type=arrow,tag=ArenSunArrow,tag=ArenSunArrow2,nbt={inGround:false}] at @s positioned ~ ~-0.75 ~ run execute as @e[type=!#rr_aea:magic_ignore,tag=!ArenMagicImmune,distance=..2.6] unless score @s aea.system.PlayerUUID1 = @e[type=arrow,limit=1,sort=nearest,tag=ArenSunArrow,nbt={inGround:false}] aea.system.MatchUUID1 unless score @s aea.system.PlayerUUID2 = @e[type=arrow,limit=1,sort=nearest,tag=ArenSunArrow,nbt={inGround:false}] aea.system.MatchUUID2 unless score @s aea.system.PlayerUUID3 = @e[type=arrow,limit=1,sort=nearest,tag=ArenSunArrow,nbt={inGround:false}] aea.system.MatchUUID3 unless score @s aea.system.PlayerUUID4 = @e[type=arrow,limit=1,sort=nearest,tag=ArenSunArrow,nbt={inGround:false}] aea.system.MatchUUID4 run damage @s 2 rr_aea:magic_sun by @e[type=arrow,limit=1,sort=nearest,tag=ArenSunArrow] from @p
# 
# # Special Functions for Moonstruck Enchantment
# execute as @e[type=arrow,tag=ArenMoonArrow,tag=ArenMoonArrow1,nbt={inGround:false},limit=9] at @s run particle falling_obsidian_tear ~ ~ ~ 0.35 0.35 0.35 0 2 force @a[distance=..40]
# execute as @e[type=arrow,tag=ArenMoonArrow,tag=ArenMoonArrow2,nbt={inGround:false},limit=9] at @s run particle falling_obsidian_tear ~ ~ ~ 0.5 0.5 0.5 0 2 force @a[distance=..40]
# 
# execute as @e[type=arrow,tag=ArenMoonArrow,tag=ArenMoonArrow1,nbt={inGround:false},limit=9] at @s run playsound minecraft:entity.illusioner.cast_spell player @a[distance=..40] ~ ~ ~ 0.03 0.8 0
# execute as @e[type=arrow,tag=ArenMoonArrow,tag=ArenMoonArrow2,nbt={inGround:false},limit=9] at @s run playsound minecraft:entity.illusioner.cast_spell player @a[distance=..40] ~ ~ ~ 0.08 0.65 0
# 
# execute as @e[type=arrow,tag=ArenMoonArrow,tag=ArenMoonArrow1,nbt={inGround:false}] at @s positioned ~ ~-0.75 ~ run execute as @e[type=!#rr_aea:magic_ignore,tag=!ArenMagicImmune,distance=..1.85] unless score @s aea.system.PlayerUUID1 = @e[type=arrow,limit=1,sort=nearest,tag=ArenMoonArrow,nbt={inGround:false}] aea.system.MatchUUID1 unless score @s aea.system.PlayerUUID2 = @e[type=arrow,limit=1,sort=nearest,tag=ArenMoonArrow,nbt={inGround:false}] aea.system.MatchUUID2 unless score @s aea.system.PlayerUUID3 = @e[type=arrow,limit=1,sort=nearest,tag=ArenMoonArrow,nbt={inGround:false}] aea.system.MatchUUID3 unless score @s aea.system.PlayerUUID4 = @e[type=arrow,limit=1,sort=nearest,tag=ArenMoonArrow,nbt={inGround:false}] aea.system.MatchUUID4 run effect give @s slowness 3 1 true
# 
# execute as @e[type=arrow,tag=ArenMoonArrow,tag=ArenMoonArrow2,nbt={inGround:false}] at @s positioned ~ ~-0.75 ~ run execute as @e[type=!#rr_aea:magic_ignore,tag=!ArenMagicImmune,distance=..2.6] unless score @s aea.system.PlayerUUID1 = @e[type=arrow,limit=1,sort=nearest,tag=ArenMoonArrow,nbt={inGround:false}] aea.system.MatchUUID1 unless score @s aea.system.PlayerUUID2 = @e[type=arrow,limit=1,sort=nearest,tag=ArenMoonArrow,nbt={inGround:false}] aea.system.MatchUUID2 unless score @s aea.system.PlayerUUID3 = @e[type=arrow,limit=1,sort=nearest,tag=ArenMoonArrow,nbt={inGround:false}] aea.system.MatchUUID3 unless score @s aea.system.PlayerUUID4 = @e[type=arrow,limit=1,sort=nearest,tag=ArenMoonArrow,nbt={inGround:false}] aea.system.MatchUUID4 run effect give @s slowness 4 1 true
# 
# # Special Functions for Tether Enchantment
# execute as @e[type=arrow,tag=ArenTethered,tag=!ArenUntethered,nbt={inGround:true}] at @s run execute on passengers run ride @s dismount
# execute as @e[type=arrow,tag=ArenTethered,tag=!ArenUntethered,nbt={inGround:true}] at @s run tag @s add ArenUntethered


# Tool-specific functions for displays and interaction management
execute as @e[type=item_display,tag=ArenAEAltar,tag=ArenAEAInUse] at @s if entity @n[type=marker,distance=..1.5,tag=ArenAEASwordMarker] run function rr_aea:ae_altar/core/tool_specific/sword

execute as @e[type=item_display,tag=ArenAEAltar,tag=ArenAEAInUse] at @s if entity @n[type=marker,distance=..1.5,tag=ArenAEABowMarker] run function rr_aea:ae_altar/core/tool_specific/bow

execute as @e[type=item_display,tag=ArenAEAltar,tag=ArenAEAInUse] at @s if entity @n[type=marker,distance=..1.5,tag=ArenAEAHelmetMarker] run function rr_aea:ae_altar/core/tool_specific/helmet

execute as @e[type=item_display,tag=ArenAEAltar,tag=ArenAEAInUse] at @s if entity @n[type=marker,distance=..1.5,tag=ArenAEAChestplateMarker] run function rr_aea:ae_altar/core/tool_specific/chestplate

execute as @e[type=item_display,tag=ArenAEAltar,tag=ArenAEAInUse] at @s if entity @n[type=marker,distance=..1.5,tag=ArenAEALeggingsMarker] run function rr_aea:ae_altar/core/tool_specific/leggings

execute as @e[type=item_display,tag=ArenAEAltar,tag=ArenAEAInUse] at @s if entity @n[type=marker,distance=..1.5,tag=ArenAEABootsMarker] run function rr_aea:ae_altar/core/tool_specific/boots


# Echo
execute as @e[type=marker,tag=aea.ench.echo_cloud] at @s run function rr_aea:technical/enchantments/echo/echo_tick_macro with entity @s data.echo_cloud


# Fervor Decay when no Fervor Item is held
execute as @a[predicate=!rr_aea:held_items/mainhand/fervor_any,scores={aea.ench.fervor_damage=15..}] at @s run scoreboard players remove @s aea.ench.fervor_damage 15


# Run all of the Bow-Specific commands for when a bow is shot
execute as @a[scores={aea.system.bow_used=1..}] at @s run function rr_aea:technical/custom_bow_core


schedule function rr_aea:technical/2tick 2t replace
