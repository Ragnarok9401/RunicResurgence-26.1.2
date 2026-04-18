# Regeneration for Health based on Food Saturation, Food Level, Recency of last Damage taken, and performing actions (running, walking, jumping, swimming, breaking/placing blocks, attacking)
# Carried out in another function for organization
execute as @a at @s run function sbhp:technical/health/regenerate_health

# If HealthTrue is >= HealthMaxTrue, add a MaxHealth tag to prevent future healing until damage is taken
execute as @a[tag=!SBHPMaxHealth] if score @s sbhp.HealthTrue >= @s sbhp.HealthMaxTrue run scoreboard players operation @s sbhp.HealthTrue = @s sbhp.HealthMaxTrue
execute as @a[tag=!SBHPMaxHealth] if score @s sbhp.HealthTrue >= @s sbhp.HealthMaxTrue run tag @s add SBHPMaxHealth
# Else, remove MaxHealth
execute as @a[tag=SBHPMaxHealth] if score @s sbhp.HealthTrue < @s sbhp.HealthMaxTrue run tag @s remove SBHPMaxHealth

# Set HealthCurr to HealthTrue / 100
execute as @a run scoreboard players operation @s sbhp.HealthCurr = @s sbhp.HealthTrue
execute as @a run scoreboard players set @s sbhp.math.B 100
execute as @a run scoreboard players operation @s sbhp.HealthCurr /= @s sbhp.math.B

# Set HealthMVis to HealthMaxTrue / 100
execute as @a run scoreboard players operation @s sbhp.HealthMVis = @s sbhp.HealthMaxTrue
execute as @a run scoreboard players set @s sbhp.math.B 100
execute as @a run scoreboard players operation @s sbhp.HealthMVis /= @s sbhp.math.B

# Get HealthPrcnt
execute as @a run scoreboard players operation @s sbhp.HealthPrcnt = @s sbhp.HealthTrue
execute as @a run scoreboard players set @s sbhp.math.B 100
execute as @a run scoreboard players operation @s sbhp.HealthPrcnt *= @s sbhp.math.B
execute as @a run scoreboard players operation @s sbhp.HealthPrcnt /= @s sbhp.HealthMaxTrue

# SBHPReset tag handling (after a player dies, set vanilla health really high so that they don't die from anything but scoreboard damage)
# UUID for Max HP Modifier: SBHP-BASE-HP-SET-MAX
execute as @a unless entity @s[nbt={attributes:[{id:"minecraft:max_health",modifiers:[{id:"sbhp:sbhp_vanilla_health"}]}]}] run attribute @s max_health modifier add sbhp:sbhp_vanilla_health 2000 add_value
execute as @a unless entity @s[nbt={active_effects:[{id:"minecraft:instant_health"}]}] run effect give @s instant_health infinite 99 true

# Display Health and any changes made to it on the player's Actionbar every second
execute unless function rr_recast:technical/pack_enabled as @a at @s run function sbhp:technical/display_hud
execute if function rr_recast:technical/pack_enabled as @a at @s run function sbhp:technical/display_hud_with_mana

# Reboot everything if a player does not have an SBHPInit tag to enable scoreboard health for them
execute as @r[tag=!SBHPInit] run function sbhp:technical/new_player

execute if score $config sbhp.config.TickSpeedMode matches 10 run schedule function sbhp:technical/10tick 10t