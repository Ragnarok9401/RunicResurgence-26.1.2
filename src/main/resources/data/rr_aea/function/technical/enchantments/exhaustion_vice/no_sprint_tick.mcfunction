scoreboard players set @s[scores={aea.ench.exhaustion_level=..-84}] aea.ench.exhaustion_level -100
scoreboard players remove @s[scores={aea.ench.exhaustion_level=-84..}] aea.ench.exhaustion_level 16

attribute @s movement_speed modifier remove rr_aea:enchantment.exhaustion_vice.movement_speed
attribute @s attack_damage modifier remove rr_aea:enchantment.exhaustion_vice.attack_damage
attribute @s jump_strength modifier remove rr_aea:enchantment.exhaustion_vice.jump_strength
attribute @s safe_fall_distance modifier remove rr_aea:enchantment.exhaustion_vice.safe_fall
attribute @s block_break_speed modifier remove rr_aea:enchantment.exhaustion_vice.break_speed
attribute @s block_interaction_range modifier remove rr_aea:enchantment.exhaustion_vice.block_reach
attribute @s entity_interaction_range modifier remove rr_aea:enchantment.exhaustion_vice.entity_reach
attribute @s luck modifier remove rr_aea:enchantment.exhaustion_vice.luck

execute as @s at @s run summon marker ~ ~ ~ {Tags:["aea.ench.exhaustion"],data:{exhaustion:{dmg:0.0f,speed:0.0f,jump:0.0f,break:0.0f,reach:0.0f,luck:0.0f}}}

# -0.05% Total Speed per 1 score
execute at @s[scores={aea.ench.exhaustion_level=0..}] store result entity @n[type=marker,distance=..0.1,tag=aea.ench.exhaustion] data.exhaustion.speed float -0.0005 run scoreboard players get @s aea.ench.exhaustion_level

# Apply attributes
execute as @s at @s run function rr_aea:technical/enchantments/exhaustion_vice/attribute_macro with entity @n[type=marker,distance=..0.1,tag=aea.ench.exhaustion] data.exhaustion