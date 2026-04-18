advancement revoke @s only rr_adv:event/mine_havenite

execute as @s[predicate=rr_recast:held_items/mainhand/pickaxe_with_meteoric] at @s run execute as @e[tag=RunicMeteorite,distance=..16,limit=2,sort=nearest,type=#rr_recast:spell_ignore] run playsound minecraft:entity.lightning_bolt.impact block @a[distance=..40] ~ ~ ~ 0.5 0.8 0
execute as @s[predicate=rr_recast:held_items/mainhand/pickaxe_with_meteoric] at @s run execute as @e[tag=RunicMeteorite,distance=..16,limit=2,sort=nearest,type=#rr_recast:spell_ignore] run playsound item.mace.smash_ground block @a[distance=..40] ~ ~ ~ 0.5 1.1 0
execute as @s[predicate=rr_recast:held_items/mainhand/pickaxe_with_meteoric] at @s run execute as @e[tag=RunicMeteorite,distance=..16,limit=2,sort=nearest,type=#rr_recast:spell_ignore] run kill @s
execute as @s[predicate=rr_recast:held_items/mainhand/pickaxe_with_meteoric] at @s run item modify entity @s weapon.mainhand rr_recast:enchantment/meteoric/heal_durability
execute as @s[predicate=rr_recast:held_items/mainhand/pickaxe_with_meteoric] at @s run return 1

execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_no_efficiency] weapon.mainhand wooden_pickaxe run scoreboard players add @s rr.event.meteorite_damage 2
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_1] weapon.mainhand wooden_pickaxe run scoreboard players add @s rr.event.meteorite_damage 3
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_2] weapon.mainhand wooden_pickaxe run scoreboard players add @s rr.event.meteorite_damage 4
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_3] weapon.mainhand wooden_pickaxe run scoreboard players add @s rr.event.meteorite_damage 5
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_4] weapon.mainhand wooden_pickaxe run scoreboard players add @s rr.event.meteorite_damage 6
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_5_plus] weapon.mainhand wooden_pickaxe run scoreboard players add @s rr.event.meteorite_damage 8

execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_no_efficiency] weapon.mainhand stone_pickaxe run scoreboard players add @s rr.event.meteorite_damage 10
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_1] weapon.mainhand stone_pickaxe run scoreboard players add @s rr.event.meteorite_damage 11
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_2] weapon.mainhand stone_pickaxe run scoreboard players add @s rr.event.meteorite_damage 12
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_3] weapon.mainhand stone_pickaxe run scoreboard players add @s rr.event.meteorite_damage 13
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_4] weapon.mainhand stone_pickaxe run scoreboard players add @s rr.event.meteorite_damage 14
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_5_plus] weapon.mainhand stone_pickaxe run scoreboard players add @s rr.event.meteorite_damage 15

execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_no_efficiency] weapon.mainhand golden_pickaxe run scoreboard players add @s rr.event.meteorite_damage 15
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_1] weapon.mainhand golden_pickaxe run scoreboard players add @s rr.event.meteorite_damage 18
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_2] weapon.mainhand golden_pickaxe run scoreboard players add @s rr.event.meteorite_damage 21
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_3] weapon.mainhand golden_pickaxe run scoreboard players add @s rr.event.meteorite_damage 24
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_4] weapon.mainhand golden_pickaxe run scoreboard players add @s rr.event.meteorite_damage 27
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_5_plus] weapon.mainhand golden_pickaxe run scoreboard players add @s rr.event.meteorite_damage 30

execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_no_efficiency] weapon.mainhand iron_pickaxe run scoreboard players add @s rr.event.meteorite_damage 20
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_1] weapon.mainhand iron_pickaxe run scoreboard players add @s rr.event.meteorite_damage 21
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_2] weapon.mainhand iron_pickaxe run scoreboard players add @s rr.event.meteorite_damage 22
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_3] weapon.mainhand iron_pickaxe run scoreboard players add @s rr.event.meteorite_damage 23
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_4] weapon.mainhand iron_pickaxe run scoreboard players add @s rr.event.meteorite_damage 24
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_5_plus] weapon.mainhand iron_pickaxe run scoreboard players add @s rr.event.meteorite_damage 25

execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_no_efficiency] weapon.mainhand diamond_pickaxe run scoreboard players add @s rr.event.meteorite_damage 25
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_1] weapon.mainhand diamond_pickaxe run scoreboard players add @s rr.event.meteorite_damage 26
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_2] weapon.mainhand diamond_pickaxe run scoreboard players add @s rr.event.meteorite_damage 27
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_3] weapon.mainhand diamond_pickaxe run scoreboard players add @s rr.event.meteorite_damage 28
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_4] weapon.mainhand diamond_pickaxe run scoreboard players add @s rr.event.meteorite_damage 29
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_5_plus] weapon.mainhand diamond_pickaxe run scoreboard players add @s rr.event.meteorite_damage 30

execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_no_efficiency] weapon.mainhand netherite_pickaxe run scoreboard players add @s rr.event.meteorite_damage 30
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_1] weapon.mainhand netherite_pickaxe run scoreboard players add @s rr.event.meteorite_damage 31
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_2] weapon.mainhand netherite_pickaxe run scoreboard players add @s rr.event.meteorite_damage 32
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_3] weapon.mainhand netherite_pickaxe run scoreboard players add @s rr.event.meteorite_damage 34
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_4] weapon.mainhand netherite_pickaxe run scoreboard players add @s rr.event.meteorite_damage 38
execute if items entity @s[predicate=rr_recast:held_items/mainhand/tool/tool_efficiency_5_plus] weapon.mainhand netherite_pickaxe run scoreboard players add @s rr.event.meteorite_damage 40

# Additional 6 Mining Speed for Tenebrium Pickaxe tier
execute if items entity @s weapon.mainhand netherite_pickaxe[item_model="rr_recast:equipment/tool/tenebrium_pickaxe"] run scoreboard players add @s rr.event.meteorite_damage 6


loot give @s[scores={rr.event.meteorite_damage=200..}] loot rr_recast:event/meteor/havenite_meteor
execute as @s[scores={rr.event.meteorite_damage=200..}] at @s run playsound item.mace.smash_ground block @a[distance=..40] ~ ~ ~ 0.8 1.33 0
execute as @s[scores={rr.event.meteorite_damage=200..}] at @s run advancement grant @s only rr_adv:mainline/mine_havenite
execute as @s[scores={rr.event.meteorite_damage=..200}] at @s run playsound block.amethyst_block.place block @a[distance=..40] ~ ~ ~ 1 0.75 0

scoreboard players remove @s[scores={rr.event.meteorite_damage=200..}] rr.event.meteorite_damage 200