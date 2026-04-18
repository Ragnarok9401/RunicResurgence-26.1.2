# Moves $(speed)-+$(pitch) blocks per tick, dealing $(damage) $(damage_type) damage per hit, and drops an item denoted by $(item)
# Pierces $(pierce) entities, and trajectory is calculated based on initial Pitch.
# When positive Pitch is reached, drop down by $(weight)/2 degrees per movement

#$tp @s[tag=!rr.tomahawk.falling,scores={rr.math.index=41..}] ~$(motion_x) ~$(motion_y) ~$(motion_z) facing ~$(motion_x) ~$(motion_y) ~$(motion_z)
$tp @s ~$(motion_x) ~$(motion_y) ~$(motion_z) facing ~$(facing_x) ~$(facing_y) ~$(facing_z)

execute as @s at @s run function rr_recast:equipment/weapon/tomahawk/damage with entity @s data.rr_recast
$execute as @s at @s positioned ^ ^ ^$(speed) run function rr_recast:equipment/weapon/tomahawk/damage with entity @s data.rr_recast

#$execute as @s[tag=!rr.tomahawk.no_drop] unless block ~ ~ ~ #rr_recast:spell_passable run summon item ^ ^ ^-0.75 {Tags:[rr.tomahawk.drop,rr.tomahawk.drop.setup],Item:$(item)}
execute unless block ~ ~ ~ #rr_recast:spell_passable run playsound minecraft:block.iron_chain.break player @a[distance=..40] ~ ~ ~ 0.65 0.8 0
execute unless block ~ ~ ~ #rr_recast:spell_passable run playsound minecraft:item.armor.equip_netherite player @a[distance=..40] ~ ~ ~ 0.8 1.25 0
execute unless block ~ ~ ~ #rr_recast:spell_passable run kill @s

execute as @s at @s run function rr_recast:equipment/weapon/tomahawk/calc_motion with entity @s data.rr_recast