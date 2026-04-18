# This function is for Bows that are setting Infinity and Mending on the same bow

# Stores the A Variable (Base enchantment level for the item)
execute as @s at @s run scoreboard players operation @s aea.math.A = @s aea.system.level_base
# Stores the B Variable (Target enchantment level set by the user)
execute as @s at @s run scoreboard players operation @s aea.math.B = @s aea.math.F
# Stores the C Variable (Maximum enchantment level for the selected enchant)
execute as @s at @s run scoreboard players operation @s aea.math.C = @s aea.math.E


# Work on an actual function later, for now just have preset values
# Removing any level of the enchantment will cost 8 levels
execute as @s at @s if score @s aea.system.level_difference matches ..-1 run scoreboard players set @s aea.math.H 6

# Adding a level costs 60 levels (only 1 level, so only 1 possible value)
execute as @s at @s if score @s aea.system.level_base matches 0 if score @s aea.system.level_difference matches 1 run scoreboard players set @s aea.math.H 40