attribute @s movement_speed modifier remove rr_aea:enchantment.wanderlust_blessing.movement_speed
attribute @s attack_damage modifier remove rr_aea:enchantment.wanderlust_blessing.attack_damage
attribute @s jump_strength modifier remove rr_aea:enchantment.wanderlust_blessing.jump_strength
attribute @s safe_fall_distance modifier remove rr_aea:enchantment.wanderlust_blessing.safe_fall
attribute @s block_break_speed modifier remove rr_aea:enchantment.wanderlust_blessing.break_speed
attribute @s block_interaction_range modifier remove rr_aea:enchantment.wanderlust_blessing.block_reach
attribute @s entity_interaction_range modifier remove rr_aea:enchantment.wanderlust_blessing.entity_reach
attribute @s luck modifier remove rr_aea:enchantment.wanderlust_blessing.luck

execute as @s at @s run summon marker ~ ~ ~ {Tags:["aea.ench.wanderlust"],data:{wanderlust:{dmg:0.0f,speed:0.0f,jump:0.0f,break:0.0f,reach:0.0f,luck:0.0f}}}

# 0.0474% Total Attack Damage per block
execute at @s store result entity @n[type=marker,distance=..0.1,tag=aea.ench.wanderlust] data.wanderlust.dmg float 0.000474 run scoreboard players get @s aea.ench.wanderlust_count
# 0.25% Base Speed per block
execute at @s store result entity @n[type=marker,distance=..0.1,tag=aea.ench.wanderlust] data.wanderlust.speed float 0.0025 run scoreboard players get @s aea.ench.wanderlust_count
# 0.15% Base Safe Fall per block
execute at @s store result entity @n[type=marker,distance=..0.1,tag=aea.ench.wanderlust] data.wanderlust.jump float 0.0015 run scoreboard players get @s aea.ench.wanderlust_count
# 0.2% Total Mining Speed per block
execute at @s store result entity @n[type=marker,distance=..0.1,tag=aea.ench.wanderlust] data.wanderlust.break float 0.002 run scoreboard players get @s aea.ench.wanderlust_count
# 0.01 Reach per block
execute at @s store result entity @n[type=marker,distance=..0.1,tag=aea.ench.wanderlust] data.wanderlust.reach float 0.01 run scoreboard players get @s aea.ench.wanderlust_count
# 0.01 Luck per block
execute at @s store result entity @n[type=marker,distance=..0.1,tag=aea.ench.wanderlust] data.wanderlust.luck float 0.01 run scoreboard players get @s aea.ench.wanderlust_count

#execute as @s at @s if entity @n[type=marker,distance=..0.1] if data entity @n[type=marker,distance=..0.1] data.wanderlust run say hi

execute as @s at @s run function rr_aea:technical/enchantments/wanderlust_blessing/attribute_macro with entity @n[type=marker,distance=..0.1,tag=aea.ench.wanderlust] data.wanderlust