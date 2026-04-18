tag @s add rr.tomahawk.thrower
execute store result score @s[predicate=rr_recast:held_items/mainhand/equipment/weapon/tomahawk/diamond_tomahawk] rr.math.A run data get entity @s SelectedItem.components."minecraft:custom_data"."rr.count" 1
execute store result score @s[predicate=rr_recast:held_items/offhand/equipment/weapon/tomahawk/diamond_tomahawk,predicate=!rr_recast:held_items/mainhand/equipment/weapon/tomahawk/diamond_tomahawk] rr.math.A run data get entity @s equipment.offhand.components."minecraft:custom_data"."rr.count" 1

$execute anchored eyes as @s[] run summon item_display ^ ^ ^ {CustomName:[{"text":"Tomahawk","italic":false,"color":"white"}],CustomNameVisible:false,item:$(SelectedItem),teleport_duration:1,transformation:{left_rotation:[0,1,0,1],right_rotation:[0,0,0,1],scale:[0.6,0.6,0.6],translation:[0.25,-0.35,0]},Tags:[rr.entity,rr.tomahawk,rr.tomahawk.setup,rr.tomahawk.diamond],item_display:"head"}
scoreboard players operation @n[type=item_display,tag=rr.tomahawk.setup] rr.system.pid = @s rr.system.pid
execute store result entity @n[type=item_display,tag=rr.tomahawk.setup,distance=..4] data.rr_recast.count_init int 1 run scoreboard players get @s rr.math.A
execute as @s[] run playsound minecraft:entity.arrow.shoot player @a[distance=..40] ~ ~1 ~ 1 0.5 0

execute anchored eyes run tp @n[type=item_display,distance=..4,tag=rr.tomahawk.setup] ^ ^ ^0.5 ~ ~
execute as @s[gamemode=creative] run tag @n[type=item_display,distance=..4,tag=rr.tomahawk.setup] add rr.tomahawk.no_drop

execute as @n[type=item_display,distance=..4,tag=rr.tomahawk.setup] at @s run function rr_recast:equipment/weapon/tomahawk/set_data with entity @n[type=item_display,tag=rr.tomahawk.setup,distance=..4]


tag @n[type=item_display,distance=..4,tag=rr.tomahawk.setup] remove rr.tomahawk.setup
tag @s remove rr.tomahawk.thrower