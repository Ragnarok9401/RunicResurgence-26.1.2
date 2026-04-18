# Projectile Count
$scoreboard players set @s rr.spell.projectile_count $(projectile_count)


## Held Item Spell-Specific Projectile Count
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p SelectedItem.components."minecraft:custom_data"."rr.spell.$(reference).projectiles_boost"."amount"
scoreboard players operation @s rr.spell.projectile_count += @s rr.math.Y

## Offhand Item Spell-Specific Projectile Count
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.offhand.components."minecraft:custom_data"."rr.spell.$(reference).projectiles_boost"."amount"
scoreboard players operation @s rr.spell.projectile_count += @s rr.math.Y

## Helmet Item Spell-Specific Projectile Count
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.head.components."minecraft:custom_data"."rr.spell.$(reference).projectiles_boost"."amount"
scoreboard players operation @s rr.spell.projectile_count += @s rr.math.Y

## Chestplate Item Spell-Specific Projectile Count
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.chest.components."minecraft:custom_data"."rr.spell.$(reference).projectiles_boost"."amount"
scoreboard players operation @s rr.spell.projectile_count += @s rr.math.Y

## Leggings Item Spell-Specific Projectile Count
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.legs.components."minecraft:custom_data"."rr.spell.$(reference).projectiles_boost"."amount"
scoreboard players operation @s rr.spell.projectile_count += @s rr.math.Y

## Boots Item Spell-Specific Projectile Count
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.feet.components."minecraft:custom_data"."rr.spell.$(reference).projectiles_boost"."amount"
scoreboard players operation @s rr.spell.projectile_count += @s rr.math.Y


scoreboard players set @s[scores={rr.spell.projectile_count=..0}] rr.spell.projectile_count 1


## Debug Count Total:
#tellraw @p [{"text":"Count Total: ","color":"white","italic":false},{"score":{"name":"@s","objective":rr.spell.projectile_count}}]