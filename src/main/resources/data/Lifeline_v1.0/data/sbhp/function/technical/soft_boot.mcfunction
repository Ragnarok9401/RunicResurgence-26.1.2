scoreboard objectives add sbhp.PlayerUUID1 dummy
scoreboard objectives add sbhp.PlayerUUID2 dummy
scoreboard objectives add sbhp.PlayerUUID3 dummy
scoreboard objectives add sbhp.PlayerUUID4 dummy

scoreboard objectives add sbhp.UUID1Match dummy
scoreboard objectives add sbhp.UUID2Match dummy
scoreboard objectives add sbhp.UUID3Match dummy
scoreboard objectives add sbhp.UUID4Match dummy

# Base overall health
scoreboard objectives add sbhp.HealthBase dummy
# Health added to / subtracted from base for total (Armor Quality, other basic Health changes)
scoreboard objectives add sbhp.HealthAdd dummy
# Health added to / subtracted from by percent or multipliers (Health Boost, Absorption, other major Health changes)
scoreboard objectives add sbhp.HealthMult dummy
# Overall Percentage of current Health compared to Max Health
scoreboard objectives add sbhp.HealthPrcnt dummy
# Base Max Health
scoreboard objectives add sbhp.HealthMaxBase dummy
# Total Max Health (+ HealthAdd) kept separate from HealthMaxBase to prevent certain things from adding to regeneration rate
scoreboard objectives add sbhp.HealthMaxTrue dummy
# Current Health of the score owner (true health / 100)
scoreboard objectives add sbhp.HealthCurr dummy
# True Health of the score owner
scoreboard objectives add sbhp.HealthTrue dummy
# Shows Max Health in actionbar
scoreboard objectives add sbhp.HealthMVis dummy
# Tracks the total amount of max HP that has been granted by eating food
scoreboard objectives add sbhp.TotalFoodHPIncrease dummy
# Tracks the player's Total Armor level
scoreboard objectives add sbhp.Armor dummy
# Tracks the player's Total Armor level
scoreboard objectives add sbhp.ArmorHead dummy
# Tracks the player's Total Armor level
scoreboard objectives add sbhp.ArmorChest dummy
# Tracks the player's Total Armor level
scoreboard objectives add sbhp.ArmorLegs dummy
# Tracks the player's Total Armor level
scoreboard objectives add sbhp.ArmorBoots dummy
# Tracks the player's Vanilla Armor level
scoreboard objectives add sbhp.ArmorBase armor
# Tracks the player's Total Toughness level
scoreboard objectives add sbhp.Toughness dummy
# Current Mount Health
scoreboard objectives add sbhp.MountHealth dummy
# Max Mount Health
scoreboard objectives add sbhp.MountHealthMax dummy
# Mount Armor
scoreboard objectives add sbhp.MountArmor dummy
# Mount Armor Toughness
scoreboard objectives add sbhp.MountToughness dummy
# Amount of health to be restored over a given time, comes from Tinctures primarily
scoreboard objectives add sbhp.HealOverTime dummy
# Amount of time to regenerate the total HealOverTime amount for
scoreboard objectives add sbhp.TimeToHeal dummy
# Base amount of time to regenerate the total HealOverTime amount for, to be multiplied by how many Healing Ticks occur per second
scoreboard objectives add sbhp.TimeToHealBase dummy

# Needed to prevent a bug with the Food HP Increase system where eating the last slice of a cake block would not register
scoreboard objectives add sbhp.CakeEaten minecraft.custom:minecraft.eat_cake_slice


# Current Health of score owner +1
scoreboard objectives add sbhp.HPUp1 dummy
# Current Health of score owner -1
scoreboard objectives add sbhp.HPDwn1 dummy


# Keeps track of how long ago the last damage was taken, max 20 to represent 20 seconds
# Healing is entirely negated (unless caused by effects or other direct heals) for the first 10 seconds after damage is taken
# After the first 10 seconds, healing ramps up to 100% over the course of the second 10 seconds
scoreboard objectives add sbhp.DmgTimer dummy
# Keeps track of Damage Taken so that it can be removed from the True Health score
scoreboard objectives add sbhp.DmgTaken custom:damage_taken

