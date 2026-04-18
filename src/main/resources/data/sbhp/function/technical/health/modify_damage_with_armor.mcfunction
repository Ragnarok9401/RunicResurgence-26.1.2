# Armor calculation beyond 20 is not supported in vanilla, so this functions as a workaround

# Damage calculation for armor values over 30 is as follows:
# Total Damage = max( d(1 - min(5, max(a/8, a-(5d/(min(t,100)))))/25) - r, 0 )
# where d = damage, a = armor, t = toughness, and r = resilience
# This is the exact formula used in vanilla Minecraft for damage calculation

# Calculate sbhp.math.Toughness to represent min(t,100)
scoreboard players operation @s sbhp.math.Toughness = @s sbhp.Toughness
execute if score @s sbhp.math.Toughness matches 101.. run scoreboard players set @s sbhp.math.Toughness 100

# Calculate a-(5d/min(t,100))
# Example with a=40, d=10, t=12
# 5 * dmg
# 50 / 12 = 41666.66666666667
# 40 * 1000 = 40000
# 40000 - 41666 = -1666
scoreboard players set $global sbhp.math.A 5
scoreboard players operation @s sbhp.math.Damage = @s rr.system.dmg_taken
# tellraw @s {"text":"Initial Damage: ","color":"yellow","italic":false,"extra":[{"score":{"name":"@s","objective":"sbhp.math.Damage"},"color":"gold"}]}
scoreboard players operation @s sbhp.math.Damage *= $global sbhp.math.A
scoreboard players set $global sbhp.math.A 10
scoreboard players operation @s sbhp.math.Damage *= $global sbhp.math.A
scoreboard players operation @s sbhp.math.Damage /= @s sbhp.math.Toughness
# tellraw @s {"text":"5*Damage / min(Toughness,100): ","color":"yellow","italic":false,"extra":[{"score":{"name":"@s","objective":"sbhp.math.Damage"},"color":"gold"}]}
scoreboard players operation @s sbhp.math.Armor = @s sbhp.Armor
scoreboard players set $global sbhp.math.A 100
scoreboard players operation @s sbhp.math.Armor *= $global sbhp.math.A
# tellraw @s {"text":"Armor * 100: ","color":"yellow","italic":false,"extra":[{"score":{"name":"@s","objective":"sbhp.math.Armor"},"color":"gold"}]}
scoreboard players operation @s sbhp.math.Armor -= @s sbhp.math.Damage
# tellraw @s {"text":"Armor - 5*Damage / min(Toughness,100): ","color":"yellow","italic":false,"extra":[{"score":{"name":"@s","objective":"sbhp.math.Armor"},"color":"gold"}]}

# Calculate max(a/8, a-(5d/(min(t,100))))
# With example above, this compares (40000/8) = 5000 with -1666, and sets the value to 5000 (or 5.000)
scoreboard players operation @s sbhp.math.ArmorDiv = @s sbhp.Armor
scoreboard players operation @s sbhp.math.ArmorDiv *= $global sbhp.math.A
scoreboard players set $global sbhp.math.A 8
scoreboard players operation @s sbhp.math.ArmorDiv /= $global sbhp.math.A
# tellraw @s {"text":"Armor / 8: ","color":"yellow","italic":false,"extra":[{"score":{"name":"@s","objective":"sbhp.math.ArmorDiv"},"color":"gold"}]}
# If ArmorDiv > math.Armor, set math.Armor to ArmorDiv
execute if score @s sbhp.math.ArmorDiv > @s sbhp.math.Armor run scoreboard players operation @s sbhp.math.Armor = @s sbhp.math.ArmorDiv

# If sbhp.math.Armor > 5.000, set sbhp.math.Armor to 5.000
execute if score @s sbhp.math.Armor matches 5001.. run scoreboard players set @s sbhp.math.Armor 5000

# Calculate min(5, max(a/8, a-(5d/(min(t,100)))))/25
# With example above, sets 5000 to 50000, then divides by 25 to get 2000 (or 2.000)
scoreboard players set $global sbhp.math.A 10
scoreboard players operation @s sbhp.math.Armor *= $global sbhp.math.A
scoreboard players set $global sbhp.math.A 25
scoreboard players operation @s sbhp.math.Armor /= $global sbhp.math.A
# Subsequent division by 10 to get 200 (or 0.200)
scoreboard players set $global sbhp.math.A 25
scoreboard players operation @s sbhp.math.Armor /= $global sbhp.math.A

# Calculate d(1 - min(20, max(a/5, a-(4d/(min(t,20)+8))))/25)
# With example above, subtracts 200 (0.200) from 1000 (1.000) to get 800 (0.800), which is multiplied into DmgTaken, and then divided by 1000 to get 80% of DmgTaken
scoreboard players set @s sbhp.math.DmgFinal 100
scoreboard players operation @s sbhp.math.DmgFinal -= @s sbhp.math.Armor
scoreboard players operation @s rr.system.dmg_taken *= @s sbhp.math.DmgFinal
scoreboard players set $global sbhp.math.A 100
scoreboard players operation @s rr.system.dmg_taken /= $global sbhp.math.A

# Set rr.system.dmg_taken to 0 if it is less than 0
execute if score @s rr.system.dmg_taken matches ..0 run scoreboard players set @s rr.system.dmg_taken 0