# Bow-specific Arrow Speed altering
# execute as @s[scores={aea.system.bow_used=1..},predicate=rr_aea:held_items/mainhand/bow/deep_dark_bow] at @s anchored eyes run function rr_aea:technical/enchantments/arrow_speed_15
# execute as @s[scores={aea.system.bow_used=1..},predicate=rr_aea:held_items/offhand/bow/deep_dark_bow] at @s anchored eyes run function rr_aea:technical/enchantments/arrow_speed_15
# execute as @s[scores={aea.system.bow_used=1..},predicate=rr_aea:held_items/mainhand/bow/starbow] at @s anchored eyes run function rr_aea:technical/enchantments/arrow_speed_50
# execute as @s[scores={aea.system.bow_used=1..},predicate=rr_aea:held_items/offhand/bow/starbow] at @s anchored eyes run function rr_aea:technical/enchantments/arrow_speed_50
# execute as @s[scores={aea.system.bow_used=1..},predicate=rr_aea:held_items/mainhand/bow/neutron_starbow] at @s anchored eyes run function rr_aea:technical/enchantments/arrow_speed_60
# execute as @s[scores={aea.system.bow_used=1..},predicate=rr_aea:held_items/offhand/bow/neutron_starbow] at @s anchored eyes run function rr_aea:technical/enchantments/arrow_speed_60
# execute as @s[scores={aea.system.bow_used=1..},predicate=rr_aea:held_items/mainhand/bow/collapsing_starbow] at @s anchored eyes run function rr_aea:technical/enchantments/arrow_speed_70
# execute as @s[scores={aea.system.bow_used=1..},predicate=rr_aea:held_items/offhand/bow/collapsing_starbow] at @s anchored eyes run function rr_aea:technical/enchantments/arrow_speed_70
# execute as @s[scores={aea.system.bow_used=1..},predicate=rr_aea:held_items/mainhand/bow/supernova_starbow] at @s anchored eyes run function rr_aea:technical/enchantments/arrow_speed_80
# execute as @s[scores={aea.system.bow_used=1..},predicate=rr_aea:held_items/offhand/bow/supernova_starbow] at @s anchored eyes run function rr_aea:technical/enchantments/arrow_speed_80


# Bow enchant effects
execute as @s[scores={aea.system.bow_used=1..},predicate=rr_aea:held_items/mainhand/bow/gravity_bow] at @s anchored eyes run function rr_aea:technical/enchantments/gravity
execute as @s[scores={aea.system.bow_used=1..},predicate=rr_aea:held_items/offhand/bow/gravity_bow] at @s anchored eyes run function rr_aea:technical/enchantments/gravity

execute as @s[scores={aea.system.bow_used=1..},predicate=rr_aea:held_items/mainhand/bow/tether_bow] at @s anchored eyes run function rr_aea:technical/enchantments/tether
execute as @s[scores={aea.system.bow_used=1..},predicate=rr_aea:held_items/offhand/bow/tether_bow] at @s anchored eyes run function rr_aea:technical/enchantments/tether

execute as @s[scores={aea.system.bow_used=1..},predicate=rr_aea:held_items/offhand/bow/sun_bow] at @s anchored eyes run function rr_aea:technical/enchantments/sunstruck

execute as @s[scores={aea.system.bow_used=1..},predicate=rr_aea:held_items/offhand/bow/moon_bow] at @s anchored eyes run function rr_aea:technical/enchantments/moonstruck


# Other Bow Effects
#region
## Protractor Bow
# execute as @s[scores={aea.system.bow_used=1..},predicate=rr_aea:held_items/mainhand/bow/protractor_bow] at @s run function rr_aea:technical/bow_other/protractor_bow_initialize
# execute as @s[scores={aea.system.bow_used=1..},predicate=rr_aea:held_items/offhand/bow/protractor_bow] at @s run function rr_aea:technical/bow_other/protractor_bow_initialize

#endregion

scoreboard players set @s[scores={aea.system.bow_used=1..}] aea.system.bow_used 0