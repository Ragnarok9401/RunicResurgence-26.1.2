advancement revoke @s only aea_adv:enchantments/aegis/use

scoreboard players operation @s aea.ench.aegis_repair = @s aea.system.damage_shielded

# Most likely case is Offhand shield with enchantment, so it goes first
execute as @s[scores={aea.system.damage_shielded=1..},predicate=rr_aea:held_items/offhand/shield_aegis,predicate=!rr_aea:held_items/mainhand/shield_aegis] at @s store result score @s aea.math.A run data get entity @s equipment.offhand.components.minecraft:enchantments."rr_aea:aegis" 1
execute as @s[scores={aea.system.damage_shielded=1..},predicate=rr_aea:held_items/offhand/shield_aegis,predicate=!rr_aea:held_items/mainhand/shield_aegis] at @s run scoreboard players operation @s aea.ench.aegis_repair *= @s aea.math.A
execute as @s[scores={aea.system.damage_shielded=1..},predicate=rr_aea:held_items/offhand/shield_aegis,predicate=!rr_aea:held_items/mainhand/shield_aegis] at @s run item modify entity @s weapon.offhand rr_aea:aegis_shield_repair
execute as @s[scores={aea.system.damage_shielded=1..},predicate=rr_aea:held_items/offhand/shield_aegis,predicate=!rr_aea:held_items/mainhand/shield_aegis] run return 0

# Then, if not, check Mainhand
execute as @s[scores={aea.system.damage_shielded=1..},predicate=rr_aea:held_items/mainhand/shield_aegis] at @s store result score @s aea.math.A run data get entity @s SelectedItem.components.minecraft:enchantments."rr_aea:aegis" 1
execute as @s[scores={aea.system.damage_shielded=1..},predicate=rr_aea:held_items/mainhand/shield_aegis] at @s run item modify entity @s weapon.mainhand rr_aea:aegis_shield_repair
execute as @s[scores={aea.system.damage_shielded=1..},predicate=rr_aea:held_items/mainhand/shield_aegis] run return 0