# Configurable Scoreboards
#region
## DmgWaitTime - How many full seconds should elapse to begin healing after taking damage (default is 5 seconds)
## This also changes how effective Strength can be at beginning regeneration again after being damaged
scoreboard objectives add sbhp.config.DmgWait dummy
execute unless score $config sbhp.config.DmgWait matches 0.. run scoreboard players set $config sbhp.config.DmgWait 5

## HealTimeMax - Seconds for Healing to reach peak (Default is 20 seconds)
scoreboard objectives add sbhp.config.HealTimeMax dummy
execute unless score $config sbhp.config.HealTimeMax matches 0.. run scoreboard players set $config sbhp.config.HealTimeMax 20

## BaseDmgMod - Base Damage Modification (default is 110%--or +10%--damage taken from all (vanilla) sources)
scoreboard objectives add sbhp.config.BaseDmgMod dummy
execute unless score $config sbhp.config.BaseDmgMod matches 0.. run scoreboard players set $config sbhp.config.BaseDmgMod 110

## RespawnHealth - Respawn Health Amount (in % of Max HP, default is 80%)
## For example, at 200 Max HP, you will respawn with 160 Current HP, or 80% of 200. Max HP is not affected by this.
scoreboard objectives add sbhp.config.RespawnHealth dummy
execute unless score $config sbhp.config.RespawnHealth matches 1..100 run scoreboard players set $config sbhp.config.RespawnHealth 80

## TickSpeedMode - internal indicator to denote how many ticks pass between regeneration ticks
## Default is 5, denoting 4 Heal Ticks per second. THIS SHOULD NOT BE CHANGED BY PLAYERS aside from using the SwapTickSpeed trigger.
scoreboard objectives add sbhp.config.TickSpeedMode dummy
execute unless score $config sbhp.config.TickSpeedMode matches 0..20 run scoreboard players set $config sbhp.config.TickSpeedMode 5

## DmgIndOn
## Default is 1 (on), allowing small damage numbers to appear above players who take damage
scoreboard objectives add sbhp.config.DmgIndOn dummy
execute unless score $config sbhp.config.DmgIndOn matches 0..1 run scoreboard players set $config sbhp.config.DmgIndOn 1

## DefaultDmgColor
## Default is red (2), changes color of the damage indicator popup when the Damage Type doesn't fall under specific categories
scoreboard objectives add sbhp.config.DefaultDmgColor dummy
execute unless score $config sbhp.config.DefaultDmgColor matches 0..20 run scoreboard players set $config sbhp.config.DefaultDmgColor 2

#endregion

# Triggers
#region
## ShowConfig - shows the player the current configurations for Healthscore (permission level 2 required)
scoreboard objectives add sbhp.trigger.ShowConfig trigger
## ToggleDmgIndicator - Toggles the Damage Indicator on or off. On by default
scoreboard objectives add sbhp.trigger.ToggleDmgIndicator trigger
## ChangeDmgColor - displays a text-based UI that allows changing the default damage color
scoreboard objectives add sbhp.trigger.ChangeDmgColor trigger
## DmgColor - works with ChangeDmgColor to modify the default dmg indicator color if damage received is not certain typesd (i.e. not Runic Resurgence magic types)
scoreboard objectives add sbhp.trigger.DmgColor trigger
## ResetConfig - resets the configurations to default settings (permission level 4 required)
scoreboard objectives add sbhp.trigger.ResetConfig trigger
## SwapTickSpeed - toggles current health tick speed between 10 Ticks and 5 Ticks (no difference in actual heal amount) (permission level 3 required)
scoreboard objectives add sbhp.trigger.SwapTickSpeed trigger
## DebugHealthChange - Changes the amount that the Debug Health Modifier changes maximum health by. Defaults to +100 (+1.00 hp) per use.
scoreboard objectives add sbhp.trigger.DebugHealthChange trigger
## ResetFoodHPIncrease - Resets the user's Max HP to before they ate any food items
scoreboard objectives add sbhp.trigger.ResetFoodHPIncrease trigger
## ToggleHealSound - Default is off (0), makes it so any healing will or will not play a soft sound
scoreboard objectives add sbhp.trigger.ToggleHealSound trigger
#endregion


