scoreboard players operation @s sbhp.HPDwn1 = @s sbhp.HealthCurr
scoreboard players operation @s sbhp.HPUp1 = @s sbhp.HealthCurr
scoreboard players remove @s sbhp.HPDwn1 1
scoreboard players add @s sbhp.HPUp1 1

# Sets the Dmg Timer to 0 to represent that damage was just taken
# Used for regeneration rate calculation, max of 20 (20 = max natural regeneration rate)
scoreboard players set @s sbhp.DmgTimer 0

# Weakness delays how long it takes for natural regeneration to begin by 2 seconds per level
execute store result score @s sbhp.math.effect_amp_1 run data get entity @s active_effects[{id:"minecraft:weakness"}].amplifier 2
scoreboard players add @s[nbt={active_effects:[{id:"minecraft:weakness"}]}] sbhp.math.effect_amp_1 1
scoreboard players operation @s sbhp.DmgTimer -= @s sbhp.math.effect_amp_1

# Scoreboard should not exceed 5 so that regeneration still has to ramp up a bit.
execute if score @s sbhp.DmgTimer > $config sbhp.config.DmgWait run scoreboard players operation @s sbhp.DmgTimer = $config sbhp.config.DmgWait

execute store result score @s sbhp.math.C run data get entity @s HurtTime
# damage @s[scores={sbhp.math.C=..19}] 0.00000001 sbhp:scoreboard

# Immediately display the SBHP Hud on taking damage
execute unless function rr_recast:technical/pack_enabled as @a at @s run function sbhp:technical/display_hud
execute if function rr_recast:technical/pack_enabled as @a at @s run function sbhp:technical/display_hud_with_mana

advancement revoke @s only sbhp_adv:health_tracking/health_down