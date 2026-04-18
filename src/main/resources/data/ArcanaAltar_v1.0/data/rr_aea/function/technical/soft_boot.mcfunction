
scoreboard objectives add aea.system.PlayerUUID1 dummy
scoreboard objectives add aea.system.PlayerUUID2 dummy
scoreboard objectives add aea.system.PlayerUUID3 dummy
scoreboard objectives add aea.system.PlayerUUID4 dummy

scoreboard objectives add aea.system.MatchUUID1 dummy
scoreboard objectives add aea.system.MatchUUID2 dummy
scoreboard objectives add aea.system.MatchUUID3 dummy
scoreboard objectives add aea.system.MatchUUID4 dummy


# Keep track of Enchantments Performed with Enchanting Tables or Arcane Enchanting Altars
scoreboard objectives add aea.stats.enchantments_performed minecraft.custom:enchant_item
scoreboard objectives add aea.stats.arcane_enchantments_performed dummy


# Configurable Scoreboards
#region
## cost_multiplier - Base value to multiply all Enchanting Altar Level Costs by (default is 10, for x1.0)
scoreboard objectives add aea.config.cost_multiplier dummy [{"text":"Cost Multiplier","color":"yellow","italic":false,"hover_event":{"action":"show_text","value":{"text":"Default is 10, or x1.0.","color":"aqua","italic":false}}}]
execute unless score $config aea.config.cost_multiplier matches -2147483648..2147483647 run scoreboard players set $config aea.config.cost_multiplier 10

## min_cost - Minimum cost that an Enchantment may have (Default is 6, or 6 levels)
scoreboard objectives add aea.config.min_cost dummy [{"text":"Minimum Cost","color":"yellow","italic":false,"hover_event":{"action":"show_text","value":{"text":"Default is 6, or 6 levels.","color":"aqua","italic":false}}}]
execute unless score $config aea.config.min_cost matches -2147483648..2147483647 run scoreboard players set $config aea.config.min_cost 6

## allow_infinity_mending - Whether or not to allow Infinity and Mending to be on the same item (Default is 1, or True. 0 must be set for False.)
scoreboard objectives add aea.config.allow_infinity_mending dummy [{"text":"Allow Infinity & Mending","color":"yellow","italic":false,"hover_event":{"action":"show_text","value":{"text":"Default is 1, or True. 0 must be set for False.","color":"aqua","italic":false}}}]
execute unless score $config aea.config.allow_infinity_mending matches -2147483648..2147483647 run scoreboard players set $config aea.config.allow_infinity_mending 1

## max_cost - Maximum cost for a single Enchanting Altar use. (Default is 75, or 75 levels. -1 may be set for No Limit.)
scoreboard objectives add aea.config.max_cost dummy [{"text":"Max Cost","color":"yellow","italic":false,"hover_event":{"action":"show_text","value":{"text":"Default is 80, or 80% of Max Health on respawn.","color":"aqua","italic":false}}}]
execute unless score $config aea.config.max_cost matches -2147483648..2147483647 run scoreboard players set $config aea.config.max_cost 75

## recursion_time - Time between volleys of Recursion arrows. (Default is 15, 0.75 seconds. Must be 1 or more, otherwise will reset to default. HIGHLY recommended to be below 40 to reduce lag.)
scoreboard objectives add aea.config.recursion_time dummy [{"text":"Recursion Time","color":"yellow","italic":false,"hover_event":{"action":"show_text","value":{"text":"Default is 15, or 0.75 seconds. Must be set to 1 or more, otherwise will reset to default. HIGHLY recommended to be below 40 to reduce lag.","color":"aqua","italic":false}}}]
execute unless score $config aea.config.recursion_time matches -2147483648..2147483647 run scoreboard players set $config aea.config.recursion_time 15

