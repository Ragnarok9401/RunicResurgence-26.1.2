attribute @s movement_speed modifier remove rr_aea:enchantment.lead_vice_speed
attribute @s jump_strength modifier remove rr_aea:enchantment.lead_vice_jump

execute as @s[predicate=rr_aea:held_items/any/shield_with_pressure] at @s as @e[distance=..6,type=!#rr_aea:magic_ignore] run attribute @s gravity modifier remove rr_aea:enchantment.pressure.gravity_increase

scoreboard players set @s aea.ench.pressure_timer 0
scoreboard players set @s aea.system.damage_shielded 0
scoreboard players set @s aea.ench.foresight_timer 12

advancement revoke @s only aea_adv:enchantments/distraction_vice/use