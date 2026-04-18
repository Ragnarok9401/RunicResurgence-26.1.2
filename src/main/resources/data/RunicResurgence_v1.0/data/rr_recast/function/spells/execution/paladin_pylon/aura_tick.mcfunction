# Tick up scoreboard for aura
scoreboard players add @s rr.system.Timer 1

# Display particles at the aura
$execute as @s[scores={rr.system.Timer=..$(lifespan)}] at @s run function rr_recast:technical/particle_generic with entity @s data.aura.display.particle

# Display border particles
$execute as @s[scores={rr.system.Timer=..$(lifespan)}] at @s as @e[limit=16,distance=..0.25,tag=rr.border.$(reference),type=marker] at @s run function rr_recast:spells/core/functions/aura/border_particles with entity @s data.aura.display.border

# Kill aura and play effects if at or beyond lifespan
$tag @s[scores={rr.system.Timer=$(lifespan)..}] add rr.aura.paladin_pylon.kill

execute as @s[tag=rr.aura.paladin_pylon.kill] at @s run particle explosion ~ ~ ~ 0 0 0 0 1 force @a[distance=..30]
execute as @s[tag=rr.aura.paladin_pylon.kill] at @s run particle witch ~ ~ ~ 1.5 1.5 1.5 0.08 20 normal @a[distance=..30,tag=!rr.spell.noparticles]
execute as @s[tag=rr.aura.paladin_pylon.kill] at @s run playsound item.shield.break player @a[distance=..30] ~ ~ ~ 0.8 0.67 0
execute as @s[tag=rr.aura.paladin_pylon.kill] at @s run playsound block.enchantment_table.use player @a[distance=..30] ~ ~ ~ 0.6 1.125 0
execute as @s[tag=rr.aura.paladin_pylon.kill] at @s run function rr_recast:spells/core/functions/apply_damage_from_player with entity @s data.projectile

$execute as @s[tag=rr.aura.paladin_pylon.kill] at @s run kill @e[type=marker,tag=rr.border.$(reference),distance=..0.25]
kill @s[tag=rr.aura.paladin_pylon.kill]