scoreboard objectives add sbhp.math.A dummy
scoreboard objectives add sbhp.math.B dummy
scoreboard objectives add sbhp.math.C dummy
scoreboard objectives add sbhp.math.D dummy
scoreboard objectives add sbhp.math.Health_A dummy
scoreboard objectives add sbhp.math.Health_B dummy
scoreboard objectives add sbhp.math.rand1 dummy
scoreboard objectives add sbhp.math.rand2 dummy
scoreboard objectives add sbhp.math.Toughness dummy
scoreboard objectives add sbhp.math.Damage dummy
scoreboard objectives add sbhp.math.Armor dummy
scoreboard objectives add sbhp.math.ArmorDiv dummy
scoreboard objectives add sbhp.math.DmgFinal dummy

scoreboard objectives add sbhp.math.effect_amp_1 dummy
scoreboard objectives add sbhp.math.effect_amp_2 dummy

execute as @a store result score @s sbhp.PlayerUUID1 run data get entity @s UUID[0]
execute as @a store result score @s sbhp.PlayerUUID2 run data get entity @s UUID[1]
execute as @a store result score @s sbhp.PlayerUUID3 run data get entity @s UUID[2]
execute as @a store result score @s sbhp.PlayerUUID4 run data get entity @s UUID[3]

execute as @e run scoreboard players operation @s sbhp.HPDwn1 = @s sbhp.HealthCurr
execute as @e run scoreboard players remove @s sbhp.HPDwn1 1

scoreboard players enable @a sbhp.trigger.ResetConfig
scoreboard players enable @a sbhp.trigger.ShowConfig
scoreboard players enable @a sbhp.trigger.SwapTickSpeed
scoreboard players enable @a sbhp.trigger.ChangeDmgColor
scoreboard players enable @a sbhp.trigger.ToggleDmgIndicator
scoreboard players enable @a sbhp.trigger.DmgColor
scoreboard players enable @a sbhp.trigger.DebugHealthChange
scoreboard players enable @a sbhp.trigger.ResetFoodHPIncrease
scoreboard players enable @a sbhp.trigger.ToggleHealSound

execute unless score $config sbhp.trigger.DebugHealthChange matches -2147483648..2147483647 run scoreboard players set $config sbhp.trigger.DebugHealthChange 100

# Set a default Armor value of 0 for all players
execute as @a unless score @s sbhp.Armor matches -2147483648..2147483647 run scoreboard players set @s sbhp.Armor 0

schedule function sbhp:technical/second 1s replace
# schedule function sbhp:technical/6s 6s replace
# schedule function sbhp:technical/5s 5s replace
# schedule function sbhp:technical/3s 3s replace
# schedule function sbhp:technical/3min 60s replace
# schedule function sbhp:technical/10min 60s replace
# schedule function sbhp:technical/4tick 4t replace
# schedule function sbhp:technical/2tick 2t replace
execute if score $config sbhp.config.TickSpeedMode matches ..9 run schedule function sbhp:technical/5tick 5t replace
execute if score $config sbhp.config.TickSpeedMode matches 10.. run schedule function sbhp:technical/10tick 10t replace

tellraw @a [{"text":"[RR: ","color":"gray"},{"text":"L","color":"#DE0D0D"},{"color":"#E22412","text":"i"},{"color":"#E63B17","text":"f"},{"color":"#EA511C","text":"e"},{"color":"#EF6822","text":"l"},{"color":"#F37F27","text":"i"},{"color":"#F7962C","text":"n"},{"text":"e","color":"#FFC336"},{"text":"] ","color":"gray"},{"text":"Lifeline has loaded successfully","color":"light_purple"}]