# Windup Effects
$execute as @s[scores={rr.spell.Windup=1..}] at @s run function rr_recast:spells/execution/$(reference)/windup_fx with storage rr_recast:global spells.$(reference).windup_fx

scoreboard players remove @s[scores={rr.spell.Windup=1..}] rr.spell.Windup 1

# Return as long as Windup is at 2 ticks or more
execute as @s[scores={rr.spell.Windup=2..}] run return 1


# Projectile Summon
$execute as @s[scores={rr.spell.Windup=1}] at @s run function rr_recast:spells/core/functions/projectile/general/summon_projectile with storage rr_recast:global spells.$(reference).projectile


# Set Cooldown and remove appropriate tags
scoreboard players remove @s[scores={rr.spell.Windup=..0,rr.spell.Cooldown=1..}] rr.spell.Cooldown 1
execute as @s[scores={rr.spell.Windup=..0,rr.spell.Cooldown=1..}] run return 1
execute as @s[scores={rr.spell.Windup=..0,rr.spell.Cooldown=..0}] run function rr_recast:spells/core/display_spell_finished
$execute as @s[scores={rr.spell.Windup=..0,rr.spell.Cooldown=..0}] run tag @s remove rr.spell.$(reference)
execute as @s[scores={rr.spell.Windup=..0,rr.spell.Cooldown=..0}] run tag @s remove rr.spell.casting
execute as @s[scores={rr.spell.Windup=..0,rr.spell.Cooldown=..0}] run return 0