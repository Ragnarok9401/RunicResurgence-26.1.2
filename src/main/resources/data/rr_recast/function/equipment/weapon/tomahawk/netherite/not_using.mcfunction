tag @s remove rr.player.using_tomahawk

execute as @s[predicate=rr_recast:held_items/any/equipment/weapon/tomahawk/netherite_tomahawk,predicate=rr_recast:held_items/mainhand/equipment/weapon/tomahawk/netherite_tomahawk,scores={rr.player.tomahawk_charge=15..}] at @s run function rr_recast:equipment/weapon/tomahawk/netherite/throw_mainhand with entity @s
execute as @s[predicate=rr_recast:held_items/any/equipment/weapon/tomahawk/netherite_tomahawk,predicate=rr_recast:held_items/offhand/equipment/weapon/tomahawk/netherite_tomahawk,predicate=!rr_recast:held_items/mainhand/equipment/weapon/tomahawk/netherite_tomahawk,scores={rr.player.tomahawk_charge=15..}] at @s run function rr_recast:equipment/weapon/tomahawk/netherite/throw_offhand with entity @s equipment

scoreboard players set @s rr.player.tomahawk_charge 0

advancement revoke @a only rr_adv:equipment/weapon/tomahawk/use_netherite
advancement revoke @a only rr_adv:equipment/weapon/tomahawk/use_diamond
advancement revoke @a only rr_adv:equipment/weapon/tomahawk/use_golden
advancement revoke @a only rr_adv:equipment/weapon/tomahawk/use_iron
advancement revoke @a only rr_adv:equipment/weapon/tomahawk/use_stone
advancement revoke @a only rr_adv:equipment/weapon/tomahawk/use_wooden