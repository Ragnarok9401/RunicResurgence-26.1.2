$summon marker ~ ~ ~ {Tags:["rr.entity","rr.aura","rr.aura.$(reference)","rr.border","rr.border.$(reference)"]}
$execute as @e[distance=..0.1,tag=rr.border.$(reference),type=marker] at @s run tp @s ~ ~ ~ ~$(angle) ~

$scoreboard players set @s rr.math.Y $(nodes)
scoreboard players add @s rr.math.X 1

execute if score @s rr.math.X > @s rr.math.Y run return 1
execute at @s run function rr_recast:spells/core/functions/aura/make_border with entity @s data.aura.display.border