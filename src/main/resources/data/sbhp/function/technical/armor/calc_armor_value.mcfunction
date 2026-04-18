# Armor Values
scoreboard players set @s sbhp.Armor 0
execute as @s store result score @s sbhp.ArmorHead run function sbhp:technical/armor/get_armor_head
execute as @s store result score @s sbhp.ArmorChest run function sbhp:technical/armor/get_armor_chest
execute as @s store result score @s sbhp.ArmorLegs run function sbhp:technical/armor/get_armor_legs
execute as @s store result score @s sbhp.ArmorBoots run function sbhp:technical/armor/get_armor_boots
execute as @s store result score @s sbhp.MountArmor run function sbhp:technical/armor/get_armor_mount

execute as @s if data entity @s equipment.head.components."minecraft:attribute_modifiers"[{type:"minecraft:armor"}] store result score @s sbhp.ArmorHead run data get entity @s equipment.head.components."minecraft:attribute_modifiers"[{type:"minecraft:armor"}].amount
execute as @s if data entity @s equipment.chest.components."minecraft:attribute_modifiers"[{type:"minecraft:armor"}] store result score @s sbhp.ArmorChest run data get entity @s equipment.chest.components."minecraft:attribute_modifiers"[{type:"minecraft:armor"}].amount
execute as @s if data entity @s equipment.legs.components."minecraft:attribute_modifiers"[{type:"minecraft:armor"}] store result score @s sbhp.ArmorLegs run data get entity @s equipment.legs.components."minecraft:attribute_modifiers"[{type:"minecraft:armor"}].amount
execute as @s if data entity @s equipment.feet.components."minecraft:attribute_modifiers"[{type:"minecraft:armor"}] store result score @s sbhp.ArmorBoots run data get entity @s equipment.feet.components."minecraft:attribute_modifiers"[{type:"minecraft:armor"}].amount

execute as @s if data entity @s RootVehicle.Entity.equipment.body.components."minecraft:attribute_modifiers"[{type:"minecraft:armor"}] store result score @s sbhp.MountArmor run data get entity @s RootVehicle.Entity.equipment.body.components."minecraft:attribute_modifiers"[{type:"minecraft:armor"}].amount

scoreboard players operation @s sbhp.Armor += @s sbhp.ArmorHead
scoreboard players operation @s sbhp.Armor += @s sbhp.ArmorChest
scoreboard players operation @s sbhp.Armor += @s sbhp.ArmorLegs
scoreboard players operation @s sbhp.Armor += @s sbhp.ArmorBoots

# Armor Toughness Values
scoreboard players set @s sbhp.Toughness 0
execute as @s store result score @s sbhp.ArmorHead run function sbhp:technical/armor/get_toughness_head
execute as @s store result score @s sbhp.ArmorChest run function sbhp:technical/armor/get_toughness_chest
execute as @s store result score @s sbhp.ArmorLegs run function sbhp:technical/armor/get_toughness_legs
execute as @s store result score @s sbhp.ArmorBoots run function sbhp:technical/armor/get_toughness_boots
execute as @s store result score @s sbhp.MountToughness run function sbhp:technical/armor/get_toughness_mount

execute as @s if data entity @s equipment.head.components."minecraft:attribute_modifiers"[{type:"minecraft:armor_toughness"}] store result score @s sbhp.ArmorHead run data get entity @s equipment.head.components."minecraft:attribute_modifiers"[{type:"minecraft:armor_toughness"}].amount
execute as @s if data entity @s equipment.chest.components."minecraft:attribute_modifiers"[{type:"minecraft:armor_toughness"}] store result score @s sbhp.ArmorChest run data get entity @s equipment.chest.components."minecraft:attribute_modifiers"[{type:"minecraft:armor_toughness"}].amount
execute as @s if data entity @s equipment.legs.components."minecraft:attribute_modifiers"[{type:"minecraft:armor_toughness"}] store result score @s sbhp.ArmorLegs run data get entity @s equipment.legs.components."minecraft:attribute_modifiers"[{type:"minecraft:armor_toughness"}].amount
execute as @s if data entity @s equipment.feet.components."minecraft:attribute_modifiers"[{type:"minecraft:armor_toughness"}] store result score @s sbhp.ArmorBoots run data get entity @s equipment.feet.components."minecraft:attribute_modifiers"[{type:"minecraft:armor_toughness"}].amount


execute as @s if data entity @s RootVehicle.Entity.equipment.body.components."minecraft:attribute_modifiers"[{type:"minecraft:armor_toughness"}] store result score @s sbhp.MountToughness run data get entity @s RootVehicle.Entity.equipment.body.components."minecraft:attribute_modifiers"[{type:"minecraft:armor_toughness"}].amount

scoreboard players operation @s sbhp.Toughness += @s sbhp.ArmorHead
scoreboard players operation @s sbhp.Toughness += @s sbhp.ArmorChest
scoreboard players operation @s sbhp.Toughness += @s sbhp.ArmorLegs
scoreboard players operation @s sbhp.Toughness += @s sbhp.ArmorBoots
