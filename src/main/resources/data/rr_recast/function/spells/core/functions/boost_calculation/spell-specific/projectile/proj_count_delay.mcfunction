# Projectile Count Delay
$scoreboard players set @s rr.spell.projectile_count_delay $(projectile_count_delay)


## Held Item Spell-Specific Projectile Delay
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p SelectedItem.components."minecraft:custom_data"."rr.spell.$(reference).projectiles_delay"."amount"
scoreboard players operation @s rr.spell.projectile_count_delay += @s rr.math.Y

## Offhand Item Spell-Specific Projectile Delay
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.offhand.components."minecraft:custom_data"."rr.spell.$(reference).projectiles_delay"."amount"
scoreboard players operation @s rr.spell.projectile_count_delay += @s rr.math.Y

## Helmet Item Spell-Specific Projectile Delay
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.head.components."minecraft:custom_data"."rr.spell.$(reference).projectiles_delay"."amount"
scoreboard players operation @s rr.spell.projectile_count_delay += @s rr.math.Y

## Chestplate Item Spell-Specific Projectile Delay
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.chest.components."minecraft:custom_data"."rr.spell.$(reference).projectiles_delay"."amount"
scoreboard players operation @s rr.spell.projectile_count_delay += @s rr.math.Y

## Leggings Item Spell-Specific Projectile Delay
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.legs.components."minecraft:custom_data"."rr.spell.$(reference).projectiles_delay"."amount"
scoreboard players operation @s rr.spell.projectile_count_delay += @s rr.math.Y

## Boots Item Spell-Specific Projectile Delay
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p equipment.feet.components."minecraft:custom_data"."rr.spell.$(reference).projectiles_delay"."amount"
scoreboard players operation @s rr.spell.projectile_count_delay += @s rr.math.Y


scoreboard players set @s[scores={rr.spell.projectile_count_delay=..-1}] rr.spell.projectile_count_delay 0


## Debug Delay Total:
#tellraw @p [{"text":"Delay Total: ","color":"white","italic":false},{"score":{"name":"@s","objective":rr.spell.projectile_count_delay}}]