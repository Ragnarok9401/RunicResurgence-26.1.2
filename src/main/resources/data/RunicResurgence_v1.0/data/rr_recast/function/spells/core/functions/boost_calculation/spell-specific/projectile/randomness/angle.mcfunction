# Projectile Random Angle
execute store result score @s rr.math.X run data get entity @s data.projectile.angle_randomness 100

## Held Item Spell-Specific Random Angle
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p SelectedItem.components."minecraft:custom_data"."rr.spell.$(reference).randomness"."angle"."amount" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y

## Offhand Item Spell-Specific Random Angle
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.offhand.components."minecraft:custom_data"."rr.spell.$(reference).randomness"."angle"."amount" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y

## Helmet Item Spell-Specific Random Angle
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.head.components."minecraft:custom_data"."rr.spell.$(reference).randomness"."angle"."amount" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y

## Chestplate Item Spell-Specific Random Angle
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.chest.components."minecraft:custom_data"."rr.spell.$(reference).randomness"."angle"."amount" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y

## Leggings Item Spell-Specific Random Angle
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.legs.components."minecraft:custom_data"."rr.spell.$(reference).randomness"."angle"."amount" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y

## Boots Item Spell-Specific Random Angle
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.feet.components."minecraft:custom_data"."rr.spell.$(reference).randomness"."angle"."amount" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y

# # Debug Angle Random Total:
# tellraw @p [{"text":"Angle Random Total: ","color":"gold","italic":false},{"score":{"name":"@s","objective":rr.math.X}}]

# Catch if Randomness is 0 or below, as this would have no functionality
execute if score @s rr.math.X matches ..0 run return 0

# Get Min and Max values in scoreboards
scoreboard players operation @s rr.math.Y = @s rr.math.X
scoreboard players set @s rr.math.Z -1
scoreboard players operation @s rr.math.X *= @s rr.math.Z
# Set Min and Max Values in Entity for function macro, run random and return to score
execute store result entity @s data.projectile.randomness.angle.min float 1 run scoreboard players get @s rr.math.X
execute store result entity @s data.projectile.randomness.angle.max float 1 run scoreboard players get @s rr.math.Y
# Roll offset, store in A and B for X and Y coordinates
execute store result score @s rr.math.A run function rr_recast:spells/core/functions/boost_calculation/spell-specific/projectile/randomness/return_roll_random with entity @s data.projectile.randomness.angle
execute store result score @s rr.math.B run function rr_recast:spells/core/functions/boost_calculation/spell-specific/projectile/randomness/return_roll_random with entity @s data.projectile.randomness.angle


# Get Min and Max values in scoreboards for Z coordinate
scoreboard players operation @s rr.math.X = @s rr.math.Y
scoreboard players operation @s rr.math.Y += @s rr.math.Y

# Get a "bonus value" to add to Z coordinate for low levels of Angle Randomness
# This causes the overall angle to be shallower for lower values by
# increasing the forward distance that the projectiles face on summon
scoreboard players set @s rr.math.Z 10000
scoreboard players operation @s rr.math.Z /= @s rr.math.X

# # Debug Z Value:
# tellraw @p [{"text":"Distance Bonus Z: ","color":"gold","italic":false},{"score":{"name":"@s","objective":rr.math.Z}}]

# Set Min and Max Values in Entity for function macro, run random and return to score
execute store result entity @s data.projectile.randomness.angle.extra.min float 1 run scoreboard players get @s rr.math.X
execute store result entity @s data.projectile.randomness.angle.extra.max float 1 run scoreboard players get @s rr.math.Y
# Roll offset, store in C for final separate relative coordinate
execute store result score @s rr.math.C run function rr_recast:spells/core/functions/boost_calculation/spell-specific/projectile/randomness/return_roll_random with entity @s data.projectile.randomness.angle.extra

# Add Bonus Distance to math.C using index and math.Z values
scoreboard players set @s rr.math.index 250
scoreboard players operation @s rr.math.Z *= @s rr.math.index
scoreboard players operation @s rr.math.C += @s rr.math.Z

# # Debug Angle Random Pitch:
# tellraw @p [{"text":"Angle Random X: ","color":"gold","italic":false},{"score":{"name":"@s","objective":rr.math.A}}]
# # Debug Angle Random Yaw:
# tellraw @p [{"text":"Angle Random Y: ","color":"gold","italic":false},{"score":{"name":"@s","objective":rr.math.B}}]
# # Debug Angle Random Yaw:
# tellraw @p [{"text":"Angle Random Z: ","color":"gold","italic":false},{"score":{"name":"@s","objective":rr.math.C}}]

execute store result entity @s data.projectile.randomness.angle.offset_X float 0.01 run scoreboard players get @s rr.math.A
execute store result entity @s data.projectile.randomness.angle.offset_Y float 0.01 run scoreboard players get @s rr.math.B
execute store result entity @s data.projectile.randomness.angle.offset_Z float 0.01 run scoreboard players get @s rr.math.C

# With new angle offsets, use tp
function rr_recast:spells/core/functions/projectile/general/rotate with entity @s data.projectile.randomness.angle