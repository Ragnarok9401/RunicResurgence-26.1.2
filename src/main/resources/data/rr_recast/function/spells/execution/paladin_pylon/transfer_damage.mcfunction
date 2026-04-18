# Grab Health from aura and Damage Taken from valid player
execute store result score @s rr.math.A run data get entity @s data.aura.health 100
scoreboard players operation @s rr.math.B = @p[tag=rr.aura.paladin_pylon.in_radius,distance=..1] rr.system.dmg_taken

# If Damage Taken is higher than Health, remove Health from Damage Taken, give to player
execute if score @s rr.math.A < @s rr.math.B run scoreboard players operation @p[tag=rr.aura.paladin_pylon.in_radius,distance=..1] rr.system.dmg_taken -= @s rr.math.A
execute if score @s rr.math.A < @s rr.math.B run tag @s add rr.aura.paladin_pylon.kill
execute if score @s rr.math.A < @s rr.math.B run return 0

# If Health is higher than Damage Taken, subtract Damage Taken from Health and set Damage Taken to 0
execute if score @s rr.math.A >= @s rr.math.B run scoreboard players set @p[tag=rr.aura.paladin_pylon.in_radius,distance=..1] rr.system.dmg_taken 0
execute if score @s rr.math.A >= @s rr.math.B run scoreboard players operation @s rr.math.A -= @s rr.math.B
execute if score @s rr.math.A matches 0 run tag @s add rr.aura.paladin_pylon.kill
execute if score @s rr.math.A matches 0 run return 0

# Play Block sound if Aura is not about to die in the same tick
playsound item.shield.block player @a[distance=..30] ~ ~ ~ 0.6 1.25 0
playsound block.conduit.deactivate player @a[distance=..30] ~ ~ ~ 0.8 2 0

# Store Health in Aura if there is Health remaining
execute store result entity @s data.aura.health float 0.01 run scoreboard players get @s rr.math.A