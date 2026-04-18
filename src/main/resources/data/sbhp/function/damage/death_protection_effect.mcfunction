# Set HP to 10% of max HP when using an item with the death protection component (or a totem)
execute as @s run scoreboard players operation @s sbhp.HealthTrue = @s sbhp.HealthMaxTrue
execute as @s run scoreboard players set @s sbhp.math.B 10
execute as @s run scoreboard players operation @s sbhp.HealthTrue *= @s sbhp.math.B
execute as @s run scoreboard players set @s sbhp.math.B 100
execute as @s run scoreboard players operation @s sbhp.HealthTrue /= @s sbhp.math.B

# Play the Totem Use effects
execute as @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 1 1
execute as @s at @s run particle totem_of_undying ~ ~1 ~ 0 0 0 0.65 40 normal @a[distance=..50]
tag @s add SBHPTotemUsed

# Give (almost) matching buffs to the player who used the death protection
# Note that these effects are mildly buffed compared to the vanilla totem effects
effect give @s regeneration 45 1
effect give @s fire_resistance 40 0
effect give @s absorption 20 1
effect give @s resistance 5 9

# Remove Death Protection from player
# If a Totem is held, remove it. Otherwise, just remove the death_protection component from items
# Clears totems as the default, but only if they are in held item slots
execute if data entity @s equipment{offhand:{"id":"minecraft:totem_of_undying"}} run tag @s add sbhp.totem_removed
execute if data entity @s equipment{mainhand:{"id":"minecraft:totem_of_undying"}} run tag @s add sbhp.totem_removed
clear @s[tag=sbhp.totem_removed] totem_of_undying 1

# Offhand Death Protection
execute if data entity @s[tag=!sbhp.totem_removed,tag=!sbhp.death_protection.used] equipment{offhand:{"components":{"minecraft:death_protection":{}}}} run tag @s add sbhp.death_protection.used
execute if data entity @s[tag=!sbhp.totem_removed,tag=!sbhp.death_protection.used] equipment{offhand:{"components":{"minecraft:death_protection":{}}}} run tag @s add sbhp.death_protection.offhand
item modify entity @s[tag=sbhp.death_protection.offhand,tag=!sbhp.totem_removed,tag=!sbhp.death_protection.used] weapon.offhand sbhp:remove_death_protection

# Mainhand Death Protection
execute if data entity @s[tag=!sbhp.totem_removed,tag=!sbhp.death_protection.used] equipment{mainhand:{"components":{"minecraft:death_protection":{}}}} run tag @s add sbhp.death_protection.used
execute if data entity @s[tag=!sbhp.totem_removed,tag=!sbhp.death_protection.used] equipment{mainhand:{"components":{"minecraft:death_protection":{}}}} run tag @s add sbhp.death_protection.mainhand
item modify entity @s[tag=sbhp.death_protection.mainhand,tag=!sbhp.totem_removed,tag=!sbhp.death_protection.used] weapon.mainhand sbhp:remove_death_protection

# Head Death Protection
execute if data entity @s[tag=!sbhp.totem_removed,tag=!sbhp.death_protection.used] equipment{head:{"components":{"minecraft:death_protection":{}}}} run tag @s add sbhp.death_protection.used
execute if data entity @s[tag=!sbhp.totem_removed,tag=!sbhp.death_protection.used] equipment{head:{"components":{"minecraft:death_protection":{}}}} run tag @s add sbhp.death_protection.head
item modify entity @s[tag=sbhp.death_protection.head,tag=!sbhp.totem_removed,tag=!sbhp.death_protection.used] armor.head sbhp:remove_death_protection

# Chest Death Protection
execute if data entity @s[tag=!sbhp.totem_removed,tag=!sbhp.death_protection.used] equipment{chest:{"components":{"minecraft:death_protection":{}}}} run tag @s add sbhp.death_protection.used
execute if data entity @s[tag=!sbhp.totem_removed,tag=!sbhp.death_protection.used] equipment{chest:{"components":{"minecraft:death_protection":{}}}} run tag @s add sbhp.death_protection.chest
item modify entity @s[tag=sbhp.death_protection.chest,tag=!sbhp.totem_removed,tag=!sbhp.death_protection.used] armor.chest sbhp:remove_death_protection

# Legs Death Protection
execute if data entity @s[tag=!sbhp.totem_removed,tag=!sbhp.death_protection.used] equipment{legs:{"components":{"minecraft:death_protection":{}}}} run tag @s add sbhp.death_protection.used
execute if data entity @s[tag=!sbhp.totem_removed,tag=!sbhp.death_protection.used] equipment{legs:{"components":{"minecraft:death_protection":{}}}} run tag @s add sbhp.death_protection.legs
item modify entity @s[tag=sbhp.death_protection.legs,tag=!sbhp.totem_removed,tag=!sbhp.death_protection.used] armor.legs sbhp:remove_death_protection

# Feet Death Protection
execute if data entity @s[tag=!sbhp.totem_removed,tag=!sbhp.death_protection.used] equipment{feet:{"components":{"minecraft:death_protection":{}}}} run tag @s add sbhp.death_protection.used
execute if data entity @s[tag=!sbhp.totem_removed,tag=!sbhp.death_protection.used] equipment{feet:{"components":{"minecraft:death_protection":{}}}} run tag @s add sbhp.death_protection.feet
item modify entity @s[tag=sbhp.death_protection.feet,tag=!sbhp.totem_removed,tag=!sbhp.death_protection.used] armor.feet sbhp:remove_death_protection

tag @s remove sbhp.totem_removed
tag @s remove sbhp.death_protection.used
tag @s remove sbhp.death_protection.offhand
tag @s remove sbhp.death_protection.mainhand
tag @s remove sbhp.death_protection.head
tag @s remove sbhp.death_protection.chest
tag @s remove sbhp.death_protection.legs
tag @s remove sbhp.death_protection.feet