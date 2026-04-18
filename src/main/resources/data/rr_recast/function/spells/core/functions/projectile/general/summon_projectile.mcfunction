# Summon Projectile, set its data
$playsound $(summon_sound)
$execute at @s anchored eyes positioned ^ ^ ^ run summon item_display ~ ~ ~ $(item_display)
$execute at @s anchored eyes positioned ^ ^ ^ run tp @n[distance=..0.125,tag=rr.setup.$(reference),type=item_display] ~ ~ ~ ~ ~
$execute at @s anchored eyes positioned ^ ^ ^ run scoreboard players operation @n[distance=..0.125,tag=rr.setup.$(reference),type=item_display] rr.system.matchUUID1 = @s rr.system.playerUUID1
$execute at @s anchored eyes positioned ^ ^ ^ run scoreboard players operation @n[distance=..0.125,tag=rr.setup.$(reference),type=item_display] rr.system.matchUUID2 = @s rr.system.playerUUID2
$execute at @s anchored eyes positioned ^ ^ ^ run scoreboard players operation @n[distance=..0.125,tag=rr.setup.$(reference),type=item_display] rr.system.matchUUID3 = @s rr.system.playerUUID3
$execute at @s anchored eyes positioned ^ ^ ^ run scoreboard players operation @n[distance=..0.125,tag=rr.setup.$(reference),type=item_display] rr.system.matchUUID4 = @s rr.system.playerUUID4
$execute at @s anchored eyes positioned ^ ^ ^ as @n[distance=..0.125,tag=rr.setup.$(reference),type=item_display] run function rr_recast:spells/core/functions/calculate_projectile_bonuses with storage rr_recast:global spells.$(reference)
$execute at @s anchored eyes positioned ^ ^ ^ run tag @n[distance=..0.125,tag=rr.setup.$(reference),type=item_display] remove rr.setup.$(reference)

# Reduce Projectile Count score by 1
scoreboard players remove @s rr.spell.projectile_count 1

# If any Projectiles remain and there is Projectile Delay, add Delay to Windup
execute as @s[scores={rr.spell.projectile_count=1..,rr.spell.projectile_count_delay=1..}] run scoreboard players operation @s rr.spell.Windup += @s rr.spell.projectile_count_delay

# If any Projectiles remain and there is NO Projectile Delay, run this function again immediately
$execute as @s[scores={rr.spell.projectile_count=1..,rr.spell.projectile_count_delay=..0}] run function rr_recast:spells/core/functions/projectile/general/summon_projectile with storage rr_recast:global spells.$(reference).projectile