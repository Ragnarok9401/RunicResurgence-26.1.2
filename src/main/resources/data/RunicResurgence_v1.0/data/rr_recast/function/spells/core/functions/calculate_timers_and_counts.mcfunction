# Generalized function for all Spell Cooldown/Windup calculation, includes Minimum Cooldown and Minimum Windup

# Base Tablet change
execute as @s[predicate=rr_recast:held_items/mainhand/tablet/runic_tablet_enriched] run scoreboard players remove @s rr.spell.Cooldown 20
execute as @s[predicate=rr_recast:held_items/mainhand/tablet/runic_tablet_soul] run scoreboard players remove @s rr.spell.Cooldown 40
execute as @s[predicate=rr_recast:held_items/mainhand/tablet/runic_tablet_master] run scoreboard players remove @s rr.spell.Cooldown 80

# Gear, Enchantment, and other sources of change
## Helmet
scoreboard players set @s rr.spell.CooldownBonus 0
execute store result score @s rr.spell.CooldownBonus run data get entity @s equipment.head.components."minecraft:custom_data"."rr.spell.cooldown_change" 1
scoreboard players operation @s rr.spell.Cooldown += @s rr.spell.CooldownBonus
scoreboard players set @s rr.spell.WindupBonus 0
execute store result score @s rr.spell.WindupBonus run data get entity @s equipment.head.components."minecraft:custom_data"."rr.spell.windup_change" 1
scoreboard players operation @s rr.spell.Windup += @s rr.spell.WindupBonus
## Chestplate
scoreboard players set @s rr.spell.CooldownBonus 0
execute store result score @s rr.spell.CooldownBonus run data get entity @s equipment.chest.components."minecraft:custom_data"."rr.spell.cooldown_change" 1
scoreboard players operation @s rr.spell.Cooldown += @s rr.spell.CooldownBonus
scoreboard players set @s rr.spell.WindupBonus 0
execute store result score @s rr.spell.WindupBonus run data get entity @s equipment.chest.components."minecraft:custom_data"."rr.spell.windup_change" 1
scoreboard players operation @s rr.spell.Windup += @s rr.spell.WindupBonus
## Leggings
scoreboard players set @s rr.spell.CooldownBonus 0
execute store result score @s rr.spell.CooldownBonus run data get entity @s equipment.legs.components."minecraft:custom_data"."rr.spell.cooldown_change" 1
scoreboard players operation @s rr.spell.Cooldown += @s rr.spell.CooldownBonus
scoreboard players set @s rr.spell.WindupBonus 0
execute store result score @s rr.spell.WindupBonus run data get entity @s equipment.legs.components."minecraft:custom_data"."rr.spell.windup_change" 1
scoreboard players operation @s rr.spell.Windup += @s rr.spell.WindupBonus
## Boots
scoreboard players set @s rr.spell.CooldownBonus 0
execute store result score @s rr.spell.CooldownBonus run data get entity @s equipment.feet.components."minecraft:custom_data"."rr.spell.cooldown_change" 1
scoreboard players operation @s rr.spell.Cooldown += @s rr.spell.CooldownBonus
scoreboard players set @s rr.spell.WindupBonus 0
execute store result score @s rr.spell.WindupBonus run data get entity @s equipment.feet.components."minecraft:custom_data"."rr.spell.windup_change" 1
scoreboard players operation @s rr.spell.Windup += @s rr.spell.WindupBonus
## Mainhand
scoreboard players set @s rr.spell.CooldownBonus 0
execute store result score @s rr.spell.CooldownBonus run data get entity @s SelectedItem.components."minecraft:custom_data"."rr.spell.cooldown_change" 1
scoreboard players operation @s rr.spell.Cooldown += @s rr.spell.CooldownBonus
scoreboard players set @s rr.spell.WindupBonus 0
execute store result score @s rr.spell.WindupBonus run data get entity @s SelectedItem.components."minecraft:custom_data"."rr.spell.windup_change" 1
scoreboard players operation @s rr.spell.Windup += @s rr.spell.WindupBonus
## Offhand
scoreboard players set @s rr.spell.CooldownBonus 0
execute store result score @s rr.spell.CooldownBonus run data get entity @s equipment.offhand.components."minecraft:custom_data"."rr.spell.cooldown_change" 1
scoreboard players operation @s rr.spell.Cooldown += @s rr.spell.CooldownBonus
scoreboard players set @s rr.spell.WindupBonus 0
execute store result score @s rr.spell.WindupBonus run data get entity @s equipment.offhand.components."minecraft:custom_data"."rr.spell.windup_change" 1
scoreboard players operation @s rr.spell.Windup += @s rr.spell.WindupBonus

$execute as @s unless entity @s[scores={rr.spell.Windup=$(minimum_windup)..}] run scoreboard players set @s rr.spell.Windup $(minimum_windup)
$execute as @s unless entity @s[scores={rr.spell.Cooldown=$(minimum_cooldown)..}] run scoreboard players set @s rr.spell.Cooldown $(minimum_cooldown)


# Projectile Count Modification for Spell-Specific Tags
$execute if predicate rr_recast:spell_modifications/spell-specific/$(reference)/proj_count/any run function rr_recast:spells/core/functions/boost_calculation/spell-specific/projectile/proj_count with storage rr_recast:global spells.$(reference).projectile

# Projectile Count Modification for Elemental Type Tags
#$execute if entity @p[distance=..2,predicate=rr_recast:spell_modifications/elemental/$(element)/proj_count/any] run function rr_recast:spells/core/functions/boost_calculation/elemental/$(element)/projectile/proj_count with storage rr_recast:global spells.$(reference)

# Projectile Count Delay Modification for Spell-Specific Tags
$execute if predicate rr_recast:spell_modifications/spell-specific/$(reference)/proj_count_delay/any run function rr_recast:spells/core/functions/boost_calculation/spell-specific/projectile/proj_count_delay with storage rr_recast:global spells.$(reference).projectile

# Projectile Count Delay Modification for Elemental Type Tags
#$execute if entity @p[distance=..2,predicate=rr_recast:spell_modifications/elemental/$(element)/proj_count_delay/any] run function rr_recast:spells/core/functions/boost_calculation/elemental/$(element)/projectile/proj_count with storage rr_recast:global spells.$(reference)


## Aura Count Modification for Spell-Specific Tags
#$execute if predicate rr_recast:spell_modifications/spell-specific/$(reference)/aura_count/any run function rr_recast:spells/core/functions/boost_calculation/spell-specific/aura/aura_count with storage rr_recast:global spells.$(reference).aura

## Aura Count Modification for Elemental Type Tags
#$execute if entity @p[distance=..2,predicate=rr_recast:spell_modifications/elemental/$(element)/aura_count/any] run function rr_recast:spells/core/functions/boost_calculation/elemental/$(element)/aura/aura_speed with storage rr_recast:global spells.$(reference)