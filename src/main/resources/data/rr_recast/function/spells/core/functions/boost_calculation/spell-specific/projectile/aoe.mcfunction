# Projectile AOE
execute store result score @s rr.math.X run data get entity @s data.projectile.explosion_aoe 100

## Held Item Spell-Specific Damage Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p SelectedItem.components."minecraft:custom_data"."rr.spell.$(reference).aoe_boost"."amount" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y

## Offhand Item Spell-Specific Damage Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.offhand.components."minecraft:custom_data"."rr.spell.$(reference).aoe_boost"."amount" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y

## Helmet Item Spell-Specific Damage Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.head.components."minecraft:custom_data"."rr.spell.$(reference).aoe_boost"."amount" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y

## Chestplate Item Spell-Specific Damage Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.chest.components."minecraft:custom_data"."rr.spell.$(reference).aoe_boost"."amount" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y

## Leggings Item Spell-Specific Damage Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.legs.components."minecraft:custom_data"."rr.spell.$(reference).aoe_boost"."amount" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y

## Boots Item Spell-Specific Damage Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.feet.components."minecraft:custom_data"."rr.spell.$(reference).aoe_boost"."amount" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y

# # Debug Dmg Total:
# tellraw @p [{"text":"Damage Total: ","color":"white","italic":false},{"score":{"name":"@s","objective":rr.math.X}}]

scoreboard players set @s[scores={rr.math.X=..-1}] rr.math.X 0
execute store result entity @s data.projectile.explosion_aoe float 0.01 run scoreboard players get @s rr.math.X