## downpour_time - Time between volleys of Recursion arrows. (Default is 10, 0.5 seconds. Must be 1 or more, otherwise will reset to default. HIGHLY recommended to be below 40 to reduce lag.)
scoreboard objectives add aea.config.downpour_time dummy [{"text":"Downpour Time","color":"yellow","italic":false,"hover_event":{"action":"show_text","value":{"text":"Default is 5, or 0.25 seconds. Must be set to 1 or more, otherwise will reset to default. HIGHLY recommended to be below 40 to reduce lag.","color":"aqua","italic":false}}}]
execute unless score $config aea.config.downpour_time matches -2147483648..2147483647 run scoreboard players set $config aea.config.downpour_time 5

## distraction_dmg_mod - % of damage that Distraction causes if hurt while shielding. (Default is 133, or +33%. Must be non-negative.)
scoreboard objectives add aea.config.distraction_dmg_mod dummy [{"text":"Distraction Damage Modifier","color":"yellow","italic":false,"hover_event":{"action":"show_text","value":{"text":"Default is 133, or +33% damage. Must be non-negative, otherwise will reset to default.","color":"aqua","italic":false}}}]
execute unless score $config aea.config.distraction_dmg_mod matches 0..2147483647 run scoreboard players set $config aea.config.distraction_dmg_mod 133

#endregion

# Triggers
#region
## show_config - shows the player the current configurations for aea (permission level 2 required)
scoreboard objectives add aea.trigger.show_config trigger
## reset_config - resets the configurations to default settings (permission level 4 required)
scoreboard objectives add aea.trigger.reset_config trigger
## Toggle Altar Guide - toggles a progressive, text-based guide to the Arcane Enchanting Altar as it is used.
scoreboard objectives add aea.trigger.toggle_altar_guide trigger
## Show Altar Description - shows the user a description of how the Arcane Enchanting Altar is used and created.
scoreboard objectives add aea.trigger.altar_info trigger
## Show Enchantments - shows the user a list of current custom enchantments, as well as their max levels and what item they can be placed on.
scoreboard objectives add aea.trigger.enchantment_list trigger
## Show Updatees - shows the user a list of changes for the current update and/or past updates.
scoreboard objectives add aea.trigger.show_updates trigger
#endregion
# Tracks Update Version for the current Arcane Enchanting Altar datapack
scoreboard objectives add aea.system.UpdateNumber dummy


scoreboard objectives add aea.ench.fervor_damage minecraft.custom:damage_dealt
scoreboard objectives add aea.ench.gravity_track dummy
scoreboard objectives add aea.ench.recursion_timer dummy
scoreboard objectives add aea.ench.downpour_timer dummy
scoreboard objectives add aea.ench.echo_cooldown dummy
scoreboard objectives add aea.ench.maul_timer dummy
scoreboard objectives add aea.ench.pressure_timer dummy
scoreboard objectives add aea.ench.foresight_timer dummy
scoreboard objectives add aea.ench.unrest_timer dummy
scoreboard objectives add aea.ench.strain_timer dummy
scoreboard objectives add aea.ench.pin_timer dummy
scoreboard objectives add aea.ench.aegis_repair dummy
scoreboard objectives add aea.ench.wanderlust_count dummy
scoreboard objectives add aea.ench.exhaustion_level dummy
scoreboard objectives add aea.ench.enrage_value dummy
scoreboard objectives add aea.ench.bastion_token dummy
scoreboard objectives add aea.system.bow_used minecraft.used:bow
scoreboard objectives add aea.system.level_difference dummy
scoreboard objectives add aea.system.level_base dummy
scoreboard objectives add aea.system.level_cost dummy
scoreboard objectives add aea.system.NSwordUsed minecraft.used:netherite_sword
scoreboard objectives add aea.system.DSwordUsed minecraft.used:diamond_sword
scoreboard objectives add aea.system.GSwordUsed minecraft.used:golden_sword
scoreboard objectives add aea.system.ISwordUsed minecraft.used:iron_sword
scoreboard objectives add aea.system.SSwordUsed minecraft.used:stone_sword
scoreboard objectives add aea.system.WSwordUsed minecraft.used:wooden_sword
scoreboard objectives add aea.system.SwordUsed dummy
scoreboard objectives add aea.system.shield_used minecraft.used:minecraft.shield
scoreboard objectives add aea.system.damage_shielded minecraft.custom:damage_blocked_by_shield


