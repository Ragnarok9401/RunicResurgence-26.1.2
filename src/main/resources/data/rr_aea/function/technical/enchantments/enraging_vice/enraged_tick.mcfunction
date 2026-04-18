execute as @s[scores={aea.ench.enrage_value=1..}] run scoreboard players remove @s aea.ench.enrage_value 3

attribute @s attack_damage modifier remove rr_aea:enchantment.enraging_vice.attack_damage
attribute @s movement_speed modifier remove rr_aea:enchantment.enraging_vice.movement_speed
attribute @s jump_strength modifier remove rr_aea:enchantment.enraging_vice.jump_strength
attribute @s safe_fall_distance modifier remove rr_aea:enchantment.enraging_vice.safe_fall
attribute @s armor modifier remove rr_aea:enchantment.enraging_vice.armor
attribute @s armor_toughness modifier remove rr_aea:enchantment.enraging_vice.armor_toughness
attribute @s knockback_resistance modifier remove rr_aea:enchantment.enraging_vice.knockback_resistance

execute as @s at @s run summon marker ~ ~ ~ {Tags:["aea.ench.enraging"],data:{enraging:{dmg:0.0f,speed:0.0f,jump:0.0f,armor:0.0f,toughness:0.0f,knockback:0.0f}}}


# +2% Total Attack Damage per 1 score
execute at @s[scores={aea.ench.enrage_value=0..}] store result entity @n[type=marker,distance=..0.1,tag=aea.ench.enraging] data.enraging.dmg float 0.02 run scoreboard players get @s aea.ench.enrage_value
# +0.75% Total Speed per 1 score
execute at @s[scores={aea.ench.enrage_value=0..}] store result entity @n[type=marker,distance=..0.1,tag=aea.ench.enraging] data.enraging.speed float 0.0075 run scoreboard players get @s aea.ench.enrage_value
# +0.1% Total Jump per 1 score
execute at @s[scores={aea.ench.enrage_value=0..}] store result entity @n[type=marker,distance=..0.1,tag=aea.ench.enraging] data.enraging.jump float 0.001 run scoreboard players get @s aea.ench.enrage_value
# +0.2 Armor per 1 score
execute at @s[scores={aea.ench.enrage_value=0..}] store result entity @n[type=marker,distance=..0.1,tag=aea.ench.enraging] data.enraging.armor float 0.2 run scoreboard players get @s aea.ench.enrage_value
# +0.1 Toughness per 1 score
execute at @s[scores={aea.ench.enrage_value=0..}] store result entity @n[type=marker,distance=..0.1,tag=aea.ench.enraging] data.enraging.toughness float 0.1 run scoreboard players get @s aea.ench.enrage_value
# +0.02% Knockback Resistance per 1 score
execute at @s[scores={aea.ench.enrage_value=0..}] store result entity @n[type=marker,distance=..0.1,tag=aea.ench.enraging] data.enraging.knockback float 0.02 run scoreboard players get @s aea.ench.enrage_value

# Apply attributes
execute as @s at @s run function rr_aea:technical/enchantments/enraging_vice/attribute_macro with entity @n[type=marker,distance=..0.1,tag=aea.ench.enraging] data.enraging