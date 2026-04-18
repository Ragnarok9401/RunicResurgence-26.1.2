# The brain of all Damage Taken functions,
# including those from Lifeline, Arcana Altar,
# Vibrant Virtu, and others under the Runic
# Resurgence pack family

advancement revoke @s only rr_adv:technical/take_damage

# Remove Health from True Health scoreboard if damage is taken
execute as @s[scores={rr.system.dmg_taken=1..}] run scoreboard players operation @s sbhp.math.B = $config sbhp.config.BaseDmgMod
execute as @s[scores={rr.system.dmg_taken=1..}] run scoreboard players operation @s rr.system.dmg_taken *= @s sbhp.math.B
execute as @s[scores={rr.system.dmg_taken=1..,sbhp.Armor=21..}] at @s run function sbhp:technical/health/modify_damage_with_armor
# tellraw @s {"text":"Damage Taken: ","color":"yellow","italic":false,"extra":[{"score":{"name":"@s","objective":"rr.system.dmg_taken"},"color":"gold"}]}
# execute as @s[scores={rr.system.dmg_taken=1..}] run scoreboard players set @s sbhp.math.B 1
# execute as @s[scores={rr.system.dmg_taken=1..}] run scoreboard players operation @s rr.system.dmg_taken /= @s sbhp.math.B


# # Debug dmg_taken amount on hit
# tellraw @s [{"text":"Damage Taken score: ","color":"white","italic":false},{"score":{"name":"@s","objective":"rr.system.dmg_taken"},"color":"red"}]

# Increase damage by 25% if Distraction Vice is active (damage would only be taken during this time from behind or from the sides)
execute as @s[advancements={aea_adv:enchantments/distraction_vice/use=true}] run function rr_aea:technical/enchantments/distraction_vice/increase_damage


# Paladin Pylon damage protection
execute if function rr_recast:spells/execution/paladin_pylon/pylon_nearby as @n[tag=rr.aura.paladin_pylon.selected,distance=..20,type=item_display] run function rr_recast:spells/execution/paladin_pylon/transfer_damage
tag @e[distance=..20,tag=rr.aura.paladin_pylon.selected,type=item_display] remove rr.aura.paladin_pylon.selected
tag @s remove rr.aura.paladin_pylon.in_radius


# Create a Damage Indicator if final damage is at least 1
execute if score $config sbhp.config.DmgIndOn matches 1 as @s[scores={rr.system.dmg_taken=1..}] at @s run function sbhp:technical/health/dmg_display

# Apply final damage after all calculations
execute as @s[scores={rr.system.dmg_taken=1..}] run scoreboard players operation @s sbhp.HealthTrue -= @s rr.system.dmg_taken
execute as @s[scores={rr.system.dmg_taken=1..}] run scoreboard players set @s rr.system.dmg_taken 0


# Kill players with a 0 or negative HealthTrue score
# Also set health to (RespawnHealth)% of max upon respawning
# Note that RespawnHealth is a Config option set in-game, defaults to 80%
execute as @s[scores={sbhp.HealthTrue=..0},predicate=!sbhp:player/has_death_protection] run tag @s add SBHPKill
execute as @s[scores={sbhp.HealthTrue=..0},predicate=sbhp:player/has_death_protection] run function sbhp:damage/death_protection_effect
execute as @s[tag=SBHPKill] run scoreboard players operation @s sbhp.HealthTrue = @s sbhp.HealthMaxTrue
execute as @s[tag=SBHPKill] run scoreboard players operation @s sbhp.math.B = $config sbhp.config.RespawnHealth
execute as @s[tag=SBHPKill] run scoreboard players operation @s sbhp.HealthTrue *= @s sbhp.math.B
execute as @s[tag=SBHPKill] run scoreboard players set @s sbhp.math.B 100
execute as @s[tag=SBHPKill] run scoreboard players operation @s sbhp.HealthTrue /= @s sbhp.math.B
execute as @s[tag=SBHPKill] run kill @s
execute as @s[tag=SBHPKill] run tag @s add SBHPReset
execute as @s[tag=SBHPKill] run tag @s remove SBHPKill


# Remove "use" advancements for certain enchantments
advancement revoke @s only aea_adv:enchantments/distraction_vice/use