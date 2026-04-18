# Modified DmgTimer to coincide with HealTimeMax setting
execute as @a at @s unless score @s sbhp.DmgTimer >= $config sbhp.config.HealTimeMax run scoreboard players add @s sbhp.DmgTimer 1

# Store Vanilla Armor score in sbhp.Armor for damage calculation beyond vanilla limits
execute as @a at @s store result score @s sbhp.Armor run scoreboard players get @s sbhp.ArmorBase
# If Armor value is 20, run this funciton to get the actual armor value (since vanilla armor is capped at 20)
execute as @a[] at @s run function sbhp:technical/armor/calc_armor_value

# SwapTickSpeed Trigger
execute as @a[scores={sbhp.trigger.SwapTickSpeed=1..}] at @s run function sbhp:triggers/swap_tick_speed

# ToggleDmgIndicator Trigger
execute as @a[scores={sbhp.trigger.ToggleDmgIndicator=1..}] at @s run function sbhp:triggers/toggle_dmg_indicator

# ChangeDmgColor Trigger
execute as @a[scores={sbhp.trigger.ChangeDmgColor=1..}] at @s run function sbhp:triggers/change_dmg_color

# DmgColor Trigger
execute as @a[scores={sbhp.trigger.DmgColor=1..}] at @s run function sbhp:triggers/set_dmg_color

# DebugHealthChange Trigger
execute as @a unless score @s sbhp.trigger.DebugHealthChange matches 0 at @s run function sbhp:triggers/debug_health_change

# ShowConfig Trigger
execute as @a[scores={sbhp.trigger.ShowConfig=1..}] at @s run function sbhp:triggers/show_config

# ResetFoodHPIncrease Trigger
execute as @a[scores={sbhp.trigger.ResetFoodHPIncrease=1..}] at @s run function sbhp:triggers/reset_food_hp_increase

# ToggleHealSound Trigger
execute as @a[scores={sbhp.trigger.ToggleHealSound=2..}] at @s run scoreboard players set @s sbhp.trigger.ToggleHealSound 0
scoreboard players enable @a sbhp.trigger.ToggleHealSound

# Use this function instead of the Eat Cake advancement to trigger the cake eating effect
execute as @a[scores={sbhp.CakeEaten=1..}] at @s run function sbhp:technical/health/food/eat_cake

# ResetConfig Trigger
execute as @a[scores={sbhp.trigger.ResetConfig=1..}] at @s run function sbhp:triggers/reset_config

# Set default scores for any new players or resets them for players without the SBHPInit tag
execute as @a[tag=!SBHPInit] at @s run function sbhp:technical/new_player

# Gets total MHP by checking for several different conditions like Armor Quality, Health Boost effect, and other things
execute as @a[tag=SBHPInit] at @s run function sbhp:technical/health/calc_total_mhp


schedule function sbhp:technical/second 1s