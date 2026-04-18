scoreboard players set @s aea.math.A 0

# Check how many Echo clouds are active that belong to the summoning player. If more than 3, do not summon another.
execute as @e[tag=aea.ench.echo_cloud,distance=..40] if score @s rr.system.pid = @p[distance=..0.1] rr.system.pid run scoreboard players add @p[distance=..0.1] aea.math.A 1
# tellraw @s {"score":{"name":"@s","objective":"aea.math.A"}}
execute if score @s aea.math.A matches 3.. run return 0

# Summon a "default echo cloud" with level 1 stats
summon marker ~ ~ ~ {Tags:["aea.marker","aea.ench_effect","ArenEchoCloud","aea.ench.echo_init","aea.ench.echo_cloud"],data:{echo_cloud:{damage:2.5f,damage_type:"rr_aea:magic_air",lifetime:39,speed:0.2f,tick_reset:6,cycles:6}}}

# Set score to Player ID score to track who summoned it and how many are active
scoreboard players operation @n[type=marker,tag=aea.ench.echo_init,distance=..0.5] rr.system.pid = @s rr.system.pid

# Modified function to allow for any enchantment level to give a respective damage amount, lifetime, and travel speed
## Each level adds 0.5 damage, minimum 2.5 @ level 1
execute store result score @s aea.math.A run data get entity @s SelectedItem.components."minecraft:enchantments"."rr_aea:echo" 50
scoreboard players add @s aea.math.A 200
#tellraw @a [{"text":"Echo Damage: ","color":"white"},{"score":{name:"@s",objective:"aea.math.A"}}]
## Store damage into "damage" data for Marker
execute store result entity @n[type=marker,tag=aea.ench.echo_init,distance=..0.5] data.echo_cloud.damage float 0.01 run scoreboard players get @s aea.math.A

## Each level adds 2 ticks of lifetime, minimum 39 @ level 1
execute store result score @s aea.math.B run data get entity @s SelectedItem.components."minecraft:enchantments"."rr_aea:echo" 2
scoreboard players add @s aea.math.B 37
## Store lifetime into aea.math.E AND into "lifetime" data for Marker
scoreboard players operation @n[type=marker,tag=aea.ench.echo_init,distance=..0.5] aea.math.E = @s aea.math.B
execute store result entity @n[type=marker,tag=aea.ench.echo_init,distance=..0.5] data.echo_cloud.lifetime int 1 run scoreboard players get @s aea.math.B

## Each bucket subtracts 1 from the tick_reset data. Maximum 6 @ level 1, minimum 3 @ level 8+
execute store result score @s aea.math.E run data get entity @s SelectedItem.components."minecraft:enchantments"."rr_aea:echo" 1
execute if score @s aea.math.E matches 3..7 run scoreboard players set @s aea.math.E 4
execute if score @s aea.math.E matches 2 run scoreboard players set @s aea.math.E 5
execute if score @s aea.math.E matches 1 run scoreboard players set @s aea.math.E 6
execute if score @s aea.math.E matches 8.. run scoreboard players set @s aea.math.E 3
## Store tick reset time into "tick_reset" data for Marker
execute store result entity @n[type=marker,tag=aea.ench.echo_init,distance=..0.5] data.echo_cloud.tick_reset int 1 run scoreboard players get @s aea.math.E

## Store rough number of total cycles into "cycles" data for Marker
scoreboard players operation @s aea.math.B /= @s aea.math.E
execute store result entity @n[type=marker,tag=aea.ench.echo_init,distance=..0.5] data.echo_cloud.cycles int 1 run scoreboard players get @s aea.math.B

## Each level adds 0.025 blocks/tick of travel speed, minimum 0.2 @ level 1
execute store result score @s aea.math.B run data get entity @s SelectedItem.components."minecraft:enchantments"."rr_aea:echo" 33
scoreboard players add @s aea.math.B 167
## Store travel speed into "speed" data for Marker
execute store result entity @n[type=marker,tag=aea.ench.echo_init,distance=..0.5] data.echo_cloud.speed float 0.001 run scoreboard players get @s aea.math.B

## If player is using Reverberation Blessing, set damage to a percentage of weapon damage (including effects)
execute if data entity @s SelectedItem.components."minecraft:enchantments".rr_aea:reverberation store result score @s aea.math.C run data get entity @s SelectedItem.components."minecraft:enchantments".rr_aea:reverberation
scoreboard players set @s aea.math.D 8
scoreboard players operation @s aea.math.C *= @s aea.math.D
execute store result score @s aea.math.D run attribute @s attack_damage get
scoreboard players operation @s aea.math.C *= @s aea.math.D
#tellraw @a [{"text":"Reverb Damage: ","color":"white"},{"score":{name:"@s",objective:"aea.math.C"}}]
execute if score @s aea.math.C > @s aea.math.A store result entity @n[type=marker,tag=aea.ench.echo_init,distance=..0.5] data.echo_cloud.damage float 0.01 run scoreboard players get @s aea.math.C
execute if score @s aea.math.C > @s aea.math.A if data entity @s SelectedItem.components."minecraft:enchantments".rr_aea:reverberation run data modify entity @n[type=marker,tag=aea.ench.echo_init,distance=..0.5] data.echo_cloud.damage_type set value "rr_aea:magic_reverb"
## Additionally, remove any Speed on the Marker so it is fully stationary
execute if data entity @s SelectedItem.components."minecraft:enchantments".rr_aea:reverberation run data modify entity @n[type=marker,tag=aea.ench.echo_init,distance=..0.5] data.echo_cloud.speed set value 0.0f

## If weapon has Windbroken Vice, tag Marker with aea.ench.windbroken
execute if data entity @s SelectedItem.components."minecraft:enchantments".rr_aea:windbroken run tag @n[type=marker,tag=aea.ench.echo_init,distance=..0.5] add aea.ench.windbroken

# Position Echo Cloud in front of user and facing same direction
execute as @s anchored eyes at @s run tp @n[type=marker,tag=aea.ench.echo_init,distance=..0.5] ^ ^ ^3 ~ ~
tag @n[tag=aea.ench.echo_init] remove aea.ench.echo_init