# Projectile Damage
execute store result score @s rr.math.X run data get entity @s data.projectile.acceleration 1000

## Held Item Spell-Specific Acceleration Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p SelectedItem.components."minecraft:custom_data"."rr.spell.$(reference).acceleration_boost"."amount" 1000
scoreboard players operation @s rr.math.X += @s rr.math.Y

## Offhand Item Spell-Specific Acceleration Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.offhand.components."minecraft:custom_data"."rr.spell.$(reference).acceleration_boost"."amount" 1000
scoreboard players operation @s rr.math.X += @s rr.math.Y

## Helmet Item Spell-Specific Acceleration Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.head.components."minecraft:custom_data"."rr.spell.$(reference).acceleration_boost"."amount" 1000
scoreboard players operation @s rr.math.X += @s rr.math.Y

## Chestplate Item Spell-Specific Acceleration Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.chest.components."minecraft:custom_data"."rr.spell.$(reference).acceleration_boost"."amount" 1000
scoreboard players operation @s rr.math.X += @s rr.math.Y

## Leggings Item Spell-Specific Acceleration Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.legs.components."minecraft:custom_data"."rr.spell.$(reference).acceleration_boost"."amount" 1000
scoreboard players operation @s rr.math.X += @s rr.math.Y

## Boots Item Spell-Specific Acceleration Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.feet.components."minecraft:custom_data"."rr.spell.$(reference).acceleration_boost"."amount" 1000
scoreboard players operation @s rr.math.X += @s rr.math.Y

# # Debug Dmg Total:
# tellraw @p [{"text":"Acceleration Total: ","color":"white","italic":false},{"score":{"name":"@s","objective":rr.math.X}}]

execute store result entity @s data.projectile.acceleration float 0.001 run scoreboard players get @s rr.math.X