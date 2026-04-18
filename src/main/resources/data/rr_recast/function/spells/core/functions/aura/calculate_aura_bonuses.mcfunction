# Set default data to Aura in shield entity
$data modify entity @s data.aura set value $(aura)

# Set Border Radius in separate function so Aura is set to appropriate data
function rr_recast:spells/core/functions/aura/set_border_radius

# Border Creation and math
execute at @s run function rr_recast:math/get_circle_angles with entity @s data.aura.display.border
scoreboard players set @s rr.math.X 1
execute at @s run function rr_recast:spells/core/functions/aura/make_border with entity @s data.aura.display.border
$execute as @e[distance=..0.1,tag=rr.border.$(reference),type=marker] run data modify entity @s data.aura.display.border set from entity @n[distance=..0.1,tag=rr.aura.$(reference),type=item_display] data.aura.display.border