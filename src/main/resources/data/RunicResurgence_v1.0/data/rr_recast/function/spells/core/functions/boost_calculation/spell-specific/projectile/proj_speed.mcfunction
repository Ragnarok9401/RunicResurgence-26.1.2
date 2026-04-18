# Each 1 Speed is 1 block/sec, account for decimals down to the hundredths place

# Projectile Speed
execute store result score @s rr.math.X run data get entity @s data.projectile.speed 2000
## Held Item Spell-Specific Speed Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p SelectedItem.components."minecraft:custom_data"."rr.spell.$(reference).speed_boost"."amount" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y
## Offhand Item Spell-Specific Speed Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.offhand.components."minecraft:custom_data"."rr.spell.$(reference).speed_boost"."amount" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y
## Helmet Item Spell-Specific Speed Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.head.components."minecraft:custom_data"."rr.spell.$(reference).speed_boost"."amount" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y
## Chestplate Item Spell-Specific speed Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.chest.components."minecraft:custom_data"."rr.spell.$(reference).speed_boost"."amount" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y
## Leggings Item Spell-Specific Speed Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.legs.components."minecraft:custom_data"."rr.spell.$(reference).speed_boost"."amount" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y
## Boots Item Spell-Specific Speed Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.feet.components."minecraft:custom_data"."rr.spell.$(reference).speed_boost"."amount" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y

execute store result entity @s data.projectile.speed float 0.0005 run scoreboard players get @s rr.math.X