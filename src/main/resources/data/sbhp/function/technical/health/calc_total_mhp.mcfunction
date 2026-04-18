# Function serves to calcualte the total Max HP a player has, so it will have many Condition Sets much like the Regenerate Health function

# Use HealthMult as a % modifier to Base Max Health (with 100 = 100%)
# This part also serves to "reset" the HealthMaxTrue score to a score relative to HealthMaxBase each pass through this function
scoreboard players operation @s sbhp.math.Health_A = @s sbhp.HealthMaxBase
scoreboard players operation @s sbhp.math.Health_A *= @s sbhp.HealthMult
scoreboard players set sbhp.Math sbhp.math.Health_A 100
scoreboard players operation @s sbhp.math.Health_A /= sbhp.Math sbhp.math.Health_A
scoreboard players operation @s sbhp.HealthMaxTrue = @s sbhp.math.Health_A

# Add Stats from Equipment using the "sbhp.equipment" custom data set (IF equipment is present with the data set) or enchantments (if applicable)
scoreboard players set @s sbhp.math.Health_B 0
execute as @s if data entity @s equipment.head.components run function sbhp:technical/health/calc_total_mhp_helmet
execute as @s if data entity @s equipment.chest.components run function sbhp:technical/health/calc_total_mhp_chest
execute as @s if data entity @s equipment.legs.components run function sbhp:technical/health/calc_total_mhp_legs
execute as @s if data entity @s equipment.feet.components run function sbhp:technical/health/calc_total_mhp_boots
scoreboard players operation @s sbhp.HealthMaxTrue += @s sbhp.math.Health_B

# Add HealthAdd score to HealthMaxTrue
execute as @a[scores={sbhp.HealthAdd=1..}] run scoreboard players operation @s sbhp.HealthMaxTrue += @s sbhp.HealthAdd

# Wait to implement following part until there's something that does actually modify this score
# # Use HealthMultTotal as a % modifier to True Max Health after all above calculations (with 100 = 100%, note that this stat is extremely powerful)
# scoreboard players operation @s sbhp.math.Health_A = @s sbhp.HealthMaxTrue
# scoreboard players operation @s sbhp.math.Health_A *= @s sbhp.HealthMultFinal
# scoreboard players set sbhp.Math sbhp.math.Health_A 100
# scoreboard players operation @s sbhp.math.Health_A /= sbhp.Math sbhp.math.Health_A
# scoreboard players operation @s sbhp.HealthMaxTrue = @s sbhp.math.Health_A


# Modify HealthMaxTrue using the Scale (size) of the player using this formula: NewHealth = OldHealth * ((0.5 * TotalScale) + 0.5)
# Note that Scale modifying health should be done after all other calculations, as it is a % modifier to the final health value
execute store result score @s sbhp.math.Health_A run attribute @s scale get 100
scoreboard players set @s sbhp.math.Health_B 2
scoreboard players operation @s sbhp.math.Health_A /= @s sbhp.math.Health_B
scoreboard players add @s sbhp.math.Health_A 50
scoreboard players operation @s sbhp.HealthMaxTrue *= @s sbhp.math.Health_A
scoreboard players add @s sbhp.math.Health_A 100
scoreboard players operation @s sbhp.HealthMaxTrue /= sbhp.Math sbhp.math.Health_A


# If HealthCurr > HealthMVis, subtract 0.5 health per second.
execute if score @s sbhp.HealthCurr > @s sbhp.HealthMVis run scoreboard players remove @s sbhp.HealthTrue 50