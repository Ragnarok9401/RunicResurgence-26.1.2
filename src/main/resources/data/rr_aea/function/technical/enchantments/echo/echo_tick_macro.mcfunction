# Modified Echo Tick function to allow for macros

# Note that this function is run every 2 gameticks,
# meaning most tick amount results are longer than
# what might be expected.

# Legend
## math.A = Tick Reset, modulo operand that determines how often damage and additional visual effects take place
## math.B = Activation Tick, determines which tick of a given cycle will activate the damage and additional visual effects
## math.C = number of cycles remaining
## math.E = Total Timer, determines the amount of time left for the echo cloud

# Remove Cloud if timer reaches 0
execute as @s[scores={aea.math.E=..0}] run kill @s

# Set up Tick Reset times and carry out Modulo operations to determine current cycle time
# Cycle time is determined by Total Timer % Tick Reset, giving cycles of 12, 10, or 8 ticks
$execute unless score @s aea.math.A matches $(tick_reset) run scoreboard players set @s aea.math.A $(tick_reset)
scoreboard players operation @s aea.math.B = @s aea.math.E
scoreboard players operation @s aea.math.B %= @s aea.math.A

# Effects occur 2 ticks before cycle resets
# Inflicts (damage) (damage_type) damage
$execute if score @s aea.math.B matches 2 at @s positioned ~ ~-0.75 ~ as @e[type=!#rr_aea:magic_ignore,tag=!ArenMagicImmune,distance=..2.75,type=!player] run damage @s $(damage) $(damage_type) by @s from @p
execute if score @s aea.math.C matches 13.. if score @s aea.math.B matches 2 run playsound minecraft:entity.player.attack.sweep player @a[distance=..50] ~ ~ ~ 0.9 0.95 0
execute if score @s aea.math.C matches 8..12 if score @s aea.math.B matches 2 run playsound minecraft:entity.player.attack.sweep player @a[distance=..50] ~ ~ ~ 0.95 0.875 0
execute if score @s aea.math.C matches 3..7 if score @s aea.math.B matches 2 run playsound minecraft:entity.player.attack.sweep player @a[distance=..50] ~ ~ ~ 1 0.7 0
execute if score @s aea.math.C matches ..2 if score @s aea.math.B matches 2 run playsound minecraft:entity.player.attack.sweep player @a[distance=..50] ~ ~ ~ 1.05 0.5 0
execute if score @s aea.math.B matches 2 run particle sweep_attack ~ ~ ~ 0.1 0.1 0.1 0.1 1 force @a[distance=..50]

# If the entity requires immediate damage calculation, run additional function to call its specific damage calculation function
execute if score @s aea.math.B matches 2 at @s positioned ~ ~-0.75 ~ as @e[type=!#rr_aea:magic_ignore,tag=rr.entity.requires_immediate_dmg,tag=!ArenMagicImmune,distance=..2.75,type=!player] run function rr_recast:technical/entity/apply_immediate_dmg with entity @s data.immediate_dmg

# If Windbroken active, reduce damage by 10% per tick that damage is dealt
execute as @s[tag=aea.ench.windbroken] if score @s aea.math.B matches 2 at @s positioned ~ ~-0.75 ~ if entity @n[type=!#rr_aea:magic_ignore,tag=!ArenMagicImmune,distance=..2.75,type=!player] store result entity @s data.echo_cloud.damage float 0.009 run data get entity @s data.echo_cloud.damage 100

# Continuous effects (particles and sounds) and movement
# Cloud moves (speed) blocks per tick
execute if score @s aea.math.C matches ..2 run playsound minecraft:entity.player.attack.nodamage player @a[distance=..50] ~ ~ ~ 0.45 0.6 0
execute if score @s aea.math.C matches 3..7 run playsound minecraft:entity.player.attack.nodamage player @a[distance=..50] ~ ~ ~ 0.4 0.7 0
execute if score @s aea.math.C matches 8..12 run playsound minecraft:entity.player.attack.nodamage player @a[distance=..50] ~ ~ ~ 0.35 0.85 0
execute if score @s aea.math.C matches 13.. run playsound minecraft:entity.player.attack.nodamage player @a[distance=..50] ~ ~ ~ 0.35 0.1 0
particle firework ~ ~ ~ 1.5 1.5 1.5 0.01 2 force @a[distance=..50]
$tp @s ^ ^ ^$(speed)
# If Windbroken active, reduce speed by 2.5% per tick
execute as @s[tag=aea.ench.windbroken] store result entity @s data.echo_cloud.speed float 0.000975 run data get entity @s data.echo_cloud.speed 1000
scoreboard players remove @s aea.math.E 1

# Calculate rough number of cycles remaining
scoreboard players operation @s aea.math.C = @s aea.math.E
scoreboard players operation @s aea.math.C /= @s aea.math.A
execute store result entity @s data.echo_cloud.cycles int 1 run scoreboard players get @s aea.math.C