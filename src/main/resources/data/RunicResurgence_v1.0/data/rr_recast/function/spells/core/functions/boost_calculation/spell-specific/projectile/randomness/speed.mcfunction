# Projectile Random Speed
execute store result score @s rr.math.X run data get entity @s data.projectile.speed_randomness 2000

## Held Item Spell-Specific Random Speed
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p SelectedItem.components."minecraft:custom_data"."rr.spell.$(reference).randomness"."speed"."amount" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y

## Offhand Item Spell-Specific Random Speed
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.offhand.components."minecraft:custom_data"."rr.spell.$(reference).randomness"."speed"."amount" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y

## Helmet Item Spell-Specific Random Speed
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.head.components."minecraft:custom_data"."rr.spell.$(reference).randomness"."speed"."amount" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y

## Chestplate Item Spell-Specific Random Speed
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.chest.components."minecraft:custom_data"."rr.spell.$(reference).randomness"."speed"."amount" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y

## Leggings Item Spell-Specific Random Speed
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.legs.components."minecraft:custom_data"."rr.spell.$(reference).randomness"."speed"."amount" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y

## Boots Item Spell-Specific Random Speed
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.feet.components."minecraft:custom_data"."rr.spell.$(reference).randomness"."speed"."amount" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y

# # Debug Speed Random Total:
# tellraw @p [{"text":"Speed Random Total: ","color":"green","italic":false},{"score":{"name":"@s","objective":rr.math.X}}]

# Catch if Randomness is 0 or below, as this would have no functionality
execute if score @s rr.math.X matches ..0 run return 0

# Get Min and Max values in scoreboards
scoreboard players operation @s rr.math.Y = @s rr.math.X
scoreboard players set @s rr.math.Z -1
scoreboard players operation @s rr.math.X *= @s rr.math.Z

# Set Min and Max Values in Entity for function macro, run random and return to score
execute store result entity @s data.projectile.randomness.speed.min float 1 run scoreboard players get @s rr.math.X
execute store result entity @s data.projectile.randomness.speed.max float 1 run scoreboard players get @s rr.math.Y
execute store result score @s rr.math.X run function rr_recast:spells/core/functions/boost_calculation/spell-specific/projectile/randomness/return_roll_random with entity @s data.projectile.randomness.speed

# # Debug Speed Random Value:
# tellraw @p [{"text":"Speed Random Value: ","color":"green","italic":false},{"score":{"name":"@s","objective":rr.math.X}}]

# Get current Speed value for projectile
execute store result score @s rr.math.Y run data get entity @s data.projectile.speed 2000

# Add random roll to Speed value, place back into projectile
scoreboard players operation @s rr.math.X += @s rr.math.Y
execute store result entity @s data.projectile.speed float 0.0005 run scoreboard players get @s rr.math.X