scoreboard objectives add aea.math.A dummy
scoreboard objectives add aea.math.B dummy
scoreboard objectives add aea.math.C dummy
scoreboard objectives add aea.math.D dummy
scoreboard objectives add aea.math.E dummy
scoreboard objectives add aea.math.F dummy
scoreboard objectives add aea.math.G dummy
scoreboard objectives add aea.math.H dummy
scoreboard objectives add aea.math.I dummy
scoreboard objectives add aea.math.J dummy
scoreboard objectives add aea.math.K dummy
scoreboard objectives add aea.math.L dummy
scoreboard objectives add aea.math.M dummy
scoreboard objectives add aea.math.N dummy

execute as @a at @s store result score @s aea.system.PlayerUUID1 run data get entity @s UUID[0]
execute as @a at @s store result score @s aea.system.PlayerUUID2 run data get entity @s UUID[1]
execute as @a at @s store result score @s aea.system.PlayerUUID3 run data get entity @s UUID[2]
execute as @a at @s store result score @s aea.system.PlayerUUID4 run data get entity @s UUID[3]

scoreboard players set @a[tag=!aeaInit] aea.stats.enchantments_performed 0
scoreboard players set @a[tag=!aeaInit] aea.stats.arcane_enchantments_performed 0
scoreboard players set @a[tag=!aeaInit] aea.ench.echo_cooldown 0
scoreboard players set @a[tag=!aeaInit] aea.system.WSwordUsed 0
scoreboard players set @a[tag=!aeaInit] aea.system.SSwordUsed 0
scoreboard players set @a[tag=!aeaInit] aea.system.ISwordUsed 0
scoreboard players set @a[tag=!aeaInit] aea.system.GSwordUsed 0
scoreboard players set @a[tag=!aeaInit] aea.system.DSwordUsed 0
scoreboard players set @a[tag=!aeaInit] aea.system.NSwordUsed 0
scoreboard players set @a[tag=!aeaInit] aea.system.SwordUsed 0
execute as @a unless score @s aea.ench.wanderlust_count matches 0.. run scoreboard players set @s aea.ench.wanderlust_count 0
execute as @a unless score @s aea.ench.exhaustion_level matches -100.. run scoreboard players set @s aea.ench.exhaustion_level -100
execute as @a unless score @s aea.ench.bastion_token matches 0.. run scoreboard players set @s aea.ench.bastion_token 1

scoreboard players enable @a aea.trigger.reset_config
scoreboard players enable @a aea.trigger.show_config
scoreboard players enable @a aea.trigger.enchantment_list
scoreboard players enable @a aea.trigger.altar_info
scoreboard players enable @a aea.trigger.show_updates

scoreboard players set $global aea.system.UpdateNumber 2

tag @a add aeaInit

schedule function rr_aea:technical/2min 1s replace
schedule function rr_aea:technical/second 1s replace
# schedule function rr_aea:technical/6s 6s replace
# schedule function rr_aea:technical/5s 5s replace
schedule function rr_aea:technical/3s 3s replace
# schedule function rr_aea:technical/3min 60s replace
# schedule function rr_aea:technical/10min 60s replace
schedule function rr_aea:technical/4tick 4t replace
schedule function rr_aea:technical/2tick 2t replace
schedule function rr_aea:technical/10tick 10t replace

tellraw @a [{"text":"[RR: ","color":"gray"},{"color":"#FFDB29","text":"A"},{"color":"#E8DE3C","text":"r"},{"color":"#D1E050","text":"c"},{"color":"#BAE363","text":"a"},{"color":"#A3E577","text":"n"},{"color":"#8CE88A","text":"a "},{"color":"#76EA9E","text":"A"},{"color":"#5FEDB1","text":"l"},{"color":"#48EFC5","text":"t"},{"color":"#31F2D8","text":"a"},{"text":"r","color":"#03F7FF"},{"text":"] ","color":"gray"},{"text":"Arcana Altar has loaded successfully","color":"light_purple"}]