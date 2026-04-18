# This function may be ideal for enchantments with a maximum level of 4, but may be used for enchantments with other max levels.

# Stores the A Variable (Base enchantment level for the item)
execute as @s at @s run scoreboard players operation @s aea.math.A = @s aea.system.level_base
# Stores the B Variable (Target enchantment level set by the user)
execute as @s at @s run scoreboard players operation @s aea.math.B = @s aea.math.F
# Stores the C Variable (Maximum enchantment level for the selected enchant)
execute as @s at @s run scoreboard players operation @s aea.math.C = @s aea.math.E


# Work on an actual function later, for now just have preset values
# Removing any level of the enchantment will cost 8 levels
execute as @s at @s if score @s aea.system.level_difference matches ..-1 run scoreboard players set @s aea.math.H 6

# Adding a level costs 8 * (target level - current level) + (2 * current level)
execute as @s at @s if score @s aea.system.level_base matches 0 if score @s aea.system.level_difference matches 1 run scoreboard players set @s aea.math.H 6
execute as @s at @s if score @s aea.system.level_base matches 0 if score @s aea.system.level_difference matches 2 run scoreboard players set @s aea.math.H 16
execute as @s at @s if score @s aea.system.level_base matches 0 if score @s aea.system.level_difference matches 3 run scoreboard players set @s aea.math.H 24
execute as @s at @s if score @s aea.system.level_base matches 0 if score @s aea.system.level_difference matches 4 run scoreboard players set @s aea.math.H 32
execute as @s at @s if score @s aea.system.level_base matches 0 if score @s aea.system.level_difference matches 5 run scoreboard players set @s aea.math.H 40
execute as @s at @s if score @s aea.system.level_base matches 0 if score @s aea.system.level_difference matches 6 run scoreboard players set @s aea.math.H 48
execute as @s at @s if score @s aea.system.level_base matches 0 if score @s aea.system.level_difference matches 7 run scoreboard players set @s aea.math.H 56

execute as @s at @s if score @s aea.system.level_base matches 1 if score @s aea.system.level_difference matches 1 run scoreboard players set @s aea.math.H 10
execute as @s at @s if score @s aea.system.level_base matches 1 if score @s aea.system.level_difference matches 2 run scoreboard players set @s aea.math.H 18
execute as @s at @s if score @s aea.system.level_base matches 1 if score @s aea.system.level_difference matches 3 run scoreboard players set @s aea.math.H 26
execute as @s at @s if score @s aea.system.level_base matches 1 if score @s aea.system.level_difference matches 4 run scoreboard players set @s aea.math.H 34
execute as @s at @s if score @s aea.system.level_base matches 1 if score @s aea.system.level_difference matches 5 run scoreboard players set @s aea.math.H 42
execute as @s at @s if score @s aea.system.level_base matches 1 if score @s aea.system.level_difference matches 6 run scoreboard players set @s aea.math.H 50

execute as @s at @s if score @s aea.system.level_base matches 2 if score @s aea.system.level_difference matches 1 run scoreboard players set @s aea.math.H 12
execute as @s at @s if score @s aea.system.level_base matches 2 if score @s aea.system.level_difference matches 2 run scoreboard players set @s aea.math.H 20
execute as @s at @s if score @s aea.system.level_base matches 2 if score @s aea.system.level_difference matches 3 run scoreboard players set @s aea.math.H 28
execute as @s at @s if score @s aea.system.level_base matches 2 if score @s aea.system.level_difference matches 4 run scoreboard players set @s aea.math.H 36
execute as @s at @s if score @s aea.system.level_base matches 2 if score @s aea.system.level_difference matches 5 run scoreboard players set @s aea.math.H 42

execute as @s at @s if score @s aea.system.level_base matches 3 if score @s aea.system.level_difference matches 1 run scoreboard players set @s aea.math.H 14
execute as @s at @s if score @s aea.system.level_base matches 3 if score @s aea.system.level_difference matches 2 run scoreboard players set @s aea.math.H 22
execute as @s at @s if score @s aea.system.level_base matches 3 if score @s aea.system.level_difference matches 3 run scoreboard players set @s aea.math.H 30
execute as @s at @s if score @s aea.system.level_base matches 3 if score @s aea.system.level_difference matches 4 run scoreboard players set @s aea.math.H 38

execute as @s at @s if score @s aea.system.level_base matches 4 if score @s aea.system.level_difference matches 1 run scoreboard players set @s aea.math.H 16
execute as @s at @s if score @s aea.system.level_base matches 4 if score @s aea.system.level_difference matches 2 run scoreboard players set @s aea.math.H 24
execute as @s at @s if score @s aea.system.level_base matches 4 if score @s aea.system.level_difference matches 3 run scoreboard players set @s aea.math.H 32

execute as @s at @s if score @s aea.system.level_base matches 5 if score @s aea.system.level_difference matches 1 run scoreboard players set @s aea.math.H 18
execute as @s at @s if score @s aea.system.level_base matches 5 if score @s aea.system.level_difference matches 2 run scoreboard players set @s aea.math.H 26

execute as @s at @s if score @s aea.system.level_base matches 6 if score @s aea.system.level_difference matches 1 run scoreboard players set @s aea.math.H 20


# scoreboard players set @s aea.math.K 100

# #scoreboard players operation @s aea.math.A *= @s aea.math.K
# #scoreboard players operation @s aea.math.B *= @s aea.math.K
# #scoreboard players operation @s aea.math.C *= @s aea.math.K
# 
# # Carry out the rest of the math by plugging the above variables in to a set function
# 
# # Function is:
# #     / 7Y - (XZ / 2) \
# #  Z | -------------- |  [taken out temporarily] -> * (3Y / 2Z)
# #    \  Z - (X / Y)  /
# 
# # 3Y
# scoreboard players set @s aea.math.G 3
# scoreboard players operation @s aea.math.G *= @s aea.math.B
# 
# # 2Z
# scoreboard players set @s aea.math.A 2
# scoreboard players operation @s aea.math.A *= @s aea.math.C
# 
# # 3Y / 2Z
# scoreboard players operation @s aea.math.G /= @s aea.math.A
# 
# # # Z * (3Y / 2Z)
# # scoreboard players operation @s aea.math.G *= @s aea.math.C
# 
# # XZ
# scoreboard players operation @s aea.math.A = @s aea.math.A
# scoreboard players operation @s aea.math.A *= @s aea.math.C
# 
# # XZ / 2
# scoreboard players set @s aea.math.J 2
# scoreboard players operation @s aea.math.A /= @s aea.math.J
# 
# # 7Y
# scoreboard players set @s aea.math.H 7
# scoreboard players operation @s aea.math.H *= @s aea.math.B
# 
# # 7Y - (XZ / 2)
# scoreboard players operation @s aea.math.H -= @s aea.math.A
# 
# # X / Y
# scoreboard players operation @s aea.math.A = @s aea.math.A
# scoreboard players operation @s aea.math.A /= @s aea.math.B
# 
# # Z - (X / Y)
# scoreboard players operation @s aea.math.J = @s aea.math.C
# scoreboard players operation @s aea.math.J -= @s aea.math.A
# 
# #  / 8Y - (XZ / 2) \
# # | -------------- |
# # \  Z - (X / Y)  /
# scoreboard players operation @s aea.math.H /= @s aea.math.J
# 
# #     / 8Y - (XZ / 2) \
# #  Z | -------------- |  [taken out temporarily] -> * (3Y / 2Z)
# #    \  Z - (X / Y)  /
# scoreboard players operation @s aea.math.H *= @s aea.math.C
# 
# # aea.math.H will store the final overall cost of the current enchantment settings