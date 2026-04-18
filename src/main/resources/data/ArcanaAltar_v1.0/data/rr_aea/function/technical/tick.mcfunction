# Recursion Tick
execute as @e[type=marker,tag=aea.enchantment.recursion_marker,tag=!ArenRecursionMarkerSet] at @s run function rr_aea:technical/enchantments/recursion/marker_init

execute as @e[type=marker,tag=aea.enchantment.recursion_marker,tag=ArenRecursionMarkerSet] at @s run function rr_aea:technical/enchantments/recursion/marker_tick

# Downpour Tick
execute as @e[type=marker,tag=aea.enchantment.downpour_marker,tag=!ArenDownpourMarkerSet] at @s run function rr_aea:technical/enchantments/downpour_blessing/marker_init

execute as @e[type=marker,tag=aea.enchantment.downpour_marker,tag=ArenDownpourMarkerSet] at @s run function rr_aea:technical/enchantments/downpour_blessing/marker_tick


# Maul enchantment damages entities a tiny amount when the Maul Timer score hits 10. Each level of Maul removes 1 tick from the time it takes to damage the entity
scoreboard players add @e[type=!#rr_aea:magic_ignore,scores={aea.ench.maul_timer=..10}] aea.ench.maul_timer 1
execute as @e[type=!#rr_aea:magic_ignore,scores={aea.ench.maul_timer=10}] at @s run damage @s 0.0001 rr_aea:maul by @s


# Shield functions that must be reset when enchantment is not being used
execute as @a[advancements={aea_adv:player/using_shield=false},tag=aea.player.held_shield] run function rr_aea:technical/enchantments/general/shield/not_shielding
execute as @a[advancements={aea_adv:player/using_shield=true},predicate=!rr_aea:held_items/any/shield] run function rr_aea:technical/enchantments/general/shield/not_shielding
advancement revoke @a only aea_adv:player/using_shield

# Clear stuff
execute as @a[tag=aea.player.held_titanism,predicate=!rr_aea:held_items/mainhand/weapon_titanism] run tag @s remove aea.player.held_titanism

scoreboard players set @a[scores={aea.system.damage_shielded=1..}] aea.system.damage_shielded 0
scoreboard players set @a[scores={aea.system.shield_used=1..}] aea.system.shield_used 0

tag @a[predicate=!rr_aea:held_items/any/shield] remove aea.player.held_shield
tag @a[predicate=rr_aea:held_items/any/shield] add aea.player.held_shield

# Special Functions for Rebound Enchantment
execute as @e[type=arrow,tag=ArenReboundArrow,tag=!ArenDownpourSummon,nbt={inGround:false}] at @s run function rr_aea:technical/enchantments/rebound/rebound_tick

# Special Functions for Rebound Enchantment
execute as @e[type=arrow,tag=ArenReboundArrow,tag=!ArenDownpourSummon,limit=50,nbt={inGround:true}] at @s run function rr_aea:technical/enchantments/rebound/in_ground

# Kill Downpour Arrows when they hit the ground
execute as @e[type=arrow,tag=ArenDownpourSummon,nbt={inGround:true}] at @s run